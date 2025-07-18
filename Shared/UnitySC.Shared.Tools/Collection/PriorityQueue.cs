﻿using System;
using System.Collections;
using System.Collections.Generic;

namespace UnitySC.Shared.Tools.Collection
{
    /// <summary>
    /// Heap-based resizable max-priority queue.
    /// Elements with high priority are served before elements with low priority.
    /// Priority is defined by comparing elements, so to separate priority from value use
    /// KeyValuePair or a custom class and provide corresponding Comparer.
    /// </summary>
    /// <typeparam name="T">Any comparable type, either through a specified Comparer or implementing IComparable&lt;<typeparamref name="T"/>&gt;</typeparam>
    public class PriorityQueue<T> : ICollection<T>
    {
        private readonly IComparer<T> _comparer;
        internal T[] _heap;
        private const int DEFAULT_CAPACITY = 10;
        private const int SHRINK_RATIO = 4;
        private const int RESIZE_FACTOR = 2;

        private int _shrinkBound;

        // ReSharper disable once StaticFieldInGenericType
        private static readonly InvalidOperationException s_emptyCollectionException = new InvalidOperationException("Collection is empty.");

        /// <summary>
        /// Create a max-priority queue with default capacity of 10.
        /// </summary>
        /// <param name="comparer">Custom comparer to compare elements. If omitted - default will be used.</param>
        public PriorityQueue(IComparer<T> comparer = null) : this(DEFAULT_CAPACITY, comparer) { }

        /// <summary>
        /// Create a max-priority queue with provided capacity.
        /// </summary>
        /// <param name="capacity">Initial capacity</param>
        /// <param name="comparer">Custom comparer to compare elements. If omitted - default will be used.</param>
        /// <exception cref="ArgumentOutOfRangeException">Throws <see cref="ArgumentOutOfRangeException"/> when capacity is less than or equal to zero.</exception>
        /// <exception cref="ArgumentException">Throws <see cref="ArgumentException"/> when comparer is null and <typeparamref name="T"/> does not implement IComparable.</exception>
        public PriorityQueue(int capacity, IComparer<T> comparer = null)
        {
            if (capacity <= 0) throw new ArgumentOutOfRangeException("capacity", "Expected capacity greater than zero.");

            // If no comparer then T must be comparable
            if (comparer == null &&
                !(typeof(IComparable).IsAssignableFrom(typeof(T)) ||
                  typeof(IComparable<T>).IsAssignableFrom(typeof(T))))
            {
                throw new ArgumentException("Expected a comparer for types, which do not implement IComparable.", "comparer");
            }

            _comparer = comparer ?? Comparer<T>.Default;
            _shrinkBound = capacity / SHRINK_RATIO;
            _heap = new T[capacity];
        }

        /// <summary>
        /// Current queue capacity
        /// </summary>
        public int Capacity { get { return _heap.Length; } }

        public virtual IEnumerator<T> GetEnumerator()
        {
            var array = new T[Count];
            CopyTo(array, 0);
            return ((IEnumerable<T>)array).GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public virtual void Add(T item)
        {
            if (Count == Capacity) GrowCapacity();

            _heap[Count++] = item;
            // provide the index of the last item as for 1-based heap, but also set shift to -1
            _heap.Sift(Count, _comparer, shift: -1);      // move item "up" until heap principles are not met
        }

        /// <summary>
        /// Removes and returns a max element from the priority queue.
        /// </summary>
        /// <returns>Max element in the collection</returns>
        /// <exception cref="InvalidOperationException">Throws <see cref="InvalidOperationException"/> when queue is empty.</exception>
        public virtual T Take()
        {
            if (Count == 0) throw s_emptyCollectionException;

            var item = _heap[0];
            Count--;
            _heap.Swap(0, Count);              // last element at count
            _heap[Count] = default(T);         // release hold on the object
            // provide index of first item as for 1-based heap, but also set shift to -1
            _heap.Sink(1, Count, _comparer, shift: -1);   // move item "down" while heap principles are not met

            if (Count <= _shrinkBound && Count > DEFAULT_CAPACITY)
            {
                ShrinkCapacity();
            }

            return item;
        }

        /// <summary>
        /// Returns a max element from the priority queue without removing it.
        /// </summary>
        /// <returns>Max element in the collection</returns>
        /// <exception cref="InvalidOperationException">Throws <see cref="InvalidOperationException"/> when queue is empty.</exception>
        public virtual T Peek()
        {
            if (Count == 0) throw s_emptyCollectionException;
            return _heap[0];
        }

        public virtual void Clear()
        {
            _heap = new T[DEFAULT_CAPACITY];
            Count = 0;
        }

        /// <summary>
        /// an Item has been modified and its ordering need to be updated. perform remove and add
        /// </summary>
        /// <returns>true if update is succeful, false if item no longer exist in queue</returns>
        public virtual bool Update(T item)
        {
            if (Remove(item))
            {
                Add(item);
                return true;
            }
            return false;
        }

        public virtual bool Contains(T item)
        {
            return GetItemIndex(item) >= 0;
        }

        public virtual void CopyTo(T[] array, int arrayIndex)
        {
            if (array == null) throw new ArgumentNullException("array");
            if (arrayIndex < 0) throw new ArgumentOutOfRangeException("arrayIndex");

            if (array.Length - arrayIndex < Count)
                throw new ArgumentException("Insufficient space in destination array.");

            Array.Copy(_heap, 0, array, arrayIndex, Count);

            array.HeapSort(arrayIndex, Count, _comparer);
        }

        public virtual bool Remove(T item)
        {
            int index = GetItemIndex(item);
            switch (index)
            {
                case -1:
                    return false;

                case 0:
                    Take();
                    break;

                default:
                    // provide a 1-based index of the item
                    RemoveAt(index + 1, shift: -1);
                    break;
            }

            return true;
        }

        public int Count { get; private set; }

        public bool IsReadOnly { get { return false; } }

        /// <summary>
        /// Removes item at given index
        /// </summary>
        /// <param name="index">1-based index of the element to remove</param>
        /// <param name="shift">Shift allows to compensate and work with arrays where heap starts not from the element at position 1.
        /// Shift -1 allows to work with 0-based heap as if it was 1-based. But the main reason for this is the CopyTo method.</param>
        protected internal void RemoveAt(int index, int shift)
        {
            int itemIndex = index + shift;
            Count--;
            _heap.Swap(itemIndex, Count);       // last element at Count
            _heap[Count] = default(T);          // release hold on the object
            // use a 1-based-heap index and then apply shift of -1
            int parent = index / 2 + shift;     // get parent
            // if new item at index is greater than it's parent then sift it up, else sink it down
            if (_comparer.GreaterOrEqual(_heap[itemIndex], _heap[parent]))
            {
                // provide a 1-based-heap index
                _heap.Sift(index, _comparer, shift);
            }
            else
            {
                // provide a 1-based-heap index
                _heap.Sink(index, Count, _comparer, shift);
            }
        }

        /// <summary>
        /// Returns the real index of the first occurrence of the given item or -1.
        /// </summary>
        protected internal int GetItemIndex(T item)
        {
            for (int i = 0; i < Count; i++)
            {
                if (_comparer.Compare(_heap[i], item) == 0) return i;
            }
            return -1;
        }

        private void GrowCapacity()
        {
            int newCapacity = Capacity * RESIZE_FACTOR;
            Array.Resize(ref _heap, newCapacity);  // first element is at position 1
            _shrinkBound = newCapacity / SHRINK_RATIO;
        }

        private void ShrinkCapacity()
        {
            int newCapacity = Capacity / RESIZE_FACTOR;
            Array.Resize(ref _heap, newCapacity);  // first element is at position 1
            _shrinkBound = newCapacity / SHRINK_RATIO;
        }
    }

    internal static class HeapMethods
    {
        internal static void Swap<T>(this T[] array, int i, int j)
        {
            var tmp = array[i];
            array[i] = array[j];
            array[j] = tmp;
        }

        internal static bool GreaterOrEqual<T>(this IComparer<T> comparer, T x, T y)
        {
            return comparer.Compare(x, y) >= 0;
        }

        /// <summary>
        /// Moves the item with given index "down" the heap while heap principles are not met.
        /// </summary>
        /// <typeparam name="T">Any comparable type</typeparam>
        /// <param name="heap">Array, containing the heap</param>
        /// <param name="i">1-based index of the element to sink</param>
        /// <param name="count">Number of items in the heap</param>
        /// <param name="comparer">Comparer to compare the items</param>
        /// <param name="shift">Shift allows to compensate and work with arrays where heap starts not from the element at position 1.
        /// Shift -1 allows to work with 0-based heap as if it was 1-based. But the main reason for this is the CopyTo method.
        /// </param>
        internal static void Sink<T>(this T[] heap, int i, int count, IComparer<T> comparer, int shift)
        {
            int lastIndex = count + shift;
            while (true)
            {
                int itemIndex = i + shift;
                int leftIndex = 2 * i + shift;
                if (leftIndex > lastIndex)
                {
                    return;      // reached last item
                }

                int rightIndex = leftIndex + 1;
                bool hasRight = rightIndex <= lastIndex;

                var item = heap[itemIndex];
                var left = heap[leftIndex];
                var right = hasRight ? heap[rightIndex] : default(T);

                // if item is greater than children - heap is fine, exit
                if (GreaterOrEqual(comparer, item, left) && (!hasRight || GreaterOrEqual(comparer, item, right)))
                {
                    return;
                }

                // else exchange with greater of children
                int greaterChildIndex = !hasRight || GreaterOrEqual(comparer, left, right) ? leftIndex : rightIndex;
                heap.Swap(itemIndex, greaterChildIndex);

                // continue at new position
                i = greaterChildIndex - shift;
            }
        }

        /// <summary>
        /// Moves the item with given index "up" the heap while heap principles are not met.
        /// </summary>
        /// <typeparam name="T">Any comparable type</typeparam>
        /// <param name="heap">Array, containing the heap</param>
        /// <param name="i">1-based index of the element to sink</param>
        /// <param name="comparer">Comparer to compare the items</param>
        /// <param name="shift">Shift allows to compensate and work with arrays where heap starts not from the element at position 1.
        /// Value -1 allows to work with 0-based heap as if it was 1-based. But the main reason for this is the CopyTo method.
        /// </param>
        internal static void Sift<T>(this T[] heap, int i, IComparer<T> comparer, int shift)
        {
            while (true)
            {
                if (i <= 1) return;           // reached root
                int parent = i / 2 + shift;   // get parent
                int index = i + shift;

                // if root is greater or equal - exit
                if (GreaterOrEqual(comparer, heap[parent], heap[index]))
                {
                    return;
                }

                heap.Swap(parent, index);
                i = parent - shift;
            }
        }

        /// <summary>
        /// Sorts the heap in descending order.
        /// </summary>
        /// <typeparam name="T">Any comparable type</typeparam>
        /// <param name="heap">Array, containing the heap</param>
        /// <param name="startIndex">Index in the array, from which the heap structure begins</param>
        /// <param name="count">Number of items in the heap</param>
        /// <param name="comparer">Comparer to compare the items</param>
        internal static void HeapSort<T>(this T[] heap, int startIndex, int count, IComparer<T> comparer)
        {
            int shift = startIndex - 1;
            int lastIndex = startIndex + count;
            int left = count;

            // take the max item and exchange it with the last one
            // decrement the count of items in the heap and sink the first item to restore the heap rules
            // repeat for every element in the heap
            while (lastIndex > startIndex)
            {
                lastIndex--;
                left--;
                heap.Swap(startIndex, lastIndex);
                heap.Sink(1, left, comparer, shift);
            }
            // when done items will be sorted in ascending order, but this is a Max-PriorityQueue, so reverse
            Array.Reverse(heap, startIndex, count);
        }
    }
}
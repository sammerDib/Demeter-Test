﻿using System;
using System.Collections;

namespace UnitySC.Shared.UI.Graph.Utils
{
    /// <summary>
    /// Arguments to the ItemsAdded and ItemsRemoved events.
    /// </summary>
    public class CollectionItemsChangedEventArgs : EventArgs
    {
        /// <summary>
        /// The collection of items that changed.
        /// </summary>
        private readonly ICollection items = null;

        public CollectionItemsChangedEventArgs(ICollection items)
        {
            this.items = items;
        }

        /// <summary>
        /// The collection of items that changed.
        /// </summary>
        public ICollection Items
        {
            get
            {
                return items;
            }
        }
    }
}
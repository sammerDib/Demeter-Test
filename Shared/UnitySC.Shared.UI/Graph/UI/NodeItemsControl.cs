﻿using System.Windows;
using System.Windows.Controls;

namespace UnitySC.Shared.UI.Graph.UI
{
    /// <summary>
    /// Implements an ListBox for displaying nodes in the GraphView UI.
    /// </summary>
    internal class NodeItemsControl : ListBox
    {
        public NodeItemsControl()
        {
            //
            // By default, we don't want this UI element to be focusable.
            //
            Focusable = false;
        }

        #region Private Methods

        /// <summary>
        /// Find the NodeItem UI element that has the specified data context.
        /// Return null if no such NodeItem exists.
        /// </summary>
        internal NodeItem FindAssociatedNodeItem(object nodeDataContext)
        {
            return (NodeItem)this.ItemContainerGenerator.ContainerFromItem(nodeDataContext);
        }

        /// <summary>
        /// Creates or identifies the element that is used to display the given item.
        /// </summary>
        protected override DependencyObject GetContainerForItemOverride()
        {
            return new NodeItem();
        }

        /// <summary>
        /// Determines if the specified item is (or is eligible to be) its own container.
        /// </summary>
        protected override bool IsItemItsOwnContainerOverride(object item)
        {
            return item is NodeItem;
        }

        #endregion Private Methods
    }
}
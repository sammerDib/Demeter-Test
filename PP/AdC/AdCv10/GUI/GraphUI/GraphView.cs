﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

using Utils;

namespace GraphUI
{
    /// <summary>
    /// The main class that implements the graph/flow-chart control.
    /// </summary>
    public partial class GraphView : Control
    {
        #region Dependency Property/Event Definitions

        private static readonly DependencyPropertyKey NodesPropertyKey =
            DependencyProperty.RegisterReadOnly("Nodes", typeof(ImpObservableCollection<object>), typeof(GraphView),
                new FrameworkPropertyMetadata());
        public static readonly DependencyProperty NodesProperty = NodesPropertyKey.DependencyProperty;

        private static readonly DependencyPropertyKey ConnectionsPropertyKey =
            DependencyProperty.RegisterReadOnly("Connections", typeof(ImpObservableCollection<object>), typeof(GraphView),
                new FrameworkPropertyMetadata());
        public static readonly DependencyProperty ConnectionsProperty = ConnectionsPropertyKey.DependencyProperty;

        public static readonly DependencyProperty NodesSourceProperty =
            DependencyProperty.Register("NodesSource", typeof(IEnumerable), typeof(GraphView),
                new FrameworkPropertyMetadata(NodesSource_PropertyChanged));

        public static readonly DependencyProperty ConnectionsSourceProperty =
            DependencyProperty.Register("ConnectionsSource", typeof(IEnumerable), typeof(GraphView),
                new FrameworkPropertyMetadata(ConnectionsSource_PropertyChanged));

        public static readonly DependencyProperty IsClearSelectionOnEmptySpaceClickEnabledProperty =
            DependencyProperty.Register("IsClearSelectionOnEmptySpaceClickEnabled", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(true));

        public static readonly DependencyProperty EnableConnectionDraggingProperty =
            DependencyProperty.Register("EnableConnectionDragging", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(true));

        private static readonly DependencyPropertyKey IsDraggingConnectionPropertyKey =
            DependencyProperty.RegisterReadOnly("IsDraggingConnection", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(false));
        public static readonly DependencyProperty IsDraggingConnectionProperty = IsDraggingConnectionPropertyKey.DependencyProperty;

        private static readonly DependencyPropertyKey IsNotDraggingConnectionPropertyKey =
            DependencyProperty.RegisterReadOnly("IsNotDraggingConnection", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(true));
        public static readonly DependencyProperty IsNotDraggingConnectionProperty = IsNotDraggingConnectionPropertyKey.DependencyProperty;

        public static readonly DependencyProperty EnableNodeDraggingProperty =
            DependencyProperty.Register("EnableNodeDragging", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(true));

        private static readonly DependencyPropertyKey IsDraggingNodePropertyKey =
            DependencyProperty.RegisterReadOnly("IsDraggingNode", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(false));
        public static readonly DependencyProperty IsDraggingNodeProperty = IsDraggingNodePropertyKey.DependencyProperty;

        private static readonly DependencyPropertyKey IsNotDraggingNodePropertyKey =
            DependencyProperty.RegisterReadOnly("IsNotDraggingNode", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(true));
        public static readonly DependencyProperty IsNotDraggingNodeProperty = IsDraggingNodePropertyKey.DependencyProperty;

        private static readonly DependencyPropertyKey IsDraggingPropertyKey =
            DependencyProperty.RegisterReadOnly("IsDragging", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(false));
        public static readonly DependencyProperty IsDraggingProperty = IsDraggingPropertyKey.DependencyProperty;

        private static readonly DependencyPropertyKey IsNotDraggingPropertyKey =
            DependencyProperty.RegisterReadOnly("IsNotDragging", typeof(bool), typeof(GraphView),
                new FrameworkPropertyMetadata(true));
        public static readonly DependencyProperty IsNotDraggingProperty = IsNotDraggingPropertyKey.DependencyProperty;

        public static readonly DependencyProperty NodeItemTemplateProperty =
            DependencyProperty.Register("NodeItemTemplate", typeof(DataTemplate), typeof(GraphView));

        public static readonly DependencyProperty NodeItemTemplateSelectorProperty =
            DependencyProperty.Register("NodeItemTemplateSelector", typeof(DataTemplateSelector), typeof(GraphView));

        public static readonly DependencyProperty NodeItemContainerStyleProperty =
            DependencyProperty.Register("NodeItemContainerStyle", typeof(Style), typeof(GraphView));

        public static readonly DependencyProperty ConnectionItemTemplateProperty =
            DependencyProperty.Register("ConnectionItemTemplate", typeof(DataTemplate), typeof(GraphView));

        public static readonly DependencyProperty ConnectionItemTemplateSelectorProperty =
            DependencyProperty.Register("ConnectionItemTemplateSelector", typeof(DataTemplateSelector), typeof(GraphView));

        public static readonly DependencyProperty ConnectionItemContainerStyleProperty =
            DependencyProperty.Register("ConnectionItemContainerStyle", typeof(Style), typeof(GraphView));

        public static readonly RoutedEvent NodeDragStartedEvent =
            EventManager.RegisterRoutedEvent("NodeDragStarted", RoutingStrategy.Bubble, typeof(NodeDragStartedEventHandler), typeof(GraphView));

        public static readonly RoutedEvent NodeDraggingEvent =
            EventManager.RegisterRoutedEvent("NodeDragging", RoutingStrategy.Bubble, typeof(NodeDraggingEventHandler), typeof(GraphView));

        public static readonly RoutedEvent NodeDragCompletedEvent =
            EventManager.RegisterRoutedEvent("NodeDragCompleted", RoutingStrategy.Bubble, typeof(NodeDragCompletedEventHandler), typeof(GraphView));

        public static readonly RoutedEvent ConnectionDragStartedEvent =
            EventManager.RegisterRoutedEvent("ConnectionDragStarted", RoutingStrategy.Bubble, typeof(ConnectionDragStartedEventHandler), typeof(GraphView));

        public static readonly RoutedEvent NodeLeftClicEvent =
           EventManager.RegisterRoutedEvent("NodeLeftClic", RoutingStrategy.Bubble, typeof(NodeLeftClicEventHandler), typeof(GraphView));

        public static readonly RoutedEvent QueryConnectionFeedbackEvent =
            EventManager.RegisterRoutedEvent("QueryConnectionFeedback", RoutingStrategy.Bubble, typeof(QueryConnectionFeedbackEventHandler), typeof(GraphView));

        public static readonly RoutedEvent ConnectionDraggingEvent =
            EventManager.RegisterRoutedEvent("ConnectionDragging", RoutingStrategy.Bubble, typeof(ConnectionDraggingEventHandler), typeof(GraphView));

        public static readonly RoutedEvent ConnectionDragCompletedEvent =
            EventManager.RegisterRoutedEvent("ConnectionDragCompleted", RoutingStrategy.Bubble, typeof(ConnectionDragCompletedEventHandler), typeof(GraphView));

        public static readonly RoutedCommand SelectAllCommand = null;
        public static readonly RoutedCommand SelectNoneCommand = null;
        public static readonly RoutedCommand InvertSelectionCommand = null;
        public static readonly RoutedCommand CancelConnectionDraggingCommand = null;

        public bool IsNodesSelected { get { return SelectedNodes.Count > 0; } }
        //public static readonly DependencyProperty IsNodesSelectedProperty = IsNodes;


        #endregion Dependency Property/Event Definitions

        #region Private Data Members

        /// <summary>
        /// Cached reference to the NodeItemsControl in the visual-tree.
        /// </summary>
        private NodeItemsControl nodeItemsControl = null;

        /// <summary>
        /// Cached reference to the ItemsControl for connections in the visual-tree.
        /// </summary>
        private ItemsControl connectionItemsControl = null;

        /// <summary>
        /// Cached list of currently selected nodes.
        /// </summary>
        private List<object> initialSelectedNodes = null;

        #endregion Private Data Members

        public GraphView()
        {
            //
            // Create a collection to contain nodes.
            //
            this.Nodes = new ImpObservableCollection<object>();

            //
            // Create a collection to contain connections.
            //
            this.Connections = new ImpObservableCollection<object>();

            //
            // Default background is white.
            //
            this.Background = Brushes.White;

            //
            // Add handlers for node and connector drag events.
            //
            AddHandler(NodeItem.NodeDragStartedEvent, new NodeDragStartedEventHandler(NodeItem_DragStarted));
            AddHandler(NodeItem.NodeDraggingEvent, new NodeDraggingEventHandler(NodeItem_Dragging));
            AddHandler(NodeItem.NodeDragCompletedEvent, new NodeDragCompletedEventHandler(NodeItem_DragCompleted));
            AddHandler(NodeItem.NodeLeftClicEvent, new NodeLeftClicEventHandler(NodeItem_LeftClic));

            AddHandler(ConnectorItem.ConnectorDragStartedEvent, new ConnectorItemDragStartedEventHandler(ConnectorItem_DragStarted));
            AddHandler(ConnectorItem.ConnectorDraggingEvent, new ConnectorItemDraggingEventHandler(ConnectorItem_Dragging));
            AddHandler(ConnectorItem.ConnectorDragCompletedEvent, new ConnectorItemDragCompletedEventHandler(ConnectorItem_DragCompleted));
        }

        /// <summary>
        /// Event raised when the user starts dragging a node in the graph.
        /// </summary>
        public event NodeDragStartedEventHandler NodeDragStarted
        {
            add { AddHandler(NodeDragStartedEvent, value); }
            remove { RemoveHandler(NodeDragStartedEvent, value); }
        }

        /// <summary>
        /// Event raised while user is dragging a node in the graph.
        /// </summary>
        public event NodeDraggingEventHandler NodeDragging
        {
            add { AddHandler(NodeDraggingEvent, value); }
            remove { RemoveHandler(NodeDraggingEvent, value); }
        }

        /// <summary>
        /// Event raised when the user has completed dragging a node in the graph.
        /// </summary>
        public event NodeDragCompletedEventHandler NodeDragCompleted
        {
            add { AddHandler(NodeDragCompletedEvent, value); }
            remove { RemoveHandler(NodeDragCompletedEvent, value); }
        }

        /// <summary>
        /// Event raised when the user starts dragging a connector in the graph.
        /// </summary>
        public event ConnectionDragStartedEventHandler ConnectionDragStarted
        {
            add { AddHandler(ConnectionDragStartedEvent, value); }
            remove { RemoveHandler(ConnectionDragStartedEvent, value); }
        }

        /// <summary>
        /// Event raised while user drags a connection over the connector of a node in the graph.
        /// The event handlers should supply a feedback objects and data-template that displays the 
        /// object as an appropriate graphic.
        /// </summary>
        public event QueryConnectionFeedbackEventHandler QueryConnectionFeedback
        {
            add { AddHandler(QueryConnectionFeedbackEvent, value); }
            remove { RemoveHandler(QueryConnectionFeedbackEvent, value); }
        }

        /// <summary>
        /// Event raised when a connection is being dragged.
        /// </summary>
        public event ConnectionDraggingEventHandler ConnectionDragging
        {
            add { AddHandler(ConnectionDraggingEvent, value); }
            remove { RemoveHandler(ConnectionDraggingEvent, value); }
        }

        /// <summary>
        /// Event raised when the user has completed dragging a connection in the graph.
        /// </summary>
        public event ConnectionDragCompletedEventHandler ConnectionDragCompleted
        {
            add { AddHandler(ConnectionDragCompletedEvent, value); }
            remove { RemoveHandler(ConnectionDragCompletedEvent, value); }
        }

        /// <summary>
        /// Event raised when the user has clicked  a node.
        /// </summary>
        public event NodeLeftClicEventHandler NodeLeftClic
        {
            add { AddHandler(NodeLeftClicEvent, value); }
            remove { RemoveHandler(NodeLeftClicEvent, value); }
        }

        /// <summary>
        /// Collection of nodes in the graph.
        /// </summary>
        public ImpObservableCollection<object> Nodes
        {
            get
            {
                return (ImpObservableCollection<object>)GetValue(NodesProperty);
            }
            private set
            {
                SetValue(NodesPropertyKey, value);
            }
        }

        /// <summary>
        /// Collection of connections in the graph.
        /// </summary>
        public ImpObservableCollection<object> Connections
        {
            get
            {
                return (ImpObservableCollection<object>)GetValue(ConnectionsProperty);
            }
            private set
            {
                SetValue(ConnectionsPropertyKey, value);
            }
        }

        /// <summary>
        /// A reference to the collection that is the source used to populate 'Nodes'.
        /// Used in the same way as 'ItemsSource' in 'ItemsControl'.
        /// </summary>
        public IEnumerable NodesSource
        {
            get
            {
                return (IEnumerable)GetValue(NodesSourceProperty);
            }
            set
            {
                SetValue(NodesSourceProperty, value);
            }
        }

        /// <summary>
        /// A reference to the collection that is the source used to populate 'Connections'.
        /// Used in the same way as 'ItemsSource' in 'ItemsControl'.
        /// </summary>
        public IEnumerable ConnectionsSource
        {
            get
            {
                return (IEnumerable)GetValue(ConnectionsSourceProperty);
            }
            set
            {
                SetValue(ConnectionsSourceProperty, value);
            }
        }

        /// <summary>
        /// Set to 'true' to enable the clearing of selection when empty space is clicked.
        /// This is set to 'true' by default.
        /// </summary>
        public bool IsClearSelectionOnEmptySpaceClickEnabled
        {
            get
            {
                return (bool)GetValue(IsClearSelectionOnEmptySpaceClickEnabledProperty);
            }
            set
            {
                SetValue(IsClearSelectionOnEmptySpaceClickEnabledProperty, value);
            }
        }

        /// <summary>
        /// Set to 'true' to enable drag out of connectors to create new connections.
        /// </summary>
        public bool EnableConnectionDragging
        {
            get
            {
                return (bool)GetValue(EnableConnectionDraggingProperty);
            }
            set
            {
                SetValue(EnableConnectionDraggingProperty, value);
            }
        }

        /// <summary>
        /// Dependency property that is set to 'true' when the user is 
        /// dragging out a connection.
        /// </summary>
        public bool IsDraggingConnection
        {
            get
            {
                return (bool)GetValue(IsDraggingConnectionProperty);
            }
            private set
            {
                SetValue(IsDraggingConnectionPropertyKey, value);
            }
        }

        /// <summary>
        /// Dependency property that is set to 'false' when the user is 
        /// dragging out a connection.
        /// </summary>
        public bool IsNotDraggingConnection
        {
            get
            {
                return (bool)GetValue(IsNotDraggingConnectionProperty);
            }
            private set
            {
                SetValue(IsNotDraggingConnectionPropertyKey, value);
            }
        }

        /// <summary>
        /// Set to 'true' to enable dragging of nodes.
        /// </summary>
        public bool EnableNodeDragging
        {
            get
            {
                return (bool)GetValue(EnableNodeDraggingProperty);
            }
            set
            {
                SetValue(EnableNodeDraggingProperty, value);
            }
        }

        /// <summary>
        /// Dependency property that is set to 'true' when the user is 
        /// dragging out a connection.
        /// </summary>
        public bool IsDraggingNode
        {
            get
            {
                return (bool)GetValue(IsDraggingNodeProperty);
            }
            private set
            {
                SetValue(IsDraggingNodePropertyKey, value);
            }
        }

        /// <summary>
        /// Dependency property that is set to 'false' when the user is 
        /// dragging out a connection.
        /// </summary>
        public bool IsNotDraggingNode
        {
            get
            {
                return (bool)GetValue(IsNotDraggingNodeProperty);
            }
            private set
            {
                SetValue(IsNotDraggingNodePropertyKey, value);
            }
        }

        /// <summary>
        /// Set to 'true' when the user is dragging either a node or a connection.
        /// </summary>
        public bool IsDragging
        {
            get
            {
                return (bool)GetValue(IsDraggingProperty);
            }
            private set
            {
                SetValue(IsDraggingPropertyKey, value);
            }
        }

        /// <summary>
        /// Set to 'true' when the user is not dragging anything.
        /// </summary>
        public bool IsNotDragging
        {
            get
            {
                return (bool)GetValue(IsNotDraggingProperty);
            }
            private set
            {
                SetValue(IsNotDraggingPropertyKey, value);
            }
        }

        /// <summary>
        /// Gets or sets the DataTemplate used to display each node item.
        /// This is the equivalent to 'ItemTemplate' for ItemsControl.
        /// </summary>
        public DataTemplate NodeItemTemplate
        {
            get
            {
                return (DataTemplate)GetValue(NodeItemTemplateProperty);
            }
            set
            {
                SetValue(NodeItemTemplateProperty, value);
            }
        }

        /// <summary>
        /// Gets or sets custom style-selection logic for a style that can be applied to each generated container element. 
        /// This is the equivalent to 'ItemTemplateSelector' for ItemsControl.
        /// </summary>
        public DataTemplateSelector NodeItemTemplateSelector
        {
            get
            {
                return (DataTemplateSelector)GetValue(NodeItemTemplateSelectorProperty);
            }
            set
            {
                SetValue(NodeItemTemplateSelectorProperty, value);
            }
        }

        /// <summary>
        /// Gets or sets the Style that is applied to the item container for each node item.
        /// This is the equivalent to 'ItemContainerStyle' for ItemsControl.
        /// </summary>
        public Style NodeItemContainerStyle
        {
            get
            {
                return (Style)GetValue(NodeItemContainerStyleProperty);
            }
            set
            {
                SetValue(NodeItemContainerStyleProperty, value);
            }
        }

        /// <summary>
        /// Gets or sets the DataTemplate used to display each connection item.
        /// This is the equivalent to 'ItemTemplate' for ItemsControl.
        /// </summary>
        public DataTemplate ConnectionItemTemplate
        {
            get
            {
                return (DataTemplate)GetValue(ConnectionItemTemplateProperty);
            }
            set
            {
                SetValue(ConnectionItemTemplateProperty, value);
            }
        }

        /// <summary>
        /// Gets or sets custom style-selection logic for a style that can be applied to each generated container element. 
        /// This is the equivalent to 'ItemTemplateSelector' for ItemsControl.
        /// </summary>
        public DataTemplateSelector ConnectionItemTemplateSelector
        {
            get
            {
                return (DataTemplateSelector)GetValue(ConnectionItemTemplateSelectorProperty);
            }
            set
            {
                SetValue(ConnectionItemTemplateSelectorProperty, value);
            }
        }

        /// <summary>
        /// Gets or sets the Style that is applied to the item container for each connection item.
        /// This is the equivalent to 'ItemContainerStyle' for ItemsControl.
        /// </summary>
        public Style ConnectionItemContainerStyle
        {
            get
            {
                return (Style)GetValue(ConnectionItemContainerStyleProperty);
            }
            set
            {
                SetValue(ConnectionItemContainerStyleProperty, value);
            }
        }

        /// <summary>
        /// A reference to currently selected node.
        /// </summary>
        public object SelectedNode
        {
            get
            {
                if (nodeItemsControl != null)
                {
                    return nodeItemsControl.SelectedItem;
                }
                else
                {
                    if (initialSelectedNodes == null)
                    {
                        return null;
                    }

                    if (initialSelectedNodes.Count != 1)
                    {
                        return null;
                    }

                    return initialSelectedNodes[0];
                }
            }
            set
            {
                if (nodeItemsControl != null)
                {
                    nodeItemsControl.SelectedItem = value;
                }
                else
                {
                    if (initialSelectedNodes == null)
                    {
                        initialSelectedNodes = new List<object>();
                    }

                    initialSelectedNodes.Clear();
                    initialSelectedNodes.Add(value);
                }
            }
        }

        /// <summary>
        /// A list of selected nodes.
        /// </summary>
        public IList SelectedNodes
        {
            get
            {
                if (nodeItemsControl != null)
                {
                    return nodeItemsControl.SelectedItems;
                }
                else
                {
                    if (initialSelectedNodes == null)
                    {
                        initialSelectedNodes = new List<object>();
                    }

                    return initialSelectedNodes;
                }
            }
        }

        /// <summary>
        /// An event raised when the nodes selected in the GraphView has changed.
        /// </summary>
        public event SelectionChangedEventHandler SelectionChanged;

        /// <summary>
        /// Bring the currently selected nodes into view.
        /// This affects ContentViewportOffsetX/ContentViewportOffsetY, but doesn't affect 'ContentScale'.
        /// </summary>
        public void BringSelectedNodesIntoView()
        {
            BringNodesIntoView(SelectedNodes);
        }

        /// <summary>
        /// Bring the collection of nodes into view.
        /// This affects ContentViewportOffsetX/ContentViewportOffsetY, but doesn't affect 'ContentScale'.
        /// </summary>
        public void BringNodesIntoView(ICollection nodes)
        {
            if (nodes == null)
            {
                throw new ArgumentNullException("nodes");
            }

            if (nodes.Count == 0)
            {
                return;
            }

            Rect rect = Rect.Empty;

            foreach (var node in nodes)
            {
                NodeItem nodeItem = FindAssociatedNodeItem(node);
                Rect nodeRect = new Rect(nodeItem.X, nodeItem.Y, nodeItem.ActualWidth, nodeItem.ActualHeight);

                if (rect == Rect.Empty)
                {
                    rect = nodeRect;
                }
                else
                {
                    rect.Intersect(nodeRect);
                }
            }

            this.BringIntoView(rect);
        }

        /// <summary>
        /// Clear the selection.
        /// </summary>
        public void SelectNone()
        {
            this.SelectedNodes.Clear();
        }

        /// <summary>
        /// Selects all of the nodes.
        /// </summary>
        public void SelectAll()
        {
            if (this.SelectedNodes.Count != this.Nodes.Count)
            {
                this.SelectedNodes.Clear();
                foreach (var node in this.Nodes)
                {
                    this.SelectedNodes.Add(node);
                }
            }
        }

        /// <summary>
        /// Inverts the current selection.
        /// </summary>
        public void InvertSelection()
        {
            var selectedNodesCopy = new ArrayList(this.SelectedNodes);
            this.SelectedNodes.Clear();

            foreach (var node in this.Nodes)
            {
                if (!selectedNodesCopy.Contains(node))
                {
                    this.SelectedNodes.Add(node);
                }
            }
        }

        /// <summary>
        /// When connection dragging is progress this function cancels it.
        /// </summary>
        public void CancelConnectionDragging()
        {
            if (!this.IsDraggingConnection)
            {
                return;
            }

            //
            // Now that connection dragging has completed, don't any feedback adorner.
            //
            ClearFeedbackAdorner();

            draggedOutConnectorItem.CancelConnectionDragging();

            this.IsDragging = false;
            this.IsNotDragging = true;
            this.IsDraggingConnection = false;
            this.IsNotDraggingConnection = true;
            this.draggedOutConnectorItem = null;
            this.draggedOutNodeDataContext = null;
            this.draggedOutConnectorDataContext = null;
            this.draggingConnectionDataContext = null;
        }

        #region Private Methods

        /// <summary>
        /// Static constructor.
        /// </summary>
        static GraphView()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(GraphView), new FrameworkPropertyMetadata(typeof(GraphView)));

            InputGestureCollection inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.A, ModifierKeys.Control));
            SelectAllCommand = new RoutedCommand("SelectAll", typeof(GraphView), inputs);

            inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.Escape));
            SelectNoneCommand = new RoutedCommand("SelectNone", typeof(GraphView), inputs);

            inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.I, ModifierKeys.Control));
            InvertSelectionCommand = new RoutedCommand("InvertSelection", typeof(GraphView), inputs);

            CancelConnectionDraggingCommand = new RoutedCommand("CancelConnectionDragging", typeof(GraphView));

            CommandBinding binding = new CommandBinding();
            binding.Command = SelectAllCommand;
            binding.Executed += new ExecutedRoutedEventHandler(SelectAll_Executed);
            CommandManager.RegisterClassCommandBinding(typeof(GraphView), binding);

            binding = new CommandBinding();
            binding.Command = SelectNoneCommand;
            binding.Executed += new ExecutedRoutedEventHandler(SelectNone_Executed);
            CommandManager.RegisterClassCommandBinding(typeof(GraphView), binding);

            binding = new CommandBinding();
            binding.Command = InvertSelectionCommand;
            binding.Executed += new ExecutedRoutedEventHandler(InvertSelection_Executed);
            CommandManager.RegisterClassCommandBinding(typeof(GraphView), binding);

            binding = new CommandBinding();
            binding.Command = CancelConnectionDraggingCommand;
            binding.Executed += new ExecutedRoutedEventHandler(CancelConnectionDragging_Executed);
            CommandManager.RegisterClassCommandBinding(typeof(GraphView), binding);
        }

        /// <summary>
        /// Executes the 'SelectAll' command.
        /// </summary>
        private static void SelectAll_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            GraphView c = (GraphView)sender;
            c.SelectAll();
        }

        /// <summary>
        /// Executes the 'SelectNone' command.
        /// </summary>
        private static void SelectNone_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            GraphView c = (GraphView)sender;
            c.SelectNone();
        }

        /// <summary>
        /// Executes the 'InvertSelection' command.
        /// </summary>
        private static void InvertSelection_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            GraphView c = (GraphView)sender;
            c.InvertSelection();
        }

        /// <summary>
        /// Executes the 'CancelConnectionDragging' command.
        /// </summary>
        private static void CancelConnectionDragging_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            GraphView c = (GraphView)sender;
            c.CancelConnectionDragging();
        }

        /// <summary>
        /// Event raised when a new collection has been assigned to the 'NodesSource' property.
        /// </summary>
        private static void NodesSource_PropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            GraphView c = (GraphView)d;

            //
            // Clear 'Nodes'.
            //
            c.Nodes.Clear();

            if (e.OldValue != null)
            {
                var notifyCollectionChanged = e.OldValue as INotifyCollectionChanged;
                if (notifyCollectionChanged != null)
                {
                    //
                    // Unhook events from previous collection.
                    //
                    notifyCollectionChanged.CollectionChanged -= new NotifyCollectionChangedEventHandler(c.NodesSource_CollectionChanged);
                }
            }

            if (e.NewValue != null)
            {
                var enumerable = e.NewValue as IEnumerable;
                if (enumerable != null)
                {
                    //
                    // Populate 'Nodes' from 'NodesSource'.
                    //
                    foreach (object obj in enumerable)
                    {
                        c.Nodes.Add(obj);
                    }
                }

                var notifyCollectionChanged = e.NewValue as INotifyCollectionChanged;
                if (notifyCollectionChanged != null)
                {
                    //
                    // Hook events in new collection.
                    //
                    notifyCollectionChanged.CollectionChanged += new NotifyCollectionChangedEventHandler(c.NodesSource_CollectionChanged);
                }
            }
        }

        /// <summary>
        /// Event raised when a node has been added to or removed from the collection assigned to 'NodesSource'.
        /// </summary>
        private void NodesSource_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Reset)
            {
                //
                // 'NodesSource' has been cleared, also clear 'Nodes'.
                //
                Nodes.Clear();
            }
            else
            {
                if (e.OldItems != null)
                {
                    //
                    // For each item that has been removed from 'NodesSource' also remove it from 'Nodes'.
                    //
                    foreach (object obj in e.OldItems)
                    {
                        Nodes.Remove(obj);
                    }
                }

                if (e.NewItems != null)
                {
                    //
                    // For each item that has been added to 'NodesSource' also add it to 'Nodes'.
                    //
                    foreach (object obj in e.NewItems)
                    {
                        Nodes.Add(obj);
                    }
                }
            }
        }

        /// <summary>
        /// Event raised when a new collection has been assigned to the 'ConnectionsSource' property.
        /// </summary>
        private static void ConnectionsSource_PropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            GraphView c = (GraphView)d;

            //
            // Clear 'Connections'.
            //
            c.Connections.Clear();

            if (e.OldValue != null)
            {
                INotifyCollectionChanged notifyCollectionChanged = e.NewValue as INotifyCollectionChanged;
                if (notifyCollectionChanged != null)
                {
                    //
                    // Unhook events from previous collection.
                    //
                    notifyCollectionChanged.CollectionChanged -= new NotifyCollectionChangedEventHandler(c.ConnectionsSource_CollectionChanged);
                }
            }

            if (e.NewValue != null)
            {
                IEnumerable enumerable = e.NewValue as IEnumerable;
                if (enumerable != null)
                {
                    //
                    // Populate 'Connections' from 'ConnectionsSource'.
                    //
                    foreach (object obj in enumerable)
                    {
                        c.Connections.Add(obj);
                    }
                }

                INotifyCollectionChanged notifyCollectionChanged = e.NewValue as INotifyCollectionChanged;
                if (notifyCollectionChanged != null)
                {
                    //
                    // Hook events in new collection.
                    //
                    notifyCollectionChanged.CollectionChanged += new NotifyCollectionChangedEventHandler(c.ConnectionsSource_CollectionChanged);
                }
            }
        }

        /// <summary>
        /// Event raised when a connection has been added to or removed from the collection assigned to 'ConnectionsSource'.
        /// </summary>
        private void ConnectionsSource_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Reset)
            {
                //
                // 'ConnectionsSource' has been cleared, also clear 'Connections'.
                //
                Connections.Clear();
            }
            else
            {
                if (e.OldItems != null)
                {
                    //
                    // For each item that has been removed from 'ConnectionsSource' also remove it from 'Connections'.
                    //
                    foreach (object obj in e.OldItems)
                    {
                        Connections.Remove(obj);
                    }
                }

                if (e.NewItems != null)
                {
                    //
                    // For each item that has been added to 'ConnectionsSource' also add it to 'Connections'.
                    //
                    foreach (object obj in e.NewItems)
                    {
                        Connections.Add(obj);
                    }
                }
            }
        }

        /// <summary>
        /// Called after the visual tree of the control has been built.
        /// Search for and cache references to named parts defined in the XAML control template for GraphView.
        /// </summary>
        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();

            //
            // Cache the parts of the visual tree that we need access to later.
            //

            this.nodeItemsControl = (NodeItemsControl)this.Template.FindName("PART_NodeItemsControl", this);
            if (this.nodeItemsControl == null)
            {
                throw new ApplicationException("Failed to find 'PART_NodeItemsControl' in the visual tree for 'GraphView'.");
            }

            //
            // Synchronize initial selected nodes to the NodeItemsControl.
            //
            if (this.initialSelectedNodes != null && this.initialSelectedNodes.Count > 0)
            {
                foreach (var node in this.initialSelectedNodes)
                {
                    this.nodeItemsControl.SelectedItems.Add(node);
                }
            }

            this.initialSelectedNodes = null; // Don't need this any more.

            this.nodeItemsControl.SelectionChanged += new SelectionChangedEventHandler(nodeItemsControl_SelectionChanged);

            this.connectionItemsControl = (ItemsControl)this.Template.FindName("PART_ConnectionItemsControl", this);
            if (this.connectionItemsControl == null)
            {
                throw new ApplicationException("Failed to find 'PART_ConnectionItemsControl' in the visual tree for 'GraphView'.");
            }

            this.dragSelectionCanvas = (FrameworkElement)this.Template.FindName("PART_DragSelectionCanvas", this);
            if (this.dragSelectionCanvas == null)
            {
                throw new ApplicationException("Failed to find 'PART_DragSelectionCanvas' in the visual tree for 'GraphView'.");
            }

            this.dragSelectionBorder = (FrameworkElement)this.Template.FindName("PART_DragSelectionBorder", this);
            if (this.dragSelectionBorder == null)
            {
                throw new ApplicationException("Failed to find 'PART_dragSelectionBorder' in the visual tree for 'GraphView'.");
            }
        }

        /// <summary>
        /// Event raised when the selection in 'nodeItemsControl' changes.
        /// </summary>
        private void nodeItemsControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (this.SelectionChanged != null)
            {
                this.SelectionChanged(this, new SelectionChangedEventArgs(ListBox.SelectionChangedEvent, e.RemovedItems, e.AddedItems));
            }
        }

        /// <summary>
        /// Find the max ZIndex of all the nodes.
        /// </summary>
        internal int FindMaxZIndex()
        {
            if (this.nodeItemsControl == null)
            {
                return 0;
            }

            int maxZ = 0;

            for (int nodeIndex = 0; ; ++nodeIndex)
            {
                NodeItem nodeItem = (NodeItem)this.nodeItemsControl.ItemContainerGenerator.ContainerFromIndex(nodeIndex);
                if (nodeItem == null)
                {
                    break;
                }

                if (nodeItem.ZIndex > maxZ)
                {
                    maxZ = nodeItem.ZIndex;
                }
            }

            return maxZ;
        }

        /// <summary>
        /// Find the NodeItem UI element that is associated with 'node'.
        /// 'node' can be a view-model object, in which case the visual-tree
        /// is searched for the associated NodeItem.
        /// Otherwise 'node' can actually be a 'NodeItem' in which case it is 
        /// simply returned.
        /// </summary>
        internal NodeItem FindAssociatedNodeItem(object node)
        {
            NodeItem nodeItem = node as NodeItem;
            if (nodeItem == null)
            {
                nodeItem = nodeItemsControl.FindAssociatedNodeItem(node);
            }
            return nodeItem;
        }

        #endregion Private Methods
    }
}

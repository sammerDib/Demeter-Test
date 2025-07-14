﻿using System;
using System.Collections;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;

//
// This code based on code available here:
//
//  http://www.codeproject.com/KB/WPF/WPFJoshSmith.aspx
//
namespace UnitySC.Shared.UI.Graph.Utils
{
    //
    // This class is an adorner that allows a FrameworkElement derived class to adorn another FrameworkElement.
    //
    public class FrameworkElementAdorner : Adorner
    {
        //
        // The framework element that is the adorner.
        //
        private readonly FrameworkElement child = null;

        //
        // Placement of the child.
        //
        private readonly AdornerPlacement horizontalAdornerPlacement = AdornerPlacement.Inside;

        private readonly AdornerPlacement verticalAdornerPlacement = AdornerPlacement.Inside;

        //
        // Offset of the child.
        //
        private readonly double offsetX = 0.0;

        private readonly double offsetY = 0.0;

        //
        // Position of the child (when not set to NaN).
        //
        private double positionX = double.NaN;

        private double positionY = double.NaN;

        public FrameworkElementAdorner(FrameworkElement adornerChildElement, FrameworkElement adornedElement)
            : base(adornedElement)
        {
            if (adornedElement == null)
            {
                throw new ArgumentNullException("adornedElement");
            }

            if (adornerChildElement == null)
            {
                throw new ArgumentNullException("adornerChildElement");
            }

            this.child = adornerChildElement;

            base.AddLogicalChild(adornerChildElement);
            base.AddVisualChild(adornerChildElement);
        }

        public FrameworkElementAdorner(FrameworkElement adornerChildElement, FrameworkElement adornedElement,
                                       AdornerPlacement horizontalAdornerPlacement, AdornerPlacement verticalAdornerPlacement,
                                       double offsetX, double offsetY)
            : base(adornedElement)
        {
            if (adornedElement == null)
            {
                throw new ArgumentNullException("adornedElement");
            }

            if (adornerChildElement == null)
            {
                throw new ArgumentNullException("adornerChildElement");
            }

            this.child = adornerChildElement;
            this.horizontalAdornerPlacement = horizontalAdornerPlacement;
            this.verticalAdornerPlacement = verticalAdornerPlacement;
            this.offsetX = offsetX;
            this.offsetY = offsetY;

            adornedElement.SizeChanged += new SizeChangedEventHandler(adornedElement_SizeChanged);

            base.AddLogicalChild(adornerChildElement);
            base.AddVisualChild(adornerChildElement);
        }

        /// <summary>
        /// Event raised when the adorned control's size has changed.
        /// </summary>
        private void adornedElement_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            InvalidateMeasure();
        }

        //
        // The framework element that is the adorner.
        //
        public FrameworkElement Child
        {
            get
            {
                return child;
            }
        }

        //
        // Position of the child (when not set to NaN).
        //
        public double PositionX
        {
            get
            {
                return positionX;
            }
            set
            {
                positionX = value;
            }
        }

        public double PositionY
        {
            get
            {
                return positionY;
            }
            set
            {
                positionY = value;
            }
        }

        protected override Size MeasureOverride(Size constraint)
        {
            this.child.Measure(constraint);
            return this.child.DesiredSize;
        }

        /// <summary>
        /// Determine the X coordinate of the child.
        /// </summary>
        private double DetermineX()
        {
            switch (child.HorizontalAlignment)
            {
                case HorizontalAlignment.Left:
                    {
                        if (horizontalAdornerPlacement == AdornerPlacement.Mouse)
                        {
                            double adornerWidth = this.child.DesiredSize.Width;
                            var position = Mouse.GetPosition(AdornerLayer.GetAdornerLayer(AdornedElement));
                            return position.X - adornerWidth + offsetX;
                        }
                        else if (horizontalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            return -child.DesiredSize.Width + offsetX;
                        }
                        else
                        {
                            return offsetX;
                        }
                    }
                case HorizontalAlignment.Right:
                    {
                        if (horizontalAdornerPlacement == AdornerPlacement.Mouse)
                        {
                            var position = Mouse.GetPosition(AdornerLayer.GetAdornerLayer(AdornedElement));
                            return position.X + offsetX;
                        }
                        else if (horizontalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            double adornedWidth = AdornedElement.ActualWidth;
                            return adornedWidth + offsetX;
                        }
                        else
                        {
                            double adornerWidth = this.child.DesiredSize.Width;
                            double adornedWidth = AdornedElement.ActualWidth;
                            double x = adornedWidth - adornerWidth;
                            return x + offsetX;
                        }
                    }
                case HorizontalAlignment.Center:
                    {
                        double adornerWidth = this.child.DesiredSize.Width;

                        if (horizontalAdornerPlacement == AdornerPlacement.Mouse)
                        {
                            var position = Mouse.GetPosition(AdornerLayer.GetAdornerLayer(AdornedElement));
                            return position.X - (adornerWidth / 2) + offsetX;
                        }
                        else
                        {
                            double adornedWidth = AdornedElement.ActualWidth;
                            double x = (adornedWidth / 2) - (adornerWidth / 2);
                            return x + offsetX;
                        }
                    }
                case HorizontalAlignment.Stretch:
                    {
                        return 0.0;
                    }
            }

            return 0.0;
        }

        /// <summary>
        /// Determine the Y coordinate of the child.
        /// </summary>
        private double DetermineY()
        {
            switch (child.VerticalAlignment)
            {
                case VerticalAlignment.Top:
                    {
                        if (verticalAdornerPlacement == AdornerPlacement.Mouse)
                        {
                            double adornerWidth = this.child.DesiredSize.Width;
                            var position = Mouse.GetPosition(AdornerLayer.GetAdornerLayer(AdornedElement));
                            return position.Y - adornerWidth + offsetY;
                        }
                        else if (verticalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            return -child.DesiredSize.Height + offsetY;
                        }
                        else
                        {
                            return offsetY;
                        }
                    }
                case VerticalAlignment.Bottom:
                    {
                        if (verticalAdornerPlacement == AdornerPlacement.Mouse)
                        {
                            var position = Mouse.GetPosition(AdornerLayer.GetAdornerLayer(AdornedElement));
                            return position.Y + offsetY;
                        }
                        else if (verticalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            double adornedHeight = AdornedElement.ActualHeight;
                            return adornedHeight + offsetY;
                        }
                        else
                        {
                            double adornerHeight = this.child.DesiredSize.Height;
                            double adornedHeight = AdornedElement.ActualHeight;
                            double x = adornedHeight - adornerHeight;
                            return x + offsetY;
                        }
                    }
                case VerticalAlignment.Center:
                    {
                        double adornerHeight = this.child.DesiredSize.Height;

                        if (verticalAdornerPlacement == AdornerPlacement.Mouse)
                        {
                            var position = Mouse.GetPosition(AdornerLayer.GetAdornerLayer(AdornedElement));
                            return position.Y - (adornerHeight / 2) + offsetY;
                        }
                        else
                        {
                            double adornedHeight = AdornedElement.ActualHeight;
                            double y = (adornedHeight / 2) - (adornerHeight / 2);
                            return y + offsetY;
                        }
                    }
                case VerticalAlignment.Stretch:
                    {
                        return 0.0;
                    }
            }

            return 0.0;
        }

        /// <summary>
        /// Determine the width of the child.
        /// </summary>
        private double DetermineWidth()
        {
            if (!double.IsNaN(PositionX))
            {
                return this.child.DesiredSize.Width;
            }

            switch (child.HorizontalAlignment)
            {
                case HorizontalAlignment.Left:
                    {
                        return this.child.DesiredSize.Width;
                    }
                case HorizontalAlignment.Right:
                    {
                        return this.child.DesiredSize.Width;
                    }
                case HorizontalAlignment.Center:
                    {
                        return this.child.DesiredSize.Width;
                    }
                case HorizontalAlignment.Stretch:
                    {
                        return AdornedElement.ActualWidth;
                    }
            }

            return 0.0;
        }

        /// <summary>
        /// Determine the height of the child.
        /// </summary>
        private double DetermineHeight()
        {
            if (!double.IsNaN(PositionY))
            {
                return this.child.DesiredSize.Height;
            }

            switch (child.VerticalAlignment)
            {
                case VerticalAlignment.Top:
                    {
                        return this.child.DesiredSize.Height;
                    }
                case VerticalAlignment.Bottom:
                    {
                        return this.child.DesiredSize.Height;
                    }
                case VerticalAlignment.Center:
                    {
                        return this.child.DesiredSize.Height;
                    }
                case VerticalAlignment.Stretch:
                    {
                        return AdornedElement.ActualHeight;
                    }
            }

            return 0.0;
        }

        protected override Size ArrangeOverride(Size finalSize)
        {
            double x = PositionX;
            if (double.IsNaN(x))
            {
                x = DetermineX();
            }
            double y = PositionY;
            if (double.IsNaN(y))
            {
                y = DetermineY();
            }
            double adornerWidth = DetermineWidth();
            double adornerHeight = DetermineHeight();
            this.child.Arrange(new Rect(x, y, adornerWidth, adornerHeight));
            return finalSize;
        }

        protected override int VisualChildrenCount
        {
            get { return 1; }
        }

        protected override Visual GetVisualChild(int index)
        {
            return this.child;
        }

        protected override IEnumerator LogicalChildren
        {
            get
            {
                var list = new ArrayList();
                list.Add(this.child);
                return list.GetEnumerator();
            }
        }

        /// <summary>
        /// Disconnect the child element from the visual tree so that it may be reused later.
        /// </summary>
        public void DisconnectChild()
        {
            base.RemoveLogicalChild(child);
            base.RemoveVisualChild(child);
        }

        /// <summary>
        /// Override AdornedElement from base class for less type-checking.
        /// </summary>
        public new FrameworkElement AdornedElement
        {
            get
            {
                return (FrameworkElement)base.AdornedElement;
            }
        }
    }
}
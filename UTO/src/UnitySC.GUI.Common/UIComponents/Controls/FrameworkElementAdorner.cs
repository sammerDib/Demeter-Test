using System.Collections;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Media;

namespace UnitySC.GUI.Common.UIComponents.Controls
{
    public class FrameworkElementAdorner : Adorner
    {
        private readonly FrameworkElement _child;

        private readonly AdornerPlacement _horizontalAdornerPlacement = AdornerPlacement.Inside;
        private readonly AdornerPlacement _verticalAdornerPlacement = AdornerPlacement.Inside;

        private readonly double _offsetX;
        private readonly double _offsetY;

        public FrameworkElementAdorner(FrameworkElement adornerChildElement, FrameworkElement adornedElement,
                                       AdornerPlacement horizontalAdornerPlacement, AdornerPlacement verticalAdornerPlacement,
                                       double offsetX, double offsetY)
            : base(adornedElement)
        {
            _child = adornerChildElement;
            _horizontalAdornerPlacement = horizontalAdornerPlacement;
            _verticalAdornerPlacement = verticalAdornerPlacement;
            _offsetX = offsetX;
            _offsetY = offsetY;

            adornedElement.SizeChanged += AdornedElement_SizeChanged;

            AddLogicalChild(adornerChildElement);
            AddVisualChild(adornerChildElement);
        }

        private void AdornedElement_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            InvalidateMeasure();
        }

        public double PositionX { get; } = double.NaN;

        public double PositionY { get; } = double.NaN;

        protected override Size MeasureOverride(Size constraint)
        {
            _child.Measure(constraint);
            return _child.DesiredSize;
        }

        /// <summary>
        /// Determine the X coordinate of the child.
        /// </summary>
        private double DetermineX()
        {
            switch (_child.HorizontalAlignment)
            {
                case HorizontalAlignment.Left:
                    {
                        if (_horizontalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            return -_child.DesiredSize.Width + _offsetX;
                        }

                        return _offsetX;
                    }
                case HorizontalAlignment.Right:
                    {
                        if (_horizontalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            var adornedWidth = AdornedElement.ActualWidth;
                            return adornedWidth + _offsetX;
                        }
                        else
                        {
                            var adornerWidth = _child.DesiredSize.Width;
                            var adornedWidth = AdornedElement.ActualWidth;
                            var x = adornedWidth - adornerWidth;
                            return x + _offsetX;
                        }
                    }
                case HorizontalAlignment.Center:
                    {
                        var adornerWidth = _child.DesiredSize.Width;
                        var adornedWidth = AdornedElement.ActualWidth;
                        var x = (adornedWidth / 2) - (adornerWidth / 2);
                        return x + _offsetX;
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
            switch (_child.VerticalAlignment)
            {
                case VerticalAlignment.Top:
                    {
                        if (_verticalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            return -_child.DesiredSize.Height + _offsetY;
                        }

                        return _offsetY;
                    }
                case VerticalAlignment.Bottom:
                    {
                        if (_verticalAdornerPlacement == AdornerPlacement.Outside)
                        {
                            var adornedHeight = AdornedElement.ActualHeight;
                            return adornedHeight + _offsetY;
                        }
                        else
                        {
                            var adornerHeight = _child.DesiredSize.Height;
                            var adornedHeight = AdornedElement.ActualHeight;
                            var x = adornedHeight - adornerHeight;
                            return x + _offsetY;
                        }
                    }
                case VerticalAlignment.Center:
                    {
                        var adornerHeight = _child.DesiredSize.Height;
                        var adornedHeight = AdornedElement.ActualHeight;
                        var x = (adornedHeight / 2) - (adornerHeight / 2);
                        return x + _offsetY;
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
                return _child.DesiredSize.Width;
            }

            switch (_child.HorizontalAlignment)
            {
                case HorizontalAlignment.Left:
                    {
                        return _child.DesiredSize.Width;
                    }
                case HorizontalAlignment.Right:
                    {
                        return _child.DesiredSize.Width;
                    }
                case HorizontalAlignment.Center:
                    {
                        return _child.DesiredSize.Width;
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
                return _child.DesiredSize.Height;
            }

            switch (_child.VerticalAlignment)
            {
                case VerticalAlignment.Top:
                    {
                        return _child.DesiredSize.Height;
                    }
                case VerticalAlignment.Bottom:
                    {
                        return _child.DesiredSize.Height;
                    }
                case VerticalAlignment.Center:
                    {
                        return _child.DesiredSize.Height;
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
            var x = PositionX;
            if (double.IsNaN(x))
            {
                x = DetermineX();
            }
            var y = PositionY;
            if (double.IsNaN(y))
            {
                y = DetermineY();
            }
            var adornerWidth = DetermineWidth();
            var adornerHeight = DetermineHeight();
            _child.Arrange(new Rect(x, y, adornerWidth, adornerHeight));
            return finalSize;
        }

        protected override int VisualChildrenCount => 1;

        protected override Visual GetVisualChild(int index) => _child;

        protected override IEnumerator LogicalChildren
        {
            get
            {
                var list = new ArrayList
                {
                    _child
                };
                return list.GetEnumerator();
            }
        }

        /// <summary>
        /// Disconnect the child element from the visual tree so that it may be reused later.
        /// </summary>
        public void DisconnectChild()
        {
            RemoveLogicalChild(_child);
            RemoveVisualChild(_child);
        }

        /// <summary>
        /// Override AdornedElement from base class for less type-checking.
        /// </summary>
        public new FrameworkElement AdornedElement => (FrameworkElement)base.AdornedElement;
    }
}

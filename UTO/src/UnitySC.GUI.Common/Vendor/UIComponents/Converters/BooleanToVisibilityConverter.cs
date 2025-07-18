﻿using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace UnitySC.GUI.Common.Vendor.UIComponents.Converters
{
    public class BooleanToVisibilityConverter : IValueConverter
    {
        public Visibility TrueVisibility { get; set; }

        public Visibility FalseVisibility { get; set; }

        #region Implementation of IValueConverter

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool boolValue)
            {
                return boolValue ? TrueVisibility : FalseVisibility;
            }

            return FalseVisibility;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is Visibility visibility)
            {
                return visibility == TrueVisibility;
            }

            return false;
        }

        #endregion
    }
}

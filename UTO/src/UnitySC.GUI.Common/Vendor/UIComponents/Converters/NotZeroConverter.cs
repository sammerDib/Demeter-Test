﻿using System;
using System.Globalization;
using System.Windows.Data;

namespace UnitySC.GUI.Common.Vendor.UIComponents.Converters
{
    public class NotZeroConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            double val;
            if (double.TryParse((value ?? "").ToString(), out val)) return Math.Abs(val) > 0.0;
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }
}

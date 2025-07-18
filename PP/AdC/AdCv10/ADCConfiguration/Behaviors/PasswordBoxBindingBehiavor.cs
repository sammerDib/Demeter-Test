﻿using System.Linq;
using System.Reflection;
using System.Security;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using Microsoft.Xaml.Behaviors;

namespace ADCConfiguration.Behaviors
{

    public class PasswordBoxBindingBehavior : Behavior<System.Windows.Controls.PasswordBox>
    {
        //protected override void OnAttached()
        //{
        //    AssociatedObject.PasswordChanged += OnPasswordBoxValueChanged;
        //}

        //public SecureString Password
        //{
        //    get { return (SecureString)GetValue(PasswordProperty); }
        //    set { SetValue(PasswordProperty, value); }
        //}

        //public static readonly DependencyProperty PasswordProperty =
        //             DependencyProperty.Register("Password", typeof(SecureString),
        //             typeof(PasswordBoxBindingBehavior), new PropertyMetadata(null));

        //private void OnPasswordBoxValueChanged(object sender, RoutedEventArgs e)
        //{
        //    var binding = BindingOperations.GetBindingExpression(this, PasswordProperty);
        //    if (binding != null)
        //    {
        //        PropertyInfo property = binding.DataItem.GetType()
        //            .GetProperty(binding.ParentBinding.Path.Path);
        //        if (property != null)
        //            property.SetValue(binding.DataItem, AssociatedObject.Password, null);
        //    }
        //}

        protected override void OnAttached()
        {
            AssociatedObject.PasswordChanged += OnPasswordBoxValueChanged;
        }

        public SecureString Password
        {
            get { return (SecureString)GetValue(PasswordProperty); }
            set { SetValue(PasswordProperty, value); }
        }

        public static readonly DependencyProperty PasswordProperty =
            DependencyProperty.Register("Password", typeof(string), typeof(PasswordBoxBindingBehavior), new PropertyMetadata(OnSourcePropertyChanged));

        private static void OnSourcePropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (string.IsNullOrEmpty(e.NewValue as string))
            {
                PasswordBoxBindingBehavior behavior = d as PasswordBoxBindingBehavior;
                behavior.AssociatedObject.PasswordChanged -= OnPasswordBoxValueChanged;
                behavior.AssociatedObject.Password = string.Empty;
                behavior.AssociatedObject.PasswordChanged += OnPasswordBoxValueChanged;
            }
        }

        private static void OnPasswordBoxValueChanged(object sender, RoutedEventArgs e)
        {
            PasswordBox passwordBox = sender as PasswordBox;
            var behavior = Interaction.GetBehaviors(passwordBox).OfType<PasswordBoxBindingBehavior>().FirstOrDefault();
            if (behavior != null)
            {
                var binding = BindingOperations.GetBindingExpression(behavior, PasswordProperty);
                if (binding != null)
                {
                    PropertyInfo property = binding.DataItem.GetType().GetProperty(binding.ParentBinding.Path.Path);
                    if (property != null)
                        property.SetValue(binding.DataItem, passwordBox.Password, null);
                }
            }
        }

    }

}

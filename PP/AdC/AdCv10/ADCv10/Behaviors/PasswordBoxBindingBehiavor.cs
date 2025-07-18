﻿using System.Reflection;
using System.Security;
using System.Windows;
using System.Windows.Data;
using Microsoft.Xaml.Behaviors;

namespace ADC.Behaviors
{

    [System.Reflection.Obfuscation(Exclude = true)]
    public class PasswordBoxBindingBehavior : Behavior<System.Windows.Controls.PasswordBox>
    {
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
                     DependencyProperty.Register("Password", typeof(SecureString),
                     typeof(PasswordBoxBindingBehavior), new PropertyMetadata(null));

        private void OnPasswordBoxValueChanged(object sender, RoutedEventArgs e)
        {
            var binding = BindingOperations.GetBindingExpression(this, PasswordProperty);
            if (binding != null)
            {
                PropertyInfo property = binding.DataItem.GetType()
                    .GetProperty(binding.ParentBinding.Path.Path);
                if (property != null)
                    property.SetValue(binding.DataItem, AssociatedObject.Password, null);
            }
        }
    }


}

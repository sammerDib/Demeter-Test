   M S B A M L   `   `   `  ����S  OUnitySC.PM.DMT.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullyRclr-namespace:UnitySC.PM.DMT.Shared.UI.Converter;assembly=UnitySC.PM.DMT.Shared.UI"UnitySC.PM.DMT.Shared.UI.Converter  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4  �� MergedDictionaries �� Source    ScreenImageSelectionComboBox �� SelectedIndex �� Mode �� Orientation  ColorToSolidBrushConverter �� 	Converter  NullToVisibilityConverter  Fringes  Icon  ColorSelectionComboBox �� SelectedItem �� Color �� Path	 ��Name=    7UnitySC.PM.DMT.Shared.UI.Converter.ColorToNameConverter
 �� 
TargetType �� Property �� Value �� Triggers �� Binding �� ElementName �� Value  RoiTextboxGrid � RowDefinitions � ColumnDefinitions � 	Resources%  Xceed.Wpf.Toolkit.IntegerUpDown.  (UnitySC.Shared.UI.Controls.IntegerUpDown �� BasedOn�  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]�  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]�  �UnitySC.Shared.UI.Controls.NumericUpDown`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum  IntegerUpDownDMTStyle   Value   Maximum�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      4xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      `	converterRclr-namespace:UnitySC.PM.DMT.Shared.UI.Converter;assembly=UnitySC.PM.DMT.Shared.UI  5      VsharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5        5      �� 5   
   $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6   �� 5	   
   $Z Tpack://application:,,,/UnitySC.PM.DMT.Shared.UI;component/Styles/UnityStylesDMT.xaml?�6   �� 5   
   $W Qpack://application:,,,/UnitySC.Shared.UI;component/Converters/BasicConverter.xaml?�6   %@  &	        7  7  7  7  &	     &	 �    7 7  7  7  7  �� 5       5      �� *SelectedScreenColorIndex+$ TwoWay=�.@�5   
   �� .��5      �� $ 
Horizontal=�6   .+�5      �� 
�������$��2q�61   $��18��6E   $��18��6Q   $	��2,0q�6\   ��5      �� *Color+8   �� 5      $��White��6   $��Center=�6)   $��2q�6D   5      5      �� 5   
   y�6   �� *Fringe+8  .��5      �� $ 
Horizontal=�6   .+�5      �� 8�� 8�� 6:   �� 5      $��Fringe��6   $��Center=�6*   $��2q�6E   5      5      5&      �� 5(      $��0q�5*   7    5)      �� *Color+��5*      �� *AvailableColors+��5+   
   �� 5,      .R�5-      �� $ 
Horizontal=�6   .+�5.      �� 
�������$��2q�65   $��18��6I   $��18��6U   $	��2,0q�6`   ��5/      �� 50       6.   �� $ .�52      �� 53      $	 	ColorName��6    $��Center=�6w   $��2q�6�   ��63   �� $ .�    ��6�   Z� �� 54      $��
(Standard)��6    $��Center=�62   $��2q�6M   ��55      �� 56      "
 ��6$   .�57   "   ��  � y�$ 	Collapsed=�6?    58   "   �� 59   &    62   �� $ 	ColorName��$
 Text�	 White6g   .a�5:   *   ��  � y�$ Visible=�6G   5;   '   5=      5?      5@      5A      5C      � 5E       5F   
   �� 5G      $
��Auto �6   �� 5H      $
��Auto �6    5J   
   �� 5K      $
��Auto �6   �� 5L      $��* �6   �� 5M      $
��Auto �6   �� 5N      $��* �6    5P   
   ���� 5R      '        "
  6   8   .�5S      ��  �@ Minimum$ 0X�6,   �� 5T       �@ 	Increment$ 1X�6.   �� 5U       � ��$	 100��6-   �� 5V       � ��$ 0,0,0,2q�6+   5W      5X      .+�5Y   
   �� $��X��6   $��Center=�6   $��0,0,2,0q�6:     5Z   
   $��1��6'   $��20��6k   $ 0��6w   $��Center=�6�   8�� $	��0,2q�6   67   �� *RoiX+$ theZoomboxImage�� 6�   �� *	RoiMaxX+$ theZoomboxImage��6  �� 5[   
   $��1��6   $��Y��6!   $��Center=�6*     5\   
   $��1��6'   $��1��64   $��20��6x   $ 0��6�   $��Center=�6�   8�� $	��0,2q�6   6D   �� *RoiY+$ theZoomboxImage�� 6�   �� *	RoiMaxY+$ theZoomboxImage��6  �� 5]   
   $��2��6   $��W��6$   $��10,0,2,0q�6-   $��Center=�6@     5^   
   $��3��6'   $��20��6o   $ 1��6{   $��Center=�6�   8��  67   �� *
RoiWidth+$ theZoomboxImage�� 6�   �� *RoiMaxWidth+$ theZoomboxImage��6�   �� 5_   
   $��1��6   $��2��6!   $��H��61   $��Center=�6;   $��10,0,2,0q�6V     5`   
   $��1��6'   $��3��64   $��20��6}   $ 1��6�   $��Center=�6�   8��  6D   �� *	RoiHeight+$ theZoomboxImage�� 6�   �� *RoiMaxHeight+$ theZoomboxImage��6�   5a      5c      
   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullfEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Extensions  5      . *UnitySC.PM.DMT.Client.Modules.TestHardwareA   ;UnitySC.PM.DMT.Client.Modules.TestHardware.TestHardwareView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      bsharedExtensionsEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UI     5        � 	Resources  5	       �� MergedDictionaries �� Source�� 5
   
    5      �� 5      $ DataTemplate.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      � -   5         �Name$ MainGrid��5      
������� � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��1��6      TabControlLeftStyle#��[  6"   $
��Left=�6�    �� SelectedIndex$ 0��6�   ��6P   �� *
TabItems+ �� SelectedItem 6q   �� *SelectedTab+��5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6!   $
��Left=�6:   $	��4,8q�6U   .+�5      ��  ��Name$ TabHeaderText��6d   $��Center=�6<   $	��4,0q�6W   $	��225��6{   $y�	Collapsed=�6�   ��6$   �� *Header+6�   �� 5      	 ��Name$	 myImage��6      
IconsColor+   %UnitySC.Shared.UI.Extensions.ImageExt
   GeometryBrush#
 [ 61    � ToolTip 6w   ��  �� Path$ Header���5       �� 5!   "    �� 
TargetType" ��6(    �� Triggers 5"   &   �� 5$   *    �� Binding 66   �� *Text+ �� ElementName$ TabHeaderText�� �� Value	 Stage6j   .a�5%   .   ��  �� Property �@ SourceGeometry  MoveGeometry �� Value# [ 6i   5&   +   �� 5'   *    66   �� *Text+$ TabHeaderText�� Screen Camera6j   .a�5(   .   ��  �@ SourceGeometry  ScreenGeometry# [ 6i   5)   +   �� 5+   *    66   �� *Text+$ TabHeaderText�� Chamber6j   .a�5,   .   ��  �@ SourceGeometry  HardwareGeometry# [ 6i   5-   +   �� 5/   *    66   �� *Text+$ TabHeaderText�� Screen Qualification6j   .a�50   .   ��  �@ SourceGeometry  ScreenSolidGeometry# [ 6i   51   +   54   #   56      57       �� Triggers 58      �� 59      $
 True��6�    6&   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" �� �� AncestorLevel$ 1��$ 
IsSelected�.a�5:      ��  �� 
TargetName$ TabHeaderText��6H    � ��$
 Bold"�6;   6H   5;      5=       �� ContentTemplate 5?      �� 5@      .R�5A      � .+�5B      �� {�. $��5q�6Q   ��6)   �� *.+6Q   5C      5D      5F      5G      5H      
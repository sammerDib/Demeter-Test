   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      fEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters  5      fEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Extensions  5      N JUnitySC.Shared.Data, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null`Cclr-namespace:UnitySC.Shared.Data.Enum;assembly=UnitySC.Shared.DataUnitySC.Shared.Data.Enum 5	      # UnitySC.PM.DMT.Modules.Settings7   1UnitySC.PM.DMT.Modules.Settings.View.SettingsView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      \
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI     5      bsharedExtensionsEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UI     5      Z
sharedEnumCclr-namespace:UnitySC.Shared.Data.Enum;assembly=UnitySC.Shared.Data     5	        � 	Resources  5       �� 
TargetType �� Property �� Value �� Mode �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ DataTemplate.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %m   '��       �� 5      " ��6   .�5      ��  � {� 6.   �� *	IsEnabled+$ OneWay=�5      5      .��5      � -   5         �Name$ MainGrid��5      
������� � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5    
   �� 	 �� Orientation$	 
Horizontal=�6   $��5q�6.   .+�5!      2   ,UnitySC.Shared.UI.Controls.ImageToggleButton  $	��120��6)      ArrowSquareUpGeometry
   ImageGeometry#
 [  65   "   ImageGeometryUncheckedBrush �	#FF777777   ForegroundUncheckedBrush �	#FF777777 � Cursor$
 Hand��6�   d� 	IsChecked 6�   �� *CurrentVisibleSide+ �� 	Converter 9   3UnitySC.Shared.UI.Converters.EnumToBooleanConverter  #  UnitySC.Shared.Data.Enum.Side   Front �� ConverterParameter# Z  J� IsHitTestVisible 6F  �� *	IsChecked+ ;   5UnitySC.Shared.UI.Converters.InvertedBooleanConverter   �� RelativeSource �� *Self+.��6�  
Front Side6�    5"      $	��120��6)     ArrowSquareDownGeometry#
 [ 66   $��5,0,0,0q�6o    �	#FF777777 �	#FF777777$
 Hand��6�   6�   �� *CurrentVisibleSide+      Back# Z  6[  �� *	IsChecked+    �� *Self+.��6�  	Back Side6�  5#      �� 5$   
   $	 
Horizontal=�6   $��Right=�6.   $��5q�6J   .+�5%      ,   &UnitySC.Shared.UI.Controls.ImageButton  $	��225��6#   $��0,0,5,0q�6/     ArrowLeftGeometry   ImageGeometry# [ 6@     
IconsColor   ImageGeometryBrush# [ 6s   $"��Move to measurement position��6�   ��6�   �� *" MoveToMeasurementPositionCommand+  5&      $	��225��6#      ImageGeometryRightBrush# [ 6/     ArrowRightGeometry   ImageGeometryRight# [ 6e   $��Move to loading position��6�   ��6�   �� *MoveToLoadingPositionCommand+5'      � 5)   
   $��5q�6   $��2��6    � ColumnDefinitions 5*      �� 5+      $
��Auto �6#   �� 5-      $��* �6#   .+�5/      �� $��1��6     TabControlLeftStyle#��[ 6)   $
��Left=�6|   ��6V   �� *SettingsFront+ �� SelectedItem 6�   �� *SelectedSettingFront+y�6�   �� *CurrentVisibleSide+ <   6UnitySC.Shared.UI.Converters.EnumToVisibilityConverter  # Z ��50      �� 52      .R�53      �� $	 
Horizontal=�6%   $
��Left=�6>   $	��4,8q�6Y   .+�54      �� +   %UnitySC.Shared.UI.Extensions.ImageExt   SourceGeometry# [  6$   $��Center=�6�    � ToolTip$ 
Front Side��6�   $��20��6  $��5,0,5,0q�6     GeometryBrush 6v   ��  �� ElementName$ TabHeaderText�� �� Path$ 
Foreground�y�6#  �� *	WaferSide+   # Z �� 55      # [ 6$   $��Center=�6�   $ 	Back Side��6�   $��20��6  $��5,0,5,0q�6   6x   �� $ TabHeaderText��$ 
Foreground�y�6$  �� *	WaferSide+   # Z �� 56        ��Name$  TabHeaderText��6h   $��Center=�6@   $	��4,0q�6[   $	��160��6   ��6(   �� *Header+6   57      ! �� Triggers! 58      �� 59      " �� Value$
" True��6�   # �� Binding# 6*   ��  �� $ �� Mode$$ FindAncestor=�% �� AncestorType"% ��& �� AncestorLevel$& 1��$ 
IsSelected�.a�5:   "   �� ' �� 
TargetName$' TabHeaderText��6L    � ��$
 Bold"�6?   6L   5;      5=      ( �� ContentTemplate( 5?      �� 5@      .R�5A      � .+�5B      �� $��5q�6c   ��6-   �� *.+{�6C   �� *	IsEnabled+6c   5C      5D      5F      �� 5G      $��1��6   #��[ 6)   $
��Left=�6{   ��6V   �� *SettingsBack+ 6�   �� *SelectedSettingBack+y�6�   �� *CurrentVisibleSide+   # Z ��5H      �� 5J      .R�5K      �� $	 
Horizontal=�6%   $
��Left=�6>   $	��4,8q�6Y   .+�5L      �� # [  6$   $��Center=�6�   $ 
Front Side��6�   $��20��6  $��5,0,5,0q�6   6v   �� $ TabHeaderText��$ 
Foreground�y�6#  �� *	WaferSide+   # Z �� 5M      # [ 6$   $��Center=�6�   $ 	Back Side��6�   $��20��6  $��5,0,5,0q�6   6x   �� $ TabHeaderText��$ 
Foreground�y�6$  �� *	WaferSide+   # Z �� 5N      $  TabHeaderText��6h   $��Center=�6@   $	��4,0q�6[   $	��120��6   ��6(   �� *Header+6   5O      ! 5P      �� 5Q      $
" True��6�   # 6*   ��  �� $$ FindAncestor=�"% ��$& 1��$ 
IsSelected�.a�5R   "   �� $' TabHeaderText��6L    � ��$
 Bold"�6?   6L   5S      5U      ( 5W      �� 5X      .R�5Y      � .+�5Z      �� $��5q�6c   ��6-   �� *.+{�6C   �� *	IsEnabled+6c   5[      5\      5^      5_      5`      5c      
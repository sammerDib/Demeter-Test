   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nulla5clr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage'UnitySC.Shared.UI.Controls.ZoomboxImage  5      K*clr-namespace:UnitySC.Shared.UI.ExtensionsUnitySC.Shared.UI.Extensions  5      B    <UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxWithImageList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Glocal5clr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage     5      GsharedExtensions*clr-namespace:UnitySC.Shared.UI.Extensions     5      -   5          >�Name$  theView��5
       � 	Resources 5       �� MergedDictionaries �� Source   resultsSource �� Source �� ElementName �� Path �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %~   &	        �� 5       5      �� $ theView��$ ItemsSource� 5        5      $
 Side��6/   5      5      .��5      � 	 � ColumnDefinitions	 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5"   
   �� -   5        
 ��Name$
 
resultList��5"      $��Disabled=�5#      $��0,0,5,0q�6I   ��5"   '   ��  �� Source# [   �� 
GroupStyle 5$      (  "System.Windows.Controls.GroupStyle  5%         ContainerStyle 5&      �� 5'       �� 
TargetType" ��6    .�5(      ��  �� Property � �� �� Value 5)   "   �� 5*   &   .R�5+   *   9�  9� 
IsExpanded . ��5,   .   �� 5-   2    �� Orientation$ 
Horizontal=�6=   .+�5.   6   �� $
��Bold"�6[   
�������$��20(�6   $��Center=�6�   ��6@   �� $
 Name�6�   5/   3   .��51   .   �� 52   +   53   '   55      56      58       �� View 5:      �� 5;      .P�5<      �� $
��Type��6%    �� Width$ 40��63    �� CellTemplate 5=      �� 5>      .R�5?   "   � $��18��6'   $��24��63   .+�5@   &   ��   FringesGeometry+   %UnitySC.Shared.UI.Extensions.ImageExt   SourceGeometry# [ 6,     
IconsColor   GeometryBrush# [ 6x   y�5A   4   �� $ 	ImageType�  EnumToVisibilityConverter �� 	Converter# [ 7   1UnitySC.Shared.UI.Controls.ZoomboxImage.ImageType   Fringe �� ConverterParameter# Z �� 5B   &     WaferGeometry# [ 6,   # [ 6v   y�5C   4   �� $ 	ImageType�# [    Light# Z �� 5D   &   
���   �y�5E   5   �� $ 	ImageType�# [    Dark# Z ._�5F   *   �� # [ 60   # [ 6z   5G   '   �� 5H   &     FileGeometry# [ 6,   # [ 6u   y�5I   4   �� $ 	ImageType�# [    Data# Z 5J   #   5K      5M      �� 5N      $
��Name��6%   $	 150��63    �� DisplayMemberBinding 6?   �� *Name+5O      5Q      E   ?UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxImageWithButtons  5T   
   $��1��6(      ImageSource 68   �� $ 
resultList��$ SelectedItem.Image�5U      5V      
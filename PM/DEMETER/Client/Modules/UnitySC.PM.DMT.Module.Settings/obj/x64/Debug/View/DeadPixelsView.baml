   M S B A M L   `   `   `  ����[  WUnitySC.PM.DMT.Service.Interface, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null}Xclr-namespace:UnitySC.PM.DMT.Service.Interface;assembly=UnitySC.PM.DMT.Service.Interface UnitySC.PM.DMT.Service.Interface  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5	      fEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters 5
      S OUnitySC.PM.DMT.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullyRclr-namespace:UnitySC.PM.DMT.Shared.UI.Converter;assembly=UnitySC.PM.DMT.Shared.UI"UnitySC.PM.DMT.Shared.UI.Converter 5      Z VUnitySC.PM.DMT.Modules.Settings, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:UnitySC.PM.DMT.Modules.Settings.View$UnitySC.PM.DMT.Modules.Settings.View 5      9   3UnitySC.PM.DMT.Modules.Settings.View.DeadPixelsView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      n	interfaceXclr-namespace:UnitySC.PM.DMT.Service.Interface;assembly=UnitySC.PM.DMT.Service.Interface     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      RcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5      XsharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5	      V
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI  5
      fdmtConvertersRclr-namespace:UnitySC.PM.DMT.Shared.UI.Converter;assembly=UnitySC.PM.DMT.Shared.UI  5      >local2clr-namespace:UnitySC.PM.DMT.Modules.Settings.View  5        � 	Resources  5       �� MergedDictionaries �� SourceC  =UnitySC.PM.DMT.Modules.Settings.View.DeadPixelsDisplayControl �� 
TargetType �� Property �� Value �� 
TargetType ��Name;  5UnitySC.PM.DMT.Modules.Settings.View.DeadPixelControl � DataContext	 �� RelativeSource
 �� Path ��Name �� Triggers �� Value �� Binding �� 
TargetName   blinkAnimation g� Duration g� RepeatBehavior �� TargetProperty g� AutoReverse �� KeyTime �� Value�� 5   
    5      �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %I  '        '  �     &	  �    �� 5      "  6   .�5      ��  � �� 5      �� 5      "  6*   .R�5      � .+�5   "   �� $ deadPixelsCanvas��6)   5      5!      5#      5$      �� 5&      "  6   .�5'      ��  � ��$ 3��5(      �� 5)       � ��$ 3��5*      �� 5+       �@J�SnapsToDevicePixels . 5,      �� 5-       � �� 5.      �� 5/      "  6*   .R�50      �  6#   �� 	 �� *TemplatedParent+$
 .�.+�51   "   �� $ Border��6,   
���  ��$��1��6J   54       55      �� 56   "   $
 true��57   "    56   .   �� $$
 AssociatedDeadPixel.IsSelected�	 �� *Self+.a�58   &   �� $ Border��6-    � ��
 � ���5:   %   5;   #   5=      5?      5@      �� 5B      $ 0:0:2D�60   $ Forever��6A   .��5C      �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�6/    . g�5G      �� $ 0:0:0.5��6.   $ Transparent��6@   �� 5H      $ 0:0:1��6.   $ Black��6>   p� 5I      $ 0:0:2��60   $ Black��6@   5K      5L      5M      .��5P      �  � RowDefinitions 5Q   
   �� 5R      $
��Auto �6   �� 5S      $��* �6   .+�5U   
   �  5V      �� 5W      $
��Auto �6    �� 5X      $
��Auto �6    .+�5[      .  (UnitySC.Shared.UI.Controls.ImageGroupBox  $��
Parameters��6+     GearGeometry   ImageGeometry# [ 6?     
IconsColor   ImageGeometryBrush# [ 6m   $��0,0,0,10q�6�   .��5\      �  5]      �� 5^      $
��Auto �6(   �� 5_      $
��Auto �6(   �� 5`      $
��Auto �6(   .+�5c      ��  �� Orientation$ 
Horizontal=�6!   $
��0,10q�6:   .+�5d      �� $��0,0,30,0q�6$   $��Center=�66   Dead Pixels type6c   	� 5e      $��Center=�6�    d� 	IsChecked 6&   �� $
 CurrentDeadPixelType� �� 	Converter 9  3UnitySC.Shared.UI.Converters.EnumToBooleanConverter  5   /UnitySC.PM.DMT.Service.Interface.DeadPixelTypes   
WhitePixel �� ConverterParameter# Z .��6�   Stuck (white)6�   	� 5f      $��30,0,0,0q�6&    68   �� $
 CurrentDeadPixelType�      
BlackPixel# Z .��6�   Black6�   5g      �� 5h      $��1��6    $	��0,0q�6-   $��16(�6�   $��Put a cap on the camera��6�   
���   �y�6:   �� $
 CurrentDeadPixelType� <  6UnitySC.Shared.UI.Converters.EnumToVisibilityConverter  # Z  � Triggers 5i      :� 5j        :� RoutedEvent$  TextBlock.Loaded��6+   .[�5k   "   �� .��5l   &   �� ! �� ResourceKey$! blinkAnimation��65   5m   #   5n      5p      �� 5r      $��1��6    $	��0,0q�6-   $��16(�6�   $0��*Put a white surface in front of the camera��6�   
���   �y�6:   �� $
 CurrentDeadPixelType�   # Z  5s      :� 5t      $  TextBlock.Loaded��6+   .[�5u   "   �� .��5v   &   �� $! blinkAnimation��65   5w   #   5x      5z      �� 5|      $ 
Horizontal=�6!   $��2��6:   $
��0,10q�6G   .+�5}      �� $��0,0,10,0q�6$   $��Center=�66   Exposure Time6`   � 5~      $	��150��6   .+�5      -  'UnitySC.Shared.UI.Controls.DoubleUpDown    DoubleUpDownDMTStyle#��[ 6�   �  �UnitySC.Shared.UI.Controls.NumericUpDown`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"   Unit$" ms��6O  #   Minimum# 6:   �� *%#CameraInformation.MinExposureTimeMs+$ �� StringFormat$$ {0:F1}��%   Maximum% 6�   �� *%#CameraInformation.MaxExposureTimeMs+$$ {0:F1}��&   Value& 6  �� *WhiteDeadPixelsExposureTimeMs+$$ {0:F1}��y�6Y  �� *CurrentDeadPixelType+   # Z   5�      #��[ 6�   $" ms��6O  # 6:   �� *%#CameraInformation.MinExposureTimeMs+$$ {0:F1}��% 6�   �� *%#CameraInformation.MaxExposureTimeMs+$$ {0:F1}��& 6  �� *BlackDeadPixelsExposureTimeMs+$$ {0:F1}��y�6Y  �� *CurrentDeadPixelType+   # Z 5�      �� 5�      $ 
Horizontal=�6%   y�6>   �� $
 CurrentDeadPixelType�   # Z .+�5�      �� $��	30,0,10,0q�6(   $��Center=�6;   Pixels marked dead when above6u   �� 5�      $��50��6&   ��61   �� *WhitePixelsThreshold+6Y   5�      �� 5�      $ 
Horizontal=�6%   y�6>   �� $
 CurrentDeadPixelType�   # Z .+�5�      �� $��	30,0,10,0q�6(   $��Center=�6;   Pixels marked dead when below6u   �� 5�      $��50��6&   ��61   �� *BlackPixelsThreshold+6Y   5�      5�      5�      5�      �� 5�      $ 
Horizontal=�6   $��1��62   $��0,0,0,10q�6?   .+�5�      ,	  &UnitySC.Shared.UI.Controls.ImageButton	    PlayGeometry' 	  ImageGeometry#' [ 6-   ( 	  ImageGeometryBrush
( � � �$	��Run��6v   ��6�   �� *StartDeadPixelsSearch+�� 5�      $��Center=�6   $��20,0,0,0q�67   !Number of stuck Pixels - White:6j   � 5�      .+�5�      �� $��Center=�6C   $��10,0,0,0q�6^   ��6    �� *NbWhiteDeadPixels+6^   �� 5�      $��Not Searched��6    $��Center=�64   $��10,0,0,0q�6O   
���  ��$
��Bold"�6r   y�6�   �� *NbWhiteDeadPixels+ D
  >UnitySC.Shared.UI.Converters.InvertedNullToVisibilityConverter
  5�      �� 5�      $��Center=�6   $��20,0,0,0q�67   Black:6Q   � 5�      .+�5�      �� $��Center=�6C   $��10,0,0,0q�6^   ��6    �� *NbBlackDeadPixels+6^   �� 5�      $��Not Searched��6    $��Center=�64   $��10,0,0,0q�6O   
���  ��$
��Bold"�6r   y�6�   �� *NbBlackDeadPixels+ 
  5�      	  5�        SaveGeometry#' [ 6-   #( [ 6[   $��Save Dead Pixels��6�   $��20,0,0,0q�6�   ��6�   �� *SaveDeadPixels+6�   5�      5�      � 5�   
   -   5        ) �Name$) Source��5�      $��4��6   $��Stretch=�6,   * � ColumnDefinitions* 5�      �� 5�      $	��200 �6#   �� 5�      $��* �6#    5�      �� 5�      $��* �6    �� 5�      $
��Auto �6    .+�5�      �� -   5        + ��Name$+ deadPixelsList��5�      $��Disabled=�5�      $��0,0,5,0q�6I   ��5�   /   �� *
DeadPixels+  5�      , �� Mode��%y   '��       �� 5�      " ��6   .�5�      ��  �@��
IsSelected 67   �� *
IsSelected+$, TwoWay=�5�      5�      - �� View- 5�      �� 5�      .P�5�      �� $��Dead Pixels��6)   . �� Width$	. 195��6>   / �� DisplayMemberBinding/ 6J   �� *AssociatedDeadPixel+5�      5�      '  !Xceed.Wpf.Toolkit.Zoombox.Zoombox  5�      -   5        0  Name$0 DeadPixelsZoom��5�      $��1��64   1   MinScale$	1 0.5Q�6D   2   MaxScale$2 10Q�6S   $��0,0,0,0q�6a   3   
IsAnimated3 .  4   IsUsingScrollBars4 . 5   ZoomOn$
5 View=�6�   6   KeepContentInBounds6 . 7   RelativeZoomModifiersA  ;Xceed.Wpf.Toolkit.Core.Input.KeyModifierCollectionConverter$
7 Ctrl 6�   8   DragModifiers$8 Exact 6�   9 � Cursor$9 Arrow��6�   
�������.��5�      � 
��� � ���6   �� *
ImageWidth+: �� FallbackValue$: 0����6D   �� *ImageHeight+$: 0��.+�5�      �� -   5        ; ��Name$; theImage��5�      < �� BitmapScalingMode$< NearestNeighbor=�6�   $��Stretch=�5�      $��Stretch=�66   ��5�   .   �� *CameraBitmapSource+= �� NotifyOnSourceUpdated= . > �� NotifyOnTargetUpdated> . 5�        5�      -   5        ?  Name$? DeadPixelsDisplaControl��5�   5   $��Stretch=�6W   $��Stretch=�6u   @   
DeadPixels@ 6�   �� *
DeadPixels+5�      5�      5�      �� 5�      $��1��6�   $��1��6�   $��Center=�6�   ��6   �� *
StatusText+	 �� A �� Mode$A FindAncestor=�B �� AncestorType"B >�6�   5�      %  Xceed.Wpf.Toolkit.BusyIndicator  5�   
   C   BusyContent$C Looking for Dead Pixels��6I   $��2��6o   D   IsBusyD 6   �� *IsBusy+6o   5�      5�      
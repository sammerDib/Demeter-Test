   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null|Pclr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage;assembly=UnitySC.Shared.UI'UnitySC.Shared.UI.Controls.ZoomboxImage  5      a ]UnitySC.PM.Shared.Hardware.ClientProxy, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullm;clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Camera-UnitySC.PM.Shared.Hardware.ClientProxy.Camera 5      fEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters  5      m;clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Camera-UnitySC.PM.Shared.Hardware.ClientProxy.Camera 5	      >   8UnitySC.PM.Shared.Hardware.ClientProxy.Camera.CameraView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _zbPclr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage;assembly=UnitySC.Shared.UI     5      Jvm;clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Camera     5      \
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI     5      Mlocal;clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Camera     5	      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5
      -   5          � 	Resources  5      <  6UnitySC.PM.Shared.Hardware.ClientProxy.Camera.CameraVM   DesignViewModel �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %   &	          5      6   5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   .+�5"   
   :   4UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxImage  -   5          Name$ theZoomboxImage��5"      $��Stretch=�63   $��Stretch=�6O      ImageSource 5#      �� *CameraBitmapSource+�� 5$   
   
���  �� J� IsHitTestVisible .  ��6   �� *
ImageCount+ �� FallbackValue$	 ooo��6X   � 5'   
   $��1��6    � ColumnDefinitions 5(      �� 5)      $
��Auto �6#   �� 5*      $��* �6#   �� 5+      $
��Auto �6#   .+�5-      �� 	 �� Orientation$	 
Horizontal=�6   .+�5.      d� -   5        
 d�Name$
 
playButton��5.      $��2q�5/      $��40��63   ��5.   3   �� *VideoGrabCommand+��6X   ��  �� ElementName$ 
playButton�� �� Path$ 	IsChecked�.��50      � $��20��6   .+�51      ��   Play#��[ 6    y�6?   �� $ 
playButton��$ 	IsChecked� ( $InvertedBooleanToVisibilityConverter �� 	Converter# [ �� 52        Stop#��[ 6    y�6?   �� $ 
playButton��$ 	IsChecked�   BooleanToVisibilityConverter# [ 53      54      �� 55       � ToolTip$ Single grab��6?   ��6   �� *SingleGrabCommand+{�56      �� $ 
playButton��$ 	IsChecked� ;   5UnitySC.Shared.UI.Converters.InvertedBooleanConverter  .��57      ��  	 First#��[ 6   $��20��6<   58      59      �� 5:      $��1��6    �� 
IsReadOnly . $��Center=�6q   ��68   �� *
StatusText+$ theZoomboxImage��6q   �� 5;      $��2��6     ZoomButtons#��[ 6-   ��6\   �� $ theZoomboxImage��5<      5=      5>      
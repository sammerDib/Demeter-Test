   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      * &UnitySC.PM.Shared.Hardware.ClientProxy<   6UnitySC.PM.Shared.Hardware.ClientProxy.Laser.LaserView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      RcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5      $
��155* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   .   (UnitySC.Shared.UI.Controls.ImageGroupBox     Info   Image# [  6!   $
��Info��6?   $��0��6M   $��2��6Z   $��1,1,1.301,0.679q�6n   .��5      �  5      �� 5       $	��110 �6'   �� 5!      $
��Auto �6'   �� 5"      $��* �6'   �� 5#      $	��110 �6'   �� 5$      $
��Auto �6'   �� 5%      $��* �6'   �� 5&      $	��110 �6'   �� 5'      $
��Auto �6'    5)      �� 5*      $
��Auto �6$   �� 5+      $
��Auto �6$   �� 5,      $
��Auto �6$   .+�5.      �� $��0��6   $��0��6,   $
��Name��69   $��Center=�6E   $��0,0,5,0q�6`   6s   �� 5/      $��1��6   $��0��6*   $��	-80,2,0,2q�67   $	��120��6J   {�.  $��2��6�   ��6V   �� *CamMireSizeX+6�   �� 50      $��3��6   $��0��6,   $��Serial number��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 51      $��4��6   $��0��6*   $��	-80,2,0,2q�67   $	��120��6J   {�.  $��2��6   ��6V   �� *GetId+6   �� 52      $��6��6   $��0��6,   $��Status��69   $��Center=�6G   $��0,0,5,0q�6b   6u   �� 53      $��7��6   $��0��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *State+6z   �� 55      $��0��6   $��1��6,   $��Power feadback (mW)��69   $��Center=�6T   $��0,0,5,0q�6o   6�   �� 56      $��1��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *Power+6z   �� 57      $��3��6   $��1��6,   $��PSU temperature (C)��69   $��Center=�6T   $��0,0,5,0q�6o   6�   �� 58      $��4��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *PsuTemperature+6�   �� 59      $��6��6   $��1��6,   $��	Interlock��69   $��Center=�6J   $��0,0,5,0q�6e   6x   �� 5:      $��7��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *InterlockStatus+6�   �� 5<      $��0��6   $��2��6,   $��Laser temperature (C)��69   $��Center=�6V   $��0,0,5,0q�6q   6�   �� 5=      $��1��6   $��2��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *LaserTemperature+6�   �� 5>      $��3��6   $��2��6,   $��Laser enabled time��69   $��Center=�6S   $��0,0,5,0q�6n   6�   �� 5?      $��4��6   $��2��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *CamMireSizeX+6�   �� 5@      $��6��6   $��2��6,   $��Laser on time��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 5A      $��7��6   $��2��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *CamMireSizeX+6�   5B      5C        5D   
     Running# [ 6!   $��
Management��6B   $��1��6V   $��2��6c   $��1,1.321,1.301,1.264q�6w   .��5E      �  5F      �� 5G      $
��Auto �6'   �� 5H      $
��Auto �6'   �� 5I      $
��Auto �6'    5K      �� 5L      $
��Auto �6$   �� 5M      $
��Auto �6$   �� 5N      $
��Auto �6$   .+�5Q      �� $��0��6   $��
Power (mW)��6,   $��70��6>   $��5q�6I   $��Center=�6T   $
��Bold"�6o   $  Xceed.Wpf.Toolkit.DoubleUpDown  5R      $��1��6$   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�64   $��1,5,1,5q�6@   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$ 1X�6u   $	��100��6�      Maximum 6Q   �� *ROI.WaferRadius+	   Value	 6�   �� *PowerSetpoint+
 �� Mode$
 TwoWay=�6�   ,   &UnitySC.Shared.UI.Controls.ImageButton  5S      $��2��6'   $��5,0,0,0q�67    	 Valid   Image# [ 6H   $��Apply��6g   $	��100��6�   ��6w   �� *ApplyPowerCommand+6�   �� 5U      $��0��6   $��1��6,   $��Current (%)��69   $��70��6L   $��5q�6W   $��Center=�6b   $
��Bold"�6}     5V      $��1��6$   $��1��64   $ 0X�6A   $��1,5,1,5q�6M   $ 1X�6�   $	��110��6�    6^   �� *ROI.WaferRadius+	 6�   �� *CurrentSetpoint+$
 TwoWay=�6�     5W      $��2��6'   $��1��67   $��5,0,0,0q�6D   # [ 6U   $��Apply��6t   $	��100��6�   ��6�   �� *ApplyCurrentCommand+6�     5Y      $��0��6'   $��2��67   $��2q�6D     Play# [ 6O   $��Turn on��6m   ��6   �� *PowerOnCommand+  5Z      $��1��6(   $��2��68   $��2q�6E     Stop# [ 6P   $��Turn off��6n   ��6�   �� *PowerOffCommand+5[      5\        5]   
     Comment# [ 6!   $��Custom command��6B   $��2��6Z   $��2��6g   $��1,0.736,1.301,1.038q�6{   .��5^      � $��1��6    5_      �� 5`      $
��Auto �6$   �� 5a      $
��Auto �6$    5c      �� 5d      $
��Auto �6'   �� 5e      $
��Auto �6'   .+�5g      �� $��0��6   
���   �$��1q�6:   $��0,2,5,2q�6O   $��Center=�6`   ._�5h      �� $	��300��69   $
��Left=�6E   $��Center=�6`   ��6   �� *	CustomTxt+6`   5i        5j      $��0��6'   $��1��64   # [ 6D   $
��Send��6c   ��6r   �� *CustomCommand+�� 5l      $��1��6   $��2��6'   $��0,3,0,0q�6;    �� TextWrapping$
 Wrap=�6L    �� AcceptsReturn . $ �� HorizontalScrollBarVisibility$ Disabled=�6u   " �� VerticalScrollBarVisibility$
 Auto=�6�   $��80��6�   ��6�   �� *	GetCustom+5m      5n      5o      5p      
   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      * &UnitySC.PM.Shared.Hardware.ClientProxy:   4UnitySC.PM.Shared.Hardware.ClientProxy.Mppc.MppcView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      RcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   .   (UnitySC.Shared.UI.Controls.ImageGroupBox     Info   Image# [  6!   $
��Info��6?   $��0��6M   .��5      �  � ColumnDefinitions 5      �� 5      $	��110 �6'   �� 5      $
��Auto �6'   �� 5      $��* �6'   �� 5       $	��110 �6'   �� 5!      $
��Auto �6'   �� 5"      $��* �6'   �� 5#      $	��110 �6'   �� 5$      $
��Auto �6'    5&      �� 5'      $
��Auto �6$   �� 5(      $
��Auto �6$   �� 5)      $
��Auto �6$   .+�5+      �� $��0��6   $��0��6,   $
��Name��69   $��Center=�6E   $��0,0,5,0q�6`   6s   �� 5,      $��1��6   $��0��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *Name+6y   �� 5-      $��3��6   $��0��6,   $��Serial number��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 5.      $��4��6   $��0��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *GetId+6z   �� 5/      $��6��6   $��0��6,   $��Status��69   $��Center=�6G   $��0,0,5,0q�6b   6u   �� 50      $��7��6   $��0��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *State+6z   �� 52      $��0��6   $��1��6,   $��Voltage stability��69   $��Center=�6R   $��0,0,5,0q�6m   6�   �� 53      $��1��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *GetVoltageStabilityStatus+6�   �� 54      $��3��6   $��1��6,   $��Firmware information��69   $��Center=�6U   $��0,0,5,0q�6p   6�   �� 55      $��4��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *GetFirmware+6�   �� 57      $��0��6   $��2��6,   $��Output voltage��69   $��Center=�6O   $��0,0,5,0q�6j   6}   �� 58      $��1��6   $��2��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *GetOutputVoltage+6�   �� 59      $��3��6   $��2��6,   $��Output current��69   $��Center=�6O   $��0,0,5,0q�6j   6}   �� 5:      $��4��6   $��2��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *GetOutputCurrent+6�   �� 5;      $��6��6   $��2��6,   $��Temperature��69   $��Center=�6L   $��0,0,5,0q�6g   6z   �� 5<      $��7��6   $��2��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *GetTemperature+6�   5=      5>        5?   
     Running# [ 6!   $��
Management��6B   $��1��6V   .��5@      �  5A      �� 5B      $
��Auto �6'   �� 5C      $
��Auto �6'   �� 5D      $��* �6'   �� 5E      $
��Auto �6'    5G      �� 5H      $
��Auto �6$   .+�5K      ,   &UnitySC.Shared.UI.Controls.ImageButton  $��0��6'   $��5��67   $��2q�6D     Play   Image# [ 6O   $��
Voltage on��6m   ��6�   �� *OutputVoltageOn+  5L      $��1��6(   $��5��68   $��2q�6E     Stop# [ 6P   $��Voltage off��6n   ��6�   �� *OutputVoltageOff+5M      5N        5O   
     Setting# [ 6!   $
��Gain��6B   $��2��6P   .��5P      �  5Q      �� 5R      $
��Auto �6'   �� 5S      $
��Auto �6'   �� 5T      $��* �6'   �� 5U      $
��Auto �6'    5W      �� 5X      $
��Auto �6$   �� 5Y      $
��Auto �6$   �� 5Z      $
��Auto �6$   �� 5[      $
��Auto �6$   .+�5^      �� $��0��6   $��0��6,   $��Reference voltage��69   $��5q�6S   $��Center=�6^   $
��Bold"�6y   $  Xceed.Wpf.Toolkit.DoubleUpDown  5_      $��1��6$   $��0��64   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�6A   $��1,5,1,5q�6M   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$ 10X�6�   $	��100��6�   	   Maximum	 6^   �� *ROI.WaferRadius+
   Value
 6�   �� *ROI.EdgeExclusion+ �� Mode$ TwoWay=�6�   �� 5`      $��2��6   $��0��6,   $��V��69   $��70��6B   $��5q�6M   $��Center=�6X   $
��Left=�6s     5a      $��3��6'   $��0��67   $��5,0,0,0q�6D    	 Valid# [ 6U   $��Apply��6t   $	��100��6�   ��6�   �� *ApplyExposureTimeCommand+6�   �� 5c      $��0��6   $��1��6,   $��Reference temperature��69   $��5q�6W   $��Center=�6b   $
��Bold"�6}     5d      $��1��6$   $��1��64   $ 0X�6A   $��1,5,1,5q�6M   $ 10X�6�   $	��100��6�   	 6^   �� *ROI.WaferRadius+
 6�   �� *ROI.EdgeExclusion+$ TwoWay=�6�   �� 5e      $��2��6   $��1��6,   $��deg C��69   $��70��6F   $��5q�6Q   $��Center=�6\   $
��Left=�6w   �� 5g      $��0��6   $��2��6,   $+��%Temperature coefficient (Hight temp.)��69   $��5q�6f   $��Center=�6q   $
��Bold"�6�     5h      $��1��6$   $��2��64   $ 0X�6A   $��1,5,1,5q�6M   $ 10X�6�   $	��100��6�   	 6^   �� *ROI.WaferRadius+
 6�   �� *ROI.EdgeExclusion+$ TwoWay=�6�   �� 5i      $��2��6   $��2��6,   $��mV/deg C��69   $��70��6I   $��5q�6T   $��Center=�6_   $
��Left=�6z   �� 5k      $��0��6   $��3��6,   $)��#Temperature coefficient (Low temp.)��69   $��5q�6d   $��Center=�6o   $
��Bold"�6�     5l      $��1��6$   $��3��64   $ 0X�6A   $��1,5,1,5q�6M   $ 10X�6�   $	��100��6�   	 6^   �� *ROI.WaferRadius+
 6�   �� *ROI.EdgeExclusion+$ TwoWay=�6�   �� 5m      $��2��6   $��3��6,   $��mV/deg C��69   $��70��6I   $��5q�6T   $��Center=�6_   $
��Left=�6z   5n      5o      5p      5q      
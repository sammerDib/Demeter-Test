   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      a ]UnitySC.PM.Shared.Hardware.ClientProxy, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null�Fclr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.OpticalPowermeter8UnitySC.PM.Shared.Hardware.ClientProxy.OpticalPowermeter 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 6c   T   NUnitySC.PM.Shared.Hardware.ClientProxy.OpticalPowermeter.OpticalPowermeterView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      RlocalFclr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.OpticalPowermeter  5      3system&clr-namespace:System;assembly=mscorlib  6c     � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   .   (UnitySC.Shared.UI.Controls.ImageGroupBox     Info   Image# [  6!   $
��Info��6?   $��0��6M   .��5      �  � ColumnDefinitions 5      �� 5      $��95 �6'   �� 5       $
��Auto �6'   �� 5!      $��* �6'   �� 5"      $��95 �6'   �� 5#      $
��Auto �6'   �� 5$      $��* �6'   �� 5%      $��95 �6'   �� 5&      $
��Auto �6'    5(      �� 5)      $
��Auto �6$   �� 5*      $
��Auto �6$   �� 5+      $
��Auto �6$   .+�5-      �� $��0��6   $��0��6,   $
��Name��69   $��Center=�6E   $��0,0,5,0q�6`   6s   �� 5.      $��1��6   $��0��6*   $	��0,2q�67   $	��160��6D   {�.  ��6P   �� *
DeviceName+6�   �� 5/      $��3��6   $��0��6,   $��Serial number��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 50      $��4��6   $��0��6*   $	��0,2q�67   $	��160��6D   {�.  ��6P   �� *GetId+6{   �� 51      $��6��6   $��0��6,   $��Status��69   $��Center=�6G   $��0,0,5,0q�6b   6u   �� 52      $��7��6   $��0��6*   $	��0,2q�67   $	��160��6D   {�.  ��6P   �� *Status+6|   �� 54      $��0��6   $��1��6,   $��
Wavelength��69   $��Center=�6K   $��0,0,5,0q�6f   6y   �� 55      $��1��6   $��1��6*   $	��0,2q�67   $	��160��6D   {�.  ��6P   �� *GetWavelength+6�   �� 56      $��3��6   $��1��6,   $��Beam diameter��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 57      $��4��6   $��1��6*   $	��0,2q�67   $	��160��6D   {�.  ��6P   �� *GetBeamDiameter+6�   �� 58      $��6��6   $��1��6,   $��Wavelength range��69   $��Center=�6Q   $��0,0,5,0q�6l   6   �� 59      $��7��6   $��1��6*   $	��0,2q�67   $	��160��6D   {�.  ��6P   �� *GetWavelengthRange+6�   5:      5;        5<   
     Running# [ 6!   $��Measurement��6B   $��1��6W   .��5=      �  5>      �� 5?      $	��110 �6'   �� 5@      $
��Auto �6'   �� 5A      $��2* �6'   �� 5B      $	��110 �6'   �� 5C      $
��Auto �6'   �� 5D      $��2* �6'   �� 5E      $	��110 �6'   �� 5F      $
��Auto �6'   �� 5G      $��1* �6'    5I      �� 5J      $
��Auto �6$   �� 5K      $
��Auto �6$   �� 5L      $
��Auto �6$   .+�5O      �� $��0��6   $��0��6,   $��Power��69   $��Center=�6F   $��0,0,5,0q�6a   6t   �� 5P      $��1��6   $��0��6*   $	��0,2q�67   $��80��6D   {�.  ��6O   �� *Power+6z   �� 5Q      $��2��6   $��0��6,   $��W��69   $��Center=�6B   $��5,0,5,0q�6]   6p   �� 5R      $��3��6   $��0��6,   $��Maximum power��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 5S      $��4��6   $��0��6*   $	��0,2q�67   $��80��6D   {�.  ��6O   �� *GetMaximumPower+6�   �� 5T      $��5��6   $��0��6,   $��W��69   $��Center=�6B   $��5,0,5,0q�6]   6p   �� 5U      $��6��6   $��0��6,   $��Minimum power��69   $��Center=�6N   $��0,0,5,0q�6i   6|   �� 5V      $��7��6   $��0��6*   $	��0,2q�67   $��80��6D   {�.  ��6O   �� *GetMinimumPower+6�   �� 5W      $��8��6   $��0��6,   $��W��69   $��Center=�6B   $��5,0,5,0q�6]   6p   5Y      5Z        5[   
     Setting# [ 6!   $��Settings��6B   $��2��6T   .��5\      �  5]      �� 5^      $��* �6'   �� 5_      $��* �6'   �� 5`      $��* �6'    5b      �� 5c      $
��Auto �6$   �� 5d      $
��Auto �6$   �� 5e      $
��Auto �6$   .+�5h      �� $��0��6   $��0��6,   $��
Wavelength��69   $��5q�6K   $��Center=�6V   $
��Bold"�6q   �� 5i      $��0��6   $��1��6+   $��0,2,10,2q�68   {�.  ��6J   �� *Wavelengths+ �� SelectedValue 6n   �� *
Wavelength+6�   �� 5k      $��1��6   $��0��6,   $��Beam diameter��69   $��5q�6N   $��Center=�6Y   $
��Bold"�6t   �� 5l      $��1��6   $��1��6+   $��0,2,10,2q�68   {�.  ��6J   �� *BeamDiameters+ 6p   �� *BeamDiameter+6�   �� 5n      $��2��6   $��0��6,   $��Ranges��69   $��5q�6G   $��Center=�6R   $
��Bold"�6m   �� 5o      $��2��6   $��1��6+   $��0,2,10,2q�68   {�.  ��6J   �� *PhasePeriods1+ 6p   �� *PhasePeriod1+6�   �� 5p      -   5         ��Name$ roiShowButton��5p   8   $��2��6   $��2��6+   $��
Auto range��6O   $��Center=�6d    d� 	IsChecked$
 TrueY�6   {�.  6�   5r      5s        5t   
     Comment# [ 6!   $��Custom command��6B   $��3��6Z   .��5u      � $��1��6    5v      �� 5w      $
��Auto �6$   �� 5x      $
��Auto �6$    5z      �� 5{      $
��Auto �6'   �� 5|      $
��Auto �6'   .+�5~      �� $��0��6   
���   �$��1q�6:   $��0,2,5,2q�6O   $��Center=�6`   ._�5      �� $	��300��69   $
��Left=�6E   $��Center=�6`   ��6   �� *	CustomTxt+6`   5�      ,   &UnitySC.Shared.UI.Controls.ImageButton  5�      $��0��6'   $��1��64    	 Valid	   Image#	 [ 6D   $
��Send��6c   ��6r   �� *CustomCommand+�� 5�      $��1��6   $��2��6'   $��0,1.396,-0.849,1.925q�6;   
 �� TextWrapping$

 Wrap=�6Y    �� AcceptsReturn . $ �� HorizontalScrollBarVisibility$ Disabled=�6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   $��80��6�   ��6�   �� *	Customs+5�      5�      5�      5�      
   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      a ]UnitySC.PM.Shared.Hardware.ClientProxy, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullo<clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Shutter.UnitySC.PM.Shared.Hardware.ClientProxy.Shutter 5      @   :UnitySC.PM.Shared.Hardware.ClientProxy.Shutter.ShutterView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      Hlocal<clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Shutter  5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   .   (UnitySC.Shared.UI.Controls.ImageGroupBox     Info   Image# [  6!   $
��Info��6?   $��0��6M   .��5      �  � ColumnDefinitions 5      �� 5      $	��110 �6'   �� 5      $
��Auto �6'   �� 5      $��* �6'   �� 5       $	��110 �6'   �� 5!      $
��Auto �6'   �� 5"      $��* �6'   �� 5#      $	��110 �6'   �� 5$      $
��Auto �6'    5&      �� 5'      $
��Auto �6$   �� 5(      $
��Auto �6$   �� 5)      $
��Auto �6$   .+�5+      �� $��0��6   $��0��6,   $
��Name��69   $��Center=�6E   $��0,0,5,0q�6`   6s   �� 5,      $��1��6   $��0��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *Name+6y   �� 5-      $��3��6   $��0��6,   $��Status��69   $��Center=�6G   $��0,0,5,0q�6b   6u   �� 5.      $��4��6   $��0��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *State+6z   �� 50      $��0��6   $��1��6,   $��Shutter iris position��69   $��Center=�6V   $��0,0,5,0q�6q   6�   �� 51      $��1��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *ShutterIrisPosition+6�   �� 52      $��3��6   $��1��6,   $��Pulse width��69   $��Center=�6L   $��0,0,5,0q�6g   6z   �� 53      $��4��6   $��1��6*   $	��0,2q�67   $��60��6D   {�.  ��6O   �� *CamMireSizeX+6�   54      55        56   
     Running# [ 6!   $��
Management��6B   $��1��6V   .��57      �  58      �� 59      $
��Auto �6'   �� 5:      $
��Auto �6'   �� 5;      $
��Auto �6'    5=      �� 5>      $
��Auto �6$   �� 5?      $
��Auto �6$   .+�5B      ,   &UnitySC.Shared.UI.Controls.ImageButton  $��0��6'   $��0��67   $��2q�6D     ConnectionOk   Image# [ 6O   $
��Open��6u   ��6�   �� *OpenShutterCommand+  5C      $��1��6(   $��0��68   $��2q�6E     ConnectionKo# [ 6P   $��Close��6v   ��6�   �� *CloseShutterCommand+5D      5E      5F      5G      
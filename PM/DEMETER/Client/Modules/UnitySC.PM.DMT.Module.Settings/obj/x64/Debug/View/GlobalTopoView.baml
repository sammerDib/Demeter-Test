   M S B A M L   `   `   `  ����R  NUnitySC.PM.DMT.CommonUI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null�\clr-namespace:UnitySC.PM.DMT.CommonUI.View.ExposureSettings;assembly=UnitySC.PM.DMT.CommonUI-UnitySC.PM.DMT.CommonUI.View.ExposureSettings  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null|Pclr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage;assembly=UnitySC.Shared.UI'UnitySC.Shared.UI.Controls.ZoomboxImage 5      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5	      # UnitySC.PM.DMT.Modules.Settings9   3UnitySC.PM.DMT.Modules.Settings.View.GlobalTopoView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      sexposuresettings\clr-namespace:UnitySC.PM.DMT.CommonUI.View.ExposureSettings;assembly=UnitySC.PM.DMT.CommonUI  5      YzbPclr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage;assembly=UnitySC.Shared.UI  5      XsharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5	        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6   .+�5   
   �� $
��Auto=�6   .��5      �� .+�5      �� $��16(�6   '%Place a calibration wafer in the tool6Q   .  (UnitySC.Shared.UI.Controls.ImageGroupBox  5      $��Screen Control��6/      ScreenSolidGeometry   ImageGeometry# [  6G     
IconsColor   ImageGeometryBrush# [ 6|   $��0,10,0,0q�6�   .��5       ��  �� Orientation$ Vertical=�6!   $	��5,0q�68   .+�5!      �� $��0,0,0,5q�6$   1/Control screen color to assist machine handling6f   � 5"       � RowDefinitions 5#      �� 5$   "   $��* �60   �� 5%   "   $
��Auto �60   �� 5&   "   $
��Auto �60   .+�5(      ,  &UnitySC.Shared.UI.Controls.ImageButton  $��1��69   $��Display white��6F   $
��0,10q�6   ��6^   �� *DisplayWhite+6     5)      $��2��69   $��Display black��6F   $
��0,10q�6   ��6^   �� *DisplayBlack+6   5*      5+      5,      L   FUnitySC.PM.DMT.CommonUI.View.ExposureSettings.ExposureSettingsWithAuto  5-         DisplayApplyButton .  	 � DataContext	 6<   �� *ExposureSettings+6�     5/      $��Camera Calibration��6/     CameraGeometry# [ 6K   # [ 6{   $��0,10,0,0q�6�   $	��400��6�   .��50      �  51      �� 52      $��* �6,   �� 53      $
��Auto �6,   �� 54      $
��Auto �6,   �� 55      $
��Auto �6,   .+�57      �� $
��Auto=�6'   .��58      �� $��Stretch=�6X   $��0q�6}   $	��5,0q�6�   $
��Auto=�6�   ��6+   �� *CamCalibAcquisitions+��59   "   �� 5:   &   .R�5;   *   � $��0,0,0,0q�6/    5<   .   �� 5=   2   $
��Auto �6C   �� 5>   2   $��* �6C   �� 5?   2   $��50 �6C   .+�5A   .   �� $��Center=�6�   
 d� 	IsChecked
 67   �� *
IsAcquired+��6X   �� *!DataContext.RemoveCamCalibImage+ �� RelativeSource ��  �� AncestorType$ ItemsControlL���6�   �� {�6�   ��  �� Path$ 
IsAcquired�6'  �� 5B   .   $��1��68   $	��5,0q�6H   $��Center=�6l   ��6V   �� *Name+6l     5C   .   $��2��6I   $��50��6�     AcquireImageGeometry   ImageGeometry# [ 6�   $��0q�6(     ImageGeometryBrush# [ 64  $��Center=�6e  $	��0,2q�6�  ��6Y   �� *" DataContext.AcquireCamCalibImage+ �� $ ItemsControlL���6�   �� 6�  5D   +   5E   '   5G      5H        5I      $��2��65   $��Save Calibration Backup��6B   $
��5,10q�6�     PlayGeometry# [ 6�   
 � � ���6d   �� *SaveCameraCalibrationBackup+6�     5J      $��3��65   $��Calibrate Camera��6B   $
��5,10q�6�   # [ 6�   
 � � ���6]   �� *ExecuteCalibrationCam+6�   5K      5L        5N      $��System Calibration��6/     GearGeometry# [ 6K   # [ 6y   $��0,10,0,0q�6�   .��5O      �� $ Vertical=�6!   $	��5,0q�68   .+�5P      �� $��0,0,0,5q�6$   (&Place the wafer in a standard position6]   �� 5Q      	Periods6-   �� 5R       J� IsHitTestVisible .  ��6"   �� *	Periods+5S      � 5T       5U      �� 5V   "   $��* �60   �� 5W   "   $
��Auto �60   �� 5X   "   $
��Auto �60   .+�5Z        $��1��69   $��Save Calibration Backup��6F   $
��0,10q�6�   # [ 6�   
 � � ���6h   �� *SaveSystemCalibrationBackup+6�     5[      $��2��69   $��Calibrate System��6F   $
��0,10q�6�   # [ 6�   
 � � ���6a   �� *ExecuteCalibrationSys+6�   5\      5]      5^      5_      5`      :  4UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxImage  5a   
   $��1��6D   $��5q�6T      ImageSource 6   �� *LastAcquiredImage+6T   %  Xceed.Wpf.Toolkit.BusyIndicator  5b   
   $��2��6m      IsBusy 6   �� *IsBusy+   BusyContent 6I   �� *BusyMessage+6m   5c      5d      
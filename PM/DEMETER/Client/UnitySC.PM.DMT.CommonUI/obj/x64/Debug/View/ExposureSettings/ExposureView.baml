   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      [ WUnitySC.PM.DMT.Service.Interface, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null�eclr-namespace:UnitySC.PM.DMT.Service.Interface.AutoExposure;assembly=UnitySC.PM.DMT.Service.Interface-UnitySC.PM.DMT.Service.Interface.AutoExposure 5       UnitySC.PM.DMT.CommonUI@   :UnitySC.PM.DMT.CommonUI.View.ExposureSettings.ExposureView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ^sharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      ydmtEnumeclr-namespace:UnitySC.PM.DMT.Service.Interface.AutoExposure;assembly=UnitySC.PM.DMT.Service.Interface     5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $% ../../ResourcesDictionnary.xaml?�6%   %    5      .��5      .   (UnitySC.Shared.UI.Controls.ImageGroupBox  $��Exposure��6#      LapTimerGeometry   ImageGeometry# [  65     
IconsColor   ImageGeometryBrush# [ 6g   $��0q�6�   .��5   
   �  � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $��* �6#    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      	� -   5         	�Name$ radio1��5      $��0��6*    	� 	GroupName$ Trigger��68   $/��)Auto Exposure on the first wafer of a lot��6L   $��5q�6�   $��Center=�5   �   	 d� 	IsChecked	 6   �� 
 �� Path$
 AutoExposureTimeTrigger�  EnumToBooleanConverter �� 	Converter# [ K  EUnitySC.PM.DMT.Service.Interface.AutoExposure.AutoExposureTimeTrigger   OnFirstWaferOfLot �� ConverterParameter# Z 6�   	� 5       -   5        $ radio2��5       $��1��6*   $ Trigger��67   $"��Auto Exposure for each wafer��6K   $��5q�6r   $��Center=�5!   �   	 6   �� $
 AutoExposureTimeTrigger�# [    
OnAllWafer# Z 6�   	� 5"      -   5        $ 
radioNever��5"      $��2��6.   $ Trigger��6;   $��Manual Exposure��6O   $��5q�6i   $��Center=�5#   �   	 6   �� $
 AutoExposureTimeTrigger�# [    Never# Z 6�   �� 5%      $
��Tune��6   $
��10,0q�6$   $��1��62   $	��200��6B   $��ROI Definition��6z   $
��Left=�6  $��Center=�6*  ��6N   �� *TuneExposureTimeCommand+y�6�   ��  �� ElementName$ radio1��$
 	IsChecked�   BooleanToVisibilityConverter# [ 6*  �� 5&      $
��Tune��6   $
��10,0q�6$   $��1��62   $��1��6B   $	��200��6O   $��ROI Definition��6�   $
��Left=�6  $��Center=�67  ��6[   �� *TuneExposureTimeCommand+y�6�   �� $ radio2��$
 	IsChecked�# [ 67  �� 5(      $��1��6�   $��2��6�    �� Orientation$ 
Horizontal=�6�   $��Center=�6�   y�6   �� $ 
radioNever��$
 	IsChecked�# [ .+�5+      -   'UnitySC.Shared.UI.Controls.DoubleUpDown  �   �UnitySC.Shared.UI.Controls.NumericUpDown`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 1Q�6.      Maximum$ 10000Q�6:      Step$ 1Q�6J   $	��150��6S     DoubleUpDownDMTStyle#��[ 6�      Unit$ ms��6�      Value 6_   �� *ExposureTimeMs+ �� StringFormat$ {0:F1}��6�   �� 5,      $
��Tune��6   $	��100��6(   $
��10,0q�64   $��Manual Exposure Time��6n   ��6B   �� *TuneExposureTimeCommand+6n   �� 5-        Warning#��[ 6    � ToolTip$% Manual exposure should be tuned��6�   y�6:   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" >�$
 IsManualTuneNeeded�# [ 6$  5.      �� 5/      $��3��6   $ 
Horizontal=�6&   $��10,5,0,0q�6?   y�50      �� $ 
 IsTargetSaturationEditable�# [ .+�53      ��   	LabelForm#��[ 6   $��Illumination target��6;   �� 54      ��6   �� *AutoExposureTargetSaturation+55      56      57      58      
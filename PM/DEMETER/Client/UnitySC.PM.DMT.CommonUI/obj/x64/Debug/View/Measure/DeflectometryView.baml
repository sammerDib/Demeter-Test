   M S B A M L   `   `   `  ����R  NUnitySC.PM.DMT.CommonUI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullm;clr-namespace:UnitySC.PM.DMT.CommonUI.View.ExposureSettings-UnitySC.PM.DMT.CommonUI.View.ExposureSettings  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      fEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters 5      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5	      [ WUnitySC.PM.DMT.Service.Interface, Version=1.2.6.0, Culture=neutral, PublicKeyToken=null�hclr-namespace:UnitySC.PM.DMT.Service.Interface.Measure.Outputs;assembly=UnitySC.PM.DMT.Service.Interface0UnitySC.PM.DMT.Service.Interface.Measure.Outputs 5      e7clr-namespace:UnitySC.PM.DMT.CommonUI.ViewModel.Measure)UnitySC.PM.DMT.CommonUI.ViewModel.Measure  5      <    6UnitySC.PM.DMT.CommonUI.View.Measure.DeflectometryView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Lexpo;clr-namespace:UnitySC.PM.DMT.CommonUI.View.ExposureSettings     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      \
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI     5      ^sharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5	      |dmtEnumhclr-namespace:UnitySC.PM.DMT.Service.Interface.Measure.Outputs;assembly=UnitySC.PM.DMT.Service.Interface     5      PvmConverters7clr-namespace:UnitySC.PM.DMT.CommonUI.ViewModel.Measure     5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $% ../../ResourcesDictionnary.xaml?�6%   %    5      .��5      �� $
��Auto=�6   $
��Auto=�68   .��5   
   �    FormGrid#��[  6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5       $
��Auto �6    �� 5!      $
��Auto �6    .+�5%      .  (UnitySC.Shared.UI.Controls.ImageGroupBox  $��Outputs��6+     ImageGeometry   ImageGeometry# [ 6<     
IconsColor   ImageGeometryBrush# [ 5&   +   $��0,0,0,5q�6\   .��5'      ��  �� Orientation$ 
Horizontal=�6   .+�5(      �� -   5         ��Name$ CurvatureCheckBox��5(      $��	Curvature��6:    d� 	IsChecked 5)      �� 	 �� Path$@	 :Outputs[(dmtEnum:DeflectometryOutput)Curvature].IsSelected�y�5*      �� $A	 ;Outputs[(dmtEnum:DeflectometryOutput)Curvature].IsAvailable�   BooleanToVisibilityConverter
 �� 	Converter#
 [ �� 5+      $��	Amplitude��6   $��10,0,0,0q�5-       5,      �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)Amplitude].IsSelected�y�5.      �� $A	 ;Outputs[(dmtEnum:DeflectometryOutput)Amplitude].IsAvailable�#
 [ �� 5/      $��
Phase maps��6    � ToolTip$ Unwrapped Phases��64   $��10,0,0,0q�52       50      �� $E	 ?Outputs[(dmtEnum:DeflectometryOutput)UnwrappedPhase].IsSelected�y�51      �� $F	 @Outputs[(dmtEnum:DeflectometryOutput)UnwrappedPhase].IsAvailable�#
 [ 52      �� 53      $��Global Topo��6   $��Center=�55      $��10,0,0,0q�57       54      �� $A	 ;Outputs[(dmtEnum:DeflectometryOutput)GlobalTopo].IsSelected�y�56      �� $B	 <Outputs[(dmtEnum:DeflectometryOutput)GlobalTopo].IsAvailable�#
 [ 57      �� 58      $��	Nano topo��6   $��Center=�5:      $��10,0,0,0q�5<       59      �� $?	 9Outputs[(dmtEnum:DeflectometryOutput)NanoTopo].IsSelected�y�5;      �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)NanoTopo].IsAvailable�#
 [ 5<      �� 5=      $��Low angle dark-field��6   $��Center=�5?      $��10,0,0,0q�5A       5>      �� $H	 BOutputs[(dmtEnum:DeflectometryOutput)LowAngleDarkField].IsSelected�y�5@      �� $I	 COutputs[(dmtEnum:DeflectometryOutput)LowAngleDarkField].IsAvailable�#
 [ 5A      �� 5B      $ 
Horizontal=�6!   y�5C   !   �� $A	 ;Outputs[(dmtEnum:DeflectometryOutput)RawImages].IsAvailable�#
 [ .+�5D      �� #��["�6$   $
��10,0q�6b   �� 5E      $��Additional outputs��6$   �� 5F      $	��Raw��6#   $��Center=�5H   #   $��Bottom=�6>   $��10,0,0,0q�6`    5G   #   �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)RawImages].IsSelected�5H   `   5I      5J      5K        5M      $��Fringes��6+     FringesGeometry# [ 6<   # [ 5N   +   $��1��6\   $��0,0,0,5q�5O   +   .��5P      �� .+�5R      � y�6   �� *NeedMultiPeriod+
 G  AUnitySC.Shared.UI.Converters.InvertedBooleanToVisibilityConverter   �� FallbackValue$ 	Collapsed�� � ColumnDefinitions 5S      �� 5T      $
��Auto �6/   �� 5U      $
��Auto �6/   �� 5V      $
��Auto �6/   �� 5W      $��* �6/    5Y      �� 5Z      $
��Auto �6,   �� 5[      $
��Auto �6,   �� 5\      $
��Auto �6,   �� 5]      $
��Auto �6,   �� 5^      $
��Auto �6,   �� 5_      $
��Auto �6,   .+�5c      �� $��1��6$   $��Slope sensitivity��61   $	��Top=�6J   +  %UnitySC.Shared.UI.Controls.TextSlider  5d      $��1��6.   $��1��6;    � Minimum$ 0Q�6l    �� TickFrequency$ 1Q�5g   .    �� TickPlacement$ BottomRight=�6@   $	��300��6\    � Value 5d   K   �� *SlopePrecision+ � Maximum 5e   .   �� *MaxSlopePrecision+   TickText 5f   .   �� *SlopePrecisionTickText+{�5h   .   �� *	IsChecked+ �� ElementName$ isCustom��  InvertedBooleanConverter#
 [ �� 5k      $��Phase shift precision��6$   $��2��6A   $	��Top=�6N     5l      $��2��6.   $��1��6;   $ 0Q�5m   .   $ 1Q�5o   .   $ BottomRight=�6@   $	��300��6\    5l   K   �� *PhaseShiftPrecision+ 5m   :   �� *MaxPhaseShiftPrecision+ 5n   .   �� *PhaseShiftPrecisionTickText+{�5p   .   �� *	IsChecked+$ isCustom��#
 [ �� 5s      $��Period (pixels):��6$   $��1��6<   $��2��6I   $	��Top=�6Y   $��Right=�5t   $   $��Normal"�6@   �� 5u      $��1��6<   $��3��6I   $	��Top=�6Y   ��6$   �� *Period+6Y   �� 5v      $��Images per direction:��6$   $��2��6A   $��2��6N   $	��Top=�6^   $��Normal"�5w   $   $��Right=�68   �� 5x      $��2��6R   $��3��6_   $	��Top=�5y   $   ��5x   $   �� *StandardNbImagesPerDirection+5y   $   5z      � 5}      $��
0, 0, 0, 5q�5      y�5~      �� *NeedMultiPeriod+#
 [  5�      �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/    5�      �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   .+�5�      �� $��0��6$   $��0��61   $��Slope sensitivity��6A   $	��Top=�6Z   $��4, 0, 4, 15q�6r     5�      $��0��6.   $��1��6;   $	��300��6K   $ 0Q�5�   .   $ BottomRight=�5�   _    �� IsSnapToTickEnabled . $ 1Q�5�   .   $��5, 0, 5, 15q�6@    5�   Z   �� *MultiSlopePrecisionIndex+ 5�   :   �� *MultiSlopePrecisionList.Count+
 4  .UnitySC.Shared.UI.Converters.MinusOneConverter   5�   .   �� *MultiSlopePrecisionTickText+5�   @   �� 5�      $��0��6$   $��2��61   $ ��Smallest period (pixels): ��6A   $��Normal"�6c   $��Right=�5�   $   $	��Top=�6@   $��4, 0, 4, 15q�6X   �� 5�      $��0��6$   $��3��61   $	��Top=�6A   $��4, 0, 4, 15q�6~   ��6Y   �� *MultiSlopePrecision+6~   �� 5�      $��1��6$   $��0��61   $��4��6A   $��10, 10, 10, 0q�6U   �� 5�      $��2��6$   $��0��61   $��Unwrapping periods ratio��6A   $	��Top=�6a   $��4, 10, 4, 10q�6y     5�      $��2��6.   $��1��6;   $	��300��6K   $ 0Q�6Z   $ 1Q�5�   Q   $ BottomRight=�5�   .    . $��5, 10q�5�   .    5�   .   �� *AvailablePeriods.Count+
    5�   .   �� *MultiPeriodIndex+ 6c   �� *MultiPeriodRatioTickText+5�   .   �� 5�      $ Vertical=�6%   $��2��6<   $��2��6I   $��0, 10, 0, 10q�6Y   .+�5�      �� $��Periods (pixels): ��6(   $��Normal"�6B   $��Right=�6V   $	��Top=�6r   �� 5�      $��Period ratio: ��6(   $��Normal"�6>   $��Right=�6R   $	��Top=�6n   5�      �� 5�      $ Vertical=�6%   $��2��6<   $��3��6I   $��0, 10, 0, 10q�6Y   .+�5�      �� $	��Top=�6A   $
��Bold"�6Y   ��6(   �� *	Periods+6Y   �� 5�      $	��Top=�6J   ��6(   �� *MultiPeriodRatio+6J   5�      �� 5�      $��3��6$   $��0��61   $��4��6A   $��10, 0q�6U   �� 5�      $��4��6$   $��0��61   $��Phase shift precision��6A   $	��Top=�6^   $��4, 10q�6v     5�      $��4��6.   $��1��6;   $ 0Q�6K   $ 1Q�5�   ^   $ BottomRight=�5�   .    . $��5, 10q�6e    5�   W   �� *MaxPhaseShiftPrecision+ 5�   .   �� *MultiNbImagePerDirectionIndex+ 6p   �� *PhaseShiftPrecisionTickText+5�   e   �� 5�      $��4��6$   $��2��61   $��Images per direction: ��6A   $��Right=�6_   $��Normal"�5�   $   $	��Top=�68   $��4, 10q�6P   �� 5�      $��4��6$   $��3��61   $	��Top=�6A   $��4, 10q�6�   ��6Y   �� *MultiNbImagesPerDirection+6�   5�      5�      5�        5�      # [ 6+   # [ 5�   +   $��2��6\   $��0,0,0,5q�5�   +   y�5�      `� 5�       `� 	Converter 6#   A  ;UnitySC.Shared.UI.Converters.BooleanOrToVisibilityConverter  .1�5�      �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)Curvature].IsSelected�6"   �� 5�      $H	 BOutputs[(dmtEnum:DeflectometryOutput)LowAngleDarkField].IsSelected�6"   �� 5�      $E	 ?Outputs[(dmtEnum:DeflectometryOutput)UnwrappedPhase].IsSelected�6"   5�      ��5�      `� 5�       6#   ]  WUnitySC.PM.DMT.CommonUI.ViewModel.Measure.BooleanToCurvatureDarkDynamicsHeaderConverter  .1�5�      �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)Curvature].IsSelected�6"   �� 5�      $H	 BOutputs[(dmtEnum:DeflectometryOutput)LowAngleDarkField].IsSelected�6"   �� 5�      $E	 ?Outputs[(dmtEnum:DeflectometryOutput)UnwrappedPhase].IsSelected�6"   5�      .��5�      � {�5�      `� 5�       6'   5  /UnitySC.Shared.UI.Converters.BooleanOrConverter  .1�5�      �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)Curvature].IsSelected�6&   �� 5�      $H	 BOutputs[(dmtEnum:DeflectometryOutput)LowAngleDarkField].IsSelected�6&   �� 5�      $E	 ?Outputs[(dmtEnum:DeflectometryOutput)UnwrappedPhase].IsSelected�6&   5�      .+�5�      �  5�      �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/    5�      �� 5�      �� 5�      �� 5�      .+�5�      �� $ 
Horizontal=�6%   $��0��6>   $��0��6K   y�5�   %   �� $@	 :Outputs[(dmtEnum:DeflectometryOutput)Curvature].IsSelected�
 ?  9UnitySC.Shared.UI.Converters.BooleanToVisibilityConverter  .+�5�      �� $��Curvature dynamics:��6(   $
��Left=�6C   $��Center=�6^   $��Normal"�6y   �� 5�      $
��Left=�6J   $��Center=�5�   (   ��5�   (   �� *CurvatureDynamic+5�   (   5�      �� 5�      $ 
Horizontal=�6%   $��1��6>   $��0��6K   y�5�   %   �� $H	 BOutputs[(dmtEnum:DeflectometryOutput)LowAngleDarkField].IsSelected�
   .+�5�      �� $��Low-angle dark field:��6(   $
��Left=�6E   $��Center=�6`   $��Normal"�6{   �� 5�      $
��Left=�6E   $��Center=�5�   (   ��5�   (   �� *DarkDynamic+5�   (   5�      �� 5�      $ 
Horizontal=�6%   $��2��6>   $��0��6K   y�5�   %   �� $E	 ?Outputs[(dmtEnum:DeflectometryOutput)UnwrappedPhase].IsSelected�
   .+�5�      �� $��UnWrapped dynamics:��6(   $
��Left=�6C   $��Center=�6^   $��Normal"�6y   �� 5�      $
��Left=�6J   $��Center=�5�   (   ��5�   (   �� *UnWrappedDynamic+5�   (   5�      ,	  &UnitySC.Shared.UI.Controls.ImageButton	  5�      $��0��66   $��1��6C   $��3��6S     TargetGeometry 	  ImageGeometry# [ 5�   5    	  ImageGeometryBrush# [ 5�   5   $��Adjust��6f   ��5�   5   �� *AdjustCurvatureDynamicCommand+5�      5�      5�      @
   :UnitySC.PM.DMT.CommonUI.View.ExposureSettings.ExposureView
  5�      $��3��6     
  IsManualTuneNeeded 6-   �� *IsTuneExposureNeeded+  5�      $��5��6+     GearGeometry# [ 68   # [ 5�   +   $��Advanced Parameters��6\   $	��0 5q�5�   +   .��5�      �� $ 
Horizontal=�6   $��10 5 0 0q�66   .+�5�      ��  d� IsThreeState .  $%��Use enhanced deflectometry mask��64    5�      �� *UseEnhancedMask+{�6E   �� *CanUseEnhancedMask+�� 5�      $ 
Horizontal=�6!   y�5�   !   �� *CanUseEnhancedMask+
   .+�5�      	    WarningSolidGeometry# [ 6/    	 ImageWarningColor# [	 5�   /    
 ImageButtonWithoutBorder#��[
 5�   /   $��20��6a   �� 5�      $I��CEnhanced mask can only be used with a valid perspective calibration��6$   $��Normal"�5�   $   5�      5      5     5     5     5     
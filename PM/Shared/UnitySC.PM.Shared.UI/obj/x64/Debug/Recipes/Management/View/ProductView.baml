   M S B A M L   `   `   `  ����O  KUnitySC.PM.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullk:clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.View,UnitySC.PM.Shared.UI.Recipes.Management.View  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullfEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters 5      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5	      >    8UnitySC.PM.Shared.UI.Recipes.Management.View.ProductView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.View     5      \
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      6sys&clr-namespace:System;assembly=mscorlib     5	        � 	Resources  5       �� MergedDictionaries �� Source   	textWidth�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %%   &	        X�5      100Q�60   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ,  &UnitySC.Shared.UI.Controls.ImageButton  $��0��6   $	��120��6,     HighlightedImageButton#��[ 5       " HighlightButtonForegroundBrush   ImageGeometryRightBrush# [ 5        PlusCircleSolidGeometry   ImageGeometryRight# [ 5       $��Center=�5!      $��6q�5"      $
��Left=�5#      ��5      �� *	AddStep+.��5#   8   
Add step6B   .  (UnitySC.Shared.UI.Controls.ImageGroupBox  5%   
   $��1��6"     WaferGeometry   ImageGeometry# [ 6/     
IconsColor   ImageGeometryBrush# [ 6^     PanelBackgroundBrush#��[ 6�   $	��0,3q�6
  ��6�   �� *Name+ �� 	Converter :  4UnitySC.Shared.UI.Converters.ShowUnderscoreConverter  .��5&      �   FormGrid#��[ 6    5'      �� 5(      $
��Auto �6$   �� 5)      $
��Auto �6$   �� 5*      $��* �6$   �� 5+      $
��Auto �6$   �� 5,      $
��Auto �6$   .+�5.      �� $��0��6   	 �� Orientation$	 
Horizontal=�6*   $��4q�6C   .+�5/      �� #��[  6    $
��Name��6C   $��Normal"�6O   �� 50      $	��200��6Y   $
��Left=�6i   ��6   �� *Name+
 �� UpdateSourceTrigger$
 PropertyChanged=�6i   51      �� 52      $��1��6   $	 
Horizontal=�6*   $��4q�6C   .+�53      �� #��[  6    $��Wafer Category��6C   $��Normal"�6Y   �� 54      $
��Left=�6q   $	��200��6�   ��6   �� *WaferCategories+ �� SelectedItem 6G   �� *SelectedCategory+��55      �� 56      .R�57   "   �� ��6,   �� *Name+58      5:      5;      � 5<      $��2��6   $��4q�6$   .+�5=      (�  (� Stretch$ Uniform=�6   $��10q�60   $
��Left=�6<   .��5>      &   UnitySC.Shared.UI.Controls.Wafer     WaferDimentionalCharac 6)   �� *,*SelectedCategory.DimentionalCharacteristic+5?      5@      � 5A      $��3��6   $��4q�6$    � ColumnDefinitions 5B      �� 5C      $
��Auto �6+   �� 5D      $��* �6+   .+�5F      �� $��Comment��6    $	��Top=�6/   $��Normal"�6G   �� 5G      $��1��6    �� TextWrapping$
 Wrap=�6m    �� AcceptsReturn . $ �� HorizontalScrollBarVisibility$ Disabled=�6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   $	��150��6�   ��6.   �� *	Comment+$
 PropertyChanged=�6�   5H      � 5I      $��4��6     HeaderLeftBackgroundBrush#��[ 5J       5K      �� 5L      $
��Auto �6(   �� 5M      $
��Auto �6(    5O      �� 5P      $��* �6+   �� 5Q      $��* �6+   �� 5R      $��* �6+   .+�5T      �� $��3��6    $��5,5,10,0q�5V       
���  ��$��Right=�5X   5   ��5U       �� *ValidationErrorMessage+y�5W       �� *ValidationErrorMessage+ C  =UnitySC.Shared.UI.Converters.EmptyStringToVisibilityConverter  5X   S   �� 5Y      $��1��6    $��Center=�6.   $��	10,0,10,0q�6I   �� 5Z       �� Command 6$   �� *Cancel+.�6?   Cancel6G   5[      �� 5\      $��1��6   $��2��6*   $	��120��6:   $��0,0,40,0q�5]   )    	 HighlightedButton#��[	 5_   +   $��Center=�5`   +   $��Right=�5a   +   ��5^   +   �� *
Validate+.��5a   G   
VALIDATE6Q   5c      5d      5e      5f      5g      
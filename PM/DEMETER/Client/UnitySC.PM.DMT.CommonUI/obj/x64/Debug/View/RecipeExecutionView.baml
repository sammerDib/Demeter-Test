   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  5      |Pclr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage;assembly=UnitySC.Shared.UI'UnitySC.Shared.UI.Controls.ZoomboxImage  5      fEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters  5      R NUnitySC.PM.DMT.CommonUI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:UnitySC.PM.DMT.CommonUI.ViewModel!UnitySC.PM.DMT.CommonUI.ViewModel 5	      Z?clr-namespace:UnitySC.Shared.UI.Enum;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Enum  5
      6   0UnitySC.PM.DMT.CommonUI.View.RecipeExecutionView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ^sharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      _zbPclr-namespace:UnitySC.Shared.UI.Controls.ZoomboxImage;assembly=UnitySC.Shared.UI     5      \
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI     5      >vm/clr-namespace:UnitySC.PM.DMT.CommonUI.ViewModel     5	      U	transEnum?clr-namespace:UnitySC.Shared.UI.Enum;assembly=UnitySC.Shared.UI     5
      
�������  � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $" ../ResourcesDictionnary.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��1��6    �� CornerRadius$ 2,2,5,5��6   $��1,1,1,1q�65      PanelBorderColorBrush#��[  5       $��4q�6F   ._�5"      �  5#      �� 5$      $
��Auto �6$   �� 5%      $
��Auto �6$   �� 5&      $
��Auto �6$   .+�5(      � $��0,0,5,0q�6   {�6(   �� *IsRecipeRunning+  InvertedBooleanConverter �� 	Converter# [  � ColumnDefinitions 5)      �� 5*      $
��Auto �6+   �� 5+      $��* �6+   �� 5,      $
��Auto �6+   .+�5.      �� $ ��Results destination folder��6    $��Center=�6B   $��Normal"�6]   $	��5,0q�6q   �� 5/      $��1��50      $��Center=�51      $��5q�69   $��25��52      $��Center=�53      ��5/      �� *AcqDestFolder+ �� UpdateSourceTrigger$ PropertyChanged=�53      �� 54      $��2��6   $	��...��6-   $	��4,0q�6;   $��25��6H   ��6T   �� *SelectAcqDestFolderCommand+55      �� 56      $��1��6   
���  ��$��4,0,0,0q�6:   y�6L   ��  �� Path$ IsAcqDestFolderValid� G   AUnitySC.Shared.UI.Converters.InvertedBooleanToVisibilityConverter  TRA valid destination folder for the results must be selected to execute the recipe.6  � 57      $��2��6   $��4q�6$    58      �� 59      $
��Auto �6+   �� 5:      $��* �6+   �� 5;      $��* �6+   .+�5>      ,   &UnitySC.Shared.UI.Controls.ImageButton  -   5        	  Name$	 StartRecipeButton��5>   1     PlayGeometry
   ImageGeometry#
 [ 6M      ImageGeometryBrush
 � � �$	��Run��5?   L   $��2q�5@   X   ��61   �� *StartRecipeCommand+y�5A   1   �� *IsRecipeRunning+ ( $InvertedBooleanToVisibilityConverter# [   5B        StopGeometry#
 [ 61   
 �  ��$��Abort��5C   1   $��2q�6b   ��6A   �� *AbortCommand+y�5D   1   �� *IsRecipeRunning+   BooleanToVisibilityConverter# [ � 5F      $��1��6"   $��10,2,4,2q�62    � Maximum 6D   �� *TotalAcquisitionSteps+ � Value 5G   "   �� *CurrentAcquisitionStep+��6K   �� *ProgessBarColor+�� 5H      $��1��6   $��10,2,4,2q�6,   $��Center=�6e   $��Center=�5I      
���   ���5H   >   �� *AcquisitionMessage+5I   7   � 5J      $��2��6"   $��10,2,4,2q�62    6D   �� *TotalComputationSteps+ 5K   "   �� *CurrentComputationStep+��6K   �� *ProgessBarColor+�� 5L      $��2��6   $��10,2,4,2q�6,   $��Center=�6e   $��Center=�5M      
���   ���5L   >   �� *ComputationMessage+5M   7   5O      5P      5Q      .   (UnitySC.Shared.UI.Controls.ImageGroupBox  5T   
   $��2��6'   $��Acquisition results��64     ImageGeometry   ImageGeometry# [ 5U   '     
IconsColor   ImageGeometryBrush# [ 5V   '   $��4q�6X   .��5W      �  5X      �� 5Y      $
��auto �6$   �� 5Z      $��* �6$   .+�5]      ��  �� Orientation$ 
Horizontal=�6   $��0,0,0,3q�66   .+�5^        $��Open result folders��61     FolderOpenGeometry#
 [ 5_   1   # [ 5`   1   ��5a   1   �� *OpenResultFolderCommand+  5b      $��Copy results��61    	 CopyGeometry#
 [	 6H   # [ 5c   1   $��10,0,0,0q�5d   X   ��61   �� *SaveResultsCommand+6X   5f      B   <UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxWithImageList  5i      $��1��6*      ItemsSource 67   �� *	Results+5j      5k      5l      5m      
   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:UnitySC.Shared.UI.ControlsUnitySC.Shared.UI.Controls  5      I)clr-namespace:UnitySC.Shared.UI.ViewModelUnitySC.Shared.UI.ViewModel  5      1    +UnitySC.Shared.UI.Controls.DefectBinsConfig   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      4local(clr-namespace:UnitySC.Shared.UI.Controls  5      2vm)clr-namespace:UnitySC.Shared.UI.ViewModel  5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      � $��Stretch=�6   $��Stretch=�6)    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      $��5 �6   6+   �� 5      $��* �6   6+   .+�5!   
   �� $��0��6   $��0��6   $��3��60      HeaderBorder#��[  6D   $	��0,0q�6j   ._�5"      � .+�5#      ��  �� Orientation$ 
Horizontal=�6   .+�5$      ��   Database#��[ 6     Icon#��[ 6?   �� 5%      $	��5,0q�6!   $'��!Klarf Defect Rough Bin Parameters��6/   $
��Left=�6X   $��Center=�6t   ,   &UnitySC.Shared.UI.Controls.ImageButton  5&      $��20��6(    	 Error   Image# [ 64     TransparentImageButton#��[ 6S    � ToolTip$ Invalid settings��5'      $��2,0,2,0q�6:   y�6K   �� *	IsValid+ ( $InvertedBooleanToVisibilityConverter �� 	Converter# [ 5(      �� 5*      $��Right=�6   $ 
Horizontal=�69   .+�5/        -   5        	  Name$	 ExportSizeBinButton��5/   (   $��20��6E    
 Export# [ 6Q   #��[ 6q   $ Export to Xml file��50      $��5,0,5,0q�6<   ��6M   �� *ExportXmlCommand+51      52      53      �� 56   
   $��1��6   $��1��6$   $��Stretch=�64   $��2��6R   $	��0,2q�6c   $��5��6p   &   System.Windows.Controls.DataGrid  58   
   -   5        
  Name$
 ListDefectBinsView��58      $��1��6/   $��2��6<   $��0��6M      SelectionUnit$ FullRow=�6�    J� 	AllowDrop .     SelectionMode$ Single=�59   %      CanUserAddRows .     CanUserDeleteRows .     AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 trueY�5:         CanUserSortColumns .     CanUserReorderColumns .     CanUserResizeRows .  ��58   ]   �� *
ListBins+ �� SelectedItem 6~   �� *SelectedBin+   Columns 5;      4  .System.Windows.Controls.DataGridTemplateColumn  5<      ,  &System.Windows.Controls.DataGridColumn   Header$ Defect Rough Bin��6)      CellTemplate 5=      �� 5>      .R�5?      %  Xceed.Wpf.Toolkit.IntegerUpDown  $��
RoughBinUD��61   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�6�      Value 6C   �� *
RoughBin+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   5@      5B      0  *System.Windows.Controls.DataGridTextColumn  5D      $ Defect category label��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *Label+$ TwoWay=�$ PropertyChanged=�  5F      $ Display color��6)    5G      �� 5H      .R�5I      �� $ 
Horizontal=�6)   .+�5J   "   #	  Xceed.Wpf.Toolkit.ColorPicker	   	 Name$ defcolorpicker��63   $��45��6�    	  SelectedColor 6K   �� *Color+$ TwoWay=�$ PropertyChanged=� % !DrawingColorToMediaColorConverter# [ 6�     5K   "   $	 defRandomColor��64   $��18��6L    
 Replay# [ 6X   #��[ 6x   $ Random Color��5L   %   $��5q�6<   ��6G   �� *RandomColorCommand+5M      5N      5P      5R      �� 5T   
   $��1��6   $��2��6$   $��1��64   $
��Left=�6E   $	��Top=�6`   $
��Auto=�6x   $
��Auto=�6�   .��5V      �   � Orientation$  Vertical=�6   .+�5X      �� $��Filters��6   .��5Y      �  5Z      �� 5[      $
��Auto �6,   6<   �� 5\      $
��Auto �6,   6<   �� 5]      $
��Auto �6,   6<    5_      �� 5`      $��* �6/   6;   �� 5a      $��* �6/   6;   .+�5d      �� $��0��6    $��0��6-   $��	Rough Bin��6=   �� 5e      $��0��6"   $��1��6/   $	��100��6n   $��Center=�6z   ��6@   �� *RoughBinFilters+$ TwoWay=�6z   �� 5g      $��1��6    $��0��6-   $��Label��6=   �� 5h      $��1��6"   $��1��6/   $	��100��6k   $��Center=�6w   ��6@   �� *LabelFilters+$ TwoWay=�6w   �� 5j      $��2��6%   $��1��62   $ 
Horizontal=�6B   $��Center=�6[   $��Center=�6x   .+�5k      	� ! 	� 	GroupName$! FilterLogic��6*   $��Or��6�   $��Center=�6�   $��5q�6�   " d� 	IsChecked" 6B   �� *LogicalFilterEnum+ 	 EnumToBooleanConverter# [	 /
   )UnitySC.Shared.UI.ViewModel.LogicalFilter	# 
  Or$ �� ConverterParameter#$ Z# 6�   	� 5l      $! FilterLogic��6*   $	��And��6�   $��Center=�6�   $��5q�6�   " 6C   �� *LogicalFilterEnum+# [	 
% 
  And#$ Z% 6�   5m      5n      5o      �� 5q      $��New Defect Parameters��6   .��5r      �  5s      �� 5t      $
��Auto �6,   6<   �� 5u      $
��Auto �6,   6<   �� 5v      $
��Auto �6,   6<   �� 5w      $
��Auto �6,   6<    5y      �� 5z      $��* �6/   6;   �� 5{      $��* �6/   6;   .+�5~      �� $��0��6    $��0��6-   $��	Rough Bin��6=     5      $��0��6-   $��1��6:   $ 0X�6u   $	��100��6�    6J   �� *NewRoughBin+$ TwoWay=�6�   �� 5�      $��1��6    $��0��6-   $��Label��6=   �� 5�      $��1��6"   $��1��6/   $	��100��6g   $��Center=�6s   ��6@   �� *
NewLabel+$ TwoWay=�6s   �� 5�      $��2��6    $��0��6-   $��Color��6=   �� 5�      $��2��6%   $��1��62   $ 
Horizontal=�6B   $��Stretch=�6[   $��Stretch=�6y   .+�5�      	  $��50��6�   $��3q�6�    60   �� *
NewColor+$ TwoWay=�# [ 6�     5�      -   5        $	 RandomNewColor��5�   0   $��20��6H   # [ 6T   #��[ 6t   $ Random Color��5�      $��5q�66   ��6A   �� *RandomNewColorCommand+5�      �� 5�      $��3��6!   $��2��6/   ��6C   �� *AddBinCommand+.��5�      �� $ 
Horizontal=�6)   $��Stretch=�6B   $��Stretch=�6`   .+�5�   "   ��  
 Add#��[
 6(   #��[ 6F   $��23��6d   $��10q�6p   �� 5�   "   $��Center=�6,   $��Center=�6I   Add New Defect6u   5�      5�      5�      5�      �� 5�      $��Remove Seledted Defect��6   .��5�      �  5�      �� 5�      $
��Auto �6,   6<   �� 5�      $
��Auto �6,   6<   �� 5�      $
��Auto �6,   6<   �� 5�      $
��Auto �6,   6<    5�      �� 5�      $��* �6/   6;   �� 5�      $��* �6/   6;   .+�5�      �� $��0��6    $��0��6-   $��	Rough Bin��6=   �� 5�      $��0��6$   $��1��61   $	��100��6g   $��Center=�6s   ��6A   �� *SelectedBin.RoughBin+6s   �� 5�      $��1��6    $��0��6-   $��Label��6=   �� 5�      $��1��6$   $��1��61   $	��100��6e   $��Center=�6q   ��6B   �� *SelectedBin.Label+6q   �� 5�      $��2��6    $��0��6-   $��Color��6=   �� 5�      $��2��6$   $��1��61   $��25��6�   $��20��6�   $��3q�6�   $
��Left=�6�   $��Center=�6�   ��6A   �� *SelectedBin.Color+  ColorToSolidBrushConverter# [ 6�   �� 5�      $��3��6!   $��2��6/   ��6C   �� *DeleteBinCommand+.��5�      �� $ 
Horizontal=�6)   $��Stretch=�6B   $��Stretch=�6`   .+�5�   "   ��  
 Remove#��[ 6(   #��[ 6I   $��23��6g   $��10q�6s   �� 5�   "   $��Center=�6,   $��Center=�6I   Remove Defect6t   5�      5�      5�      5�      5�      5�        5�   
   -   5        $	 SaveSizeBinButton��5�   :   $��2��6   $��2��6)   $��30��6U     Save# [ 6a   #��[ 6   $��Right=�5�      $��Bottom=�68   $ Save Settings��5�      $��5q�67   ��6B   �� *SaveBinCommand+5�      5�      
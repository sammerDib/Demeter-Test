   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:UnitySC.Shared.UI.ControlsUnitySC.Shared.UI.Controls  5      /    )UnitySC.Shared.UI.Controls.SizeBinsConfig   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      4local(clr-namespace:UnitySC.Shared.UI.Controls  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      $
��Auto �6   6.   �� 5      $��* �6   6+   .+�5    
   �� $��0��6   $��0��6   $��1��60      HeaderBorder#��[  6D   $	��0,0q�6j   ._�5!      � .+�5"      ��  �� Orientation$ 
Horizontal=�6   .+�5#      ��   Database#��[ 6     Icon#��[ 6?   �� 5$      $	��5,0q�6!   $��Klarf Size Bin Parameters��6/   $
��Left=�6P   $��Center=�6l   ,   &UnitySC.Shared.UI.Controls.ImageButton  5%      $��20��6(    	 Error   Image# [ 64     TransparentImageButton#��[ 6S    � ToolTip$ Invalid settings��5&      $��2,0,2,0q�6:   y�6K   �� *	IsValid+ ( $InvertedBooleanToVisibilityConverter �� 	Converter# [ 5'      �� 5)      $��Right=�6   $ 
Horizontal=�69   .+�5*        -   5        	  Name$	 AddSizeBinButton��5*   (   $��20��6B     Add# [ 6N   #��[ 6k   $ Add Bin��5+      $��5,0,5,0q�61   ��6B   �� *AddBinCommand+  5,      -   5        $	 DeleteSizeBinButton��5,   (   $��20��6E    
 Remove# [ 6Q   #��[ 6q   $ 
Delete Bin��5-      $��5,0,5,0q�64   ��6E   �� *DeleteBinCommand+  5.      -   5        $	 ExportSizeBinButton��5.   (   $��20��6E    
 Export# [ 6Q   #��[ 6q   $ Export to Xml file��5/      $��5,0,5,0q�6<   ��6M   �� *ExportXmlCommand+50      51      52      �� 53   
   $��0��6   $��2��6   $��1��60   #��[  6D   $	��2,0q�6j   ._�54      � .+�55      �� $ 
Horizontal=�6   .+�56      ��  		 Wafer#��[	 6   #��[ 6<   �� 57      $	��5,0q�6!   $��Preview��6/   $
��Left=�6>   $��Center=�6Z   5<      5B      5C      �� 5F   
   $��0��6   $��1��6$   $��Stretch=�64   $��3��6R   $	��0,2q�6c   $��5��6p   &   System.Windows.Controls.DataGrid  5H   
   -   5        
  Name$
 ListBinsView��5H      $��1��6)   $��1��66   $��0��6G      SelectionUnit$ FullRow=�6�    J� 	AllowDrop .     SelectionMode$ Single=�5I   %      CanUserAddRows .     CanUserDeleteRows .     AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 trueY�5J         CanUserSortColumns .     CanUserReorderColumns .     CanUserResizeRows .  ��5H   W   �� *
ListBins+ �� SelectedItem 6x   �� *SelectedBin+   Columns 5K      0  *System.Windows.Controls.DataGridTextColumn  5[      ,  &System.Windows.Controls.DataGridColumn   Header$&  Maximum defect Area size (µm²)��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6M   �� *
AreaMax_um+ �� UpdateSourceTrigger$ PropertyChanged=�  5\      $&  Display defect square size (µm)��6%    6N   �� *	Size_um+$ PropertyChanged=�5^      � 5`   
   $��1��6   $��2��6   $��2��6,   .+�5a      �� $ Vertical=�6   .+�5b      �� $
��Left=�6   $ 
Horizontal=�68   .+�5c      �� $	��5,0q�6!   $��Wafer diameter (mm)��6/   $
��Left=�6J   $��Center=�6f   %  Xceed.Wpf.Toolkit.IntegerUpDown  5d      -   5        $��WaferDiameterUD��5d   f   $��1��6)   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$	 100X�6:   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$	 100X�6J      Maximum$	 300X�6X   $
��Left=�6~   $y�Visible=�6�      Value 6�   �� *PreviewWaferDiameter+ �� Mode$ TwoWay=�6�   5e      �� 5f      $
��Left=�6   $ 
Horizontal=�68   .+�5g      �� $	��5,0q�6!   $��Selected square size =��6/   $
��Left=�6M   $��Center=�6i   �� 5h      $	��2,0q�6!   $
��Left=�6T   $��Center=�6p   ��6/   �� *SelectedBin.Size_um+6p   5i      (� 5k       (� Stretch$ Uniform=�6   .��5l      � .+�5m      A� 
���   �$��1��6+   
�������  J� Opacity$	  0.9Q�6N   $��10q�6\   $	��256��6h   $	��256��6t   6�   �� 5n      
��� � �$  1Q�6.   $��Center=�6�   $��Center=�6�   ��6:   �� *PreviewSquareSize+��6^   �� *PreviewSquareSize+6�   5o      5p      5q      5r        5�   
   -   5        $	 SaveSizeBinButton��5�   *   $��2��6   $��30��6E    
 Save# [
 6Q   #��[ 6o   $��Right=�5�      $��Bottom=�68   $ Save Settings��5�      $��5q�67   ��6B   �� *SaveBinCommand+5�      5�      
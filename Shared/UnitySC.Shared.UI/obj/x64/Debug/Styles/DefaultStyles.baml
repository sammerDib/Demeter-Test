   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� Property �� Value   ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border �� 
TargetType �Name'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard	 g� RepeatBehavior
 �� 
TargetName �� TargetProperty9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value ��Name J� RenderTransformOrigin �� Triggers P� Property P� Value �� 
TargetName �� Angle)  #System.Windows.Controls.DataGridRow ��Name J� SnapsToDevicePixels?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid � ColumnDefinitions � RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter   
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter   DetailsVisibility$   SelectiveScrollingOrientation;	  5System.Windows.Controls.SelectiveScrollingOrientation 	  Vertical �� ConverterParameter&
   System.Windows.Controls.DataGrid#  
  RowDetailsScrollingConverter! �� 	Converter" �� RelativeSource# �� AncestorType:  4System.Windows.Controls.Primitives.DataGridRowHeader7  1System.Windows.Controls.DataGridHeadersVisibility
$   Row!% 
  HeadersVisibilityConverter& �� Triggers' �� Padding( ��Name) 
  SelectAllCommand* �� 
ResourceId+ �� TypeInTargetAssembly
,   AllG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter-  Name.   Column/ ��Name0 �� CanContentScroll1 ��Name2 �� ScrollableHeight3 � Maximum4 �� Orientation5 �� ViewportHeight6 �� ViewportSize*7 �� #ComputedVerticalScrollBarVisibility8 � Value9 �� Mode: �� Mode; �� ScrollableWidth< �� ViewportWidth,= �� %ComputedHorizontalScrollBarVisibility> ]� 
Conditions? �� Property@ �� Value�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %�  '��       &	  �     &	 �     &	 �     '� �     7   7  7  '  �    '
  �    �� 5      "  ��6   .�5   
   ��  � ��$ NoWrap=�6)   �� 5	   
    � ��$
 None=�6)   �� 5
   
    � ��$ 12(�6%   5      �� 5      $ 	#FF06B025��63   �� 5      $ 	#FFE6E6E6��65   �� 5      $ 	#FFBCBCBC��61   �� 5      "  �6   .�5   
   ��  � ��8   6'   �� 5   
    � ��8  6'   �� 5   
    � ��8  6(   �� 5   
    � ��$ 1q�6,   �� 5   
    � �� 5      �� 5      " �6"   .R�5      � $ TemplateRoot��6    5        5      CommonStates��. 5   "     Determinate��6.     5    "   Indeterminate��. 5!   &   �� $	 Forever��61   .��5"   *   U� $
 	Animation��6H   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6j   .\�5#   .     $ 0��6C   $
 0.25Q�6O     5$   .   $ 0:0:1��6C   $
 0.25Q�6S     5%   .   $ 0:0:2��6C   $
 0.25Q�6S   5&   +   *� 5'   *   $
 	Animation��6G   $' !(UIElement.RenderTransformOrigin)�6i   .'�5(   .     $ 0��6B   $ -0.5,0.5&�6N     5)   .   $ 0:0:1��6B   $ 0.5,0.5&�6R     5*   .   $ 0:0:2��6B   $ 1.5,0.5&�6R   5+   +   5,   '   5-   #   5.      .+�50      �� #��z��6!   #��z��6K   #��z��6w   �� 51      $ 
PART_Track��6$   � 52      $ PART_Indicator��6   }�. $
��Left=�6K   .+�53      �� $ 	Indicator��6(   #��z��6;   �� 54      $ 	Animation��6(   #��z��6;   $ 0.5,0.5&�6_   z�55   "   V� 56   &   .~�57   *   �� �� 58   *   �� 59   *   T� 5:   *   5;   '   5=      5>      5?       5@      P� 5A       �@�Orientation$ Vertical=�69   . �5B      �� $ TemplateRoot��6@    �@�LayoutTransform 5C   "   �� 5D   &   $	 -90Q�66   5F      5G      P� 5H       �@�IsIndeterminate . . �5I      �� $ 	Indicator��6;    � y�$ 	Collapsed=�6R   5J      5L      5N      5O      �� 5S      "   6   .�5T   
   ��  � ��# � ��6'   �� 5U   
    �@J�SnapsToDevicePixels . 60   �� 5V   
    �@=�ErrorTemplate 65   Z� �� 5W   
    �@ ValidationErrorTemplate 5X      �� 5Y      .R�5Z      �� 
���  ��$��2,0,0,0q�61   $��!��6B   $��Center=�6K   5[      5]      �� 5^   
    � �� 5_      �� 5`      "  6"   .R�5a      �� $ 
DGR_Border��6   #��z��61   #��z��6[   #��z��6�    . ._�5b         5c      �� 5d   "   $
��Auto �63   �� 5e   "   $��* �63    5g      �� 5h   "   $��* �60   �� 5i   "   $
��Auto �60   .+�5k        $��1��65   #��z 6E   # z 6o     5l      $��1��67   $��1��6G   #y�z 6k   6T   �� *AreRowDetailsFrozen+# Z #! Z  " �� "# 
 6k    5m      $��2��60   $ Vertical=�6A   y�6�   �� *HeadersVisibility+# Z$ #! Z% " �� "# 
 5n      5o      5p      5r      & 5s   
   P� 5t       �@ 	IsNewItem . . �5u      ��  � �� 6+   �� *NewItemMargin+" �� "# 
 5v      5x      �� 5z      "  
 6   .�5{   
   ��  � ��$ 12(�6%   �� 5|   
    � ��# � ��6'   �� 5}   
    � ��# � ��6'   �� 5~   
    � �� �	#FF688CAF6(   �� 5   
    � ��$ 1q�6,   �� 5�   
     �@
 RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5�   
    � �� . 6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled .  63   �� 5�   
    � �� 5�      �� 5�      " 
 6"   .R�5�      �� #��z��6   #��z��6G   #��z��6s   #' z��6�    . ._�5�      �� $( DG_ScrollViewer��6'   |�.  ��5�      �� 5�   "   " ��62   .R�5�   &   �  5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?   �� 5�   .   $
��Auto �6?    5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $��* �6<   �� 5�   .   $
��Auto �6<   .+�5�   *   �� #��Z) 61   |�.  ��6r   C� *�� $"* DataGridSelectAllButtonStyle��"+ 
 +y�6�   �� *HeadersVisibility+# Z, #! Z% " �� "# 
 ��6�  �� *CellsPanelHorizontalOffset+" �� "# 
   5�   *   $!- PART_ColumnHeadersPresenter��6I   $��1��6n   y�6~   �� *HeadersVisibility+# Z. #! Z% " �� "# 
 �� 5�   *   $!/ PART_ScrollContentPresenter��6A   #0 z��6f   $��2��6�   $��1��6�   �� 5�   *   $1 PART_VerticalScrollBar��64   $��2��6T   #3 z2 6d   $4 Vertical=�6�   $��1��6�   #6 z5 6  #y�z7 6I  8 6�   �� *VerticalOffset+$9 OneWay=�" �� $: TemplatedParent=�6I  � 5�   *   $��1��6/   $��2��6?    5�   .   �� 5�   2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+" �� "# 
 �� 5�   2   $��* �6C   .+�5�   .   �� $1 PART_HorizontalScrollBar��68   $��1��6Z   #3 z; 6j   $4 
Horizontal=�6�   #6 z< 6  #y�z= 6D  8 6�   �� *HorizontalOffset+$9 OneWay=�" �� $: TemplatedParent=�6D  5�   +   5�   '   5�   #   .��5�      �� # z 6-   5�      5�      5�      5�      & 5�   
   ]� 5�      > 5�      �� 5�      ? �@��
IsGrouping@ . 66   �� 5�      "? �@%�IsVirtualizingWhenGrouping@ .  6X   ./�5�      ��  � �� .  6B   5�      5�      5�      
   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:UnitySC.Shared.UI.Graph.UIUnitySC.Shared.UI.Graph.UI  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   selectionBorderColor  �� Color " selectionBorderBackgroundColor �� Opacity)    #UnitySC.Shared.UI.Graph.UI.NodeItem �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType*   $UnitySC.Shared.UI.Graph.UI.GraphView �� Path �� Mode	 �� 
TargetType
 ��Name �� Padding �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName.   (UnitySC.Shared.UI.Graph.UI.ConnectorItem  noScrollViewerListBoxStyle K� IsItemsHost1  +UnitySC.Shared.UI.Graph.UI.NodeItemsControl  Name   NodeItemContainerStyle   NodeItemTemplate   NodeItemTemplateSelector   Nodes �� SelectionMode ��Name#   ConnectionItemContainerStyle   ConnectionItemTemplate%   ConnectionItemTemplateSelector   Connections ��Name J� Opacity�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      2local(clr-namespace:UnitySC.Shared.UI.Graph.UI  5      %	  &	        &	      '   T     7   7  '  �    &	 2    '  �    7  �� 5	      $
  Blue��63   �� 5      $
 0.25Q�5   	   $
  Blue��5   	   �� 5      "   6   .�5   
   ��  �@  ParentGraphView 6,   ��  �� *FindAncestor+"  $ .��� 5   
    �@��Left 6(   �� *X+ �� *Self+$ TwoWay=��� 5   
    �@��Top 6'   �� *Y+ �� *Self+$ TwoWay=��� 5   
    �@K�ZIndex 6*   �� *ZIndex+ �� *Self+$ TwoWay=��� 5   
    � ��
 ���� 6'   �� 5   
    � ��
 ���� 6(   �� 5    
    � ��$ 1q�6,   �� 5#   
    � �� 5$      �� 5%      "	   6"   .R�5&      � .+�5.      �� $
 selectionBorder��5/      #��z��50      # z��51      #��z��52      #��z��53      #��z��54      $ 2��55      ._�5:      �� 5;      5<       5=      P� 5?       �@��
IsSelected . . �5B      �� $ selectionBorder��6%   8    � ��6Y   �� 5C      $ selectionBorder��6%   8   � ��6X   5D      5F      5H      5I      �� 5L      "  6   .�5O   
   ��  �@ ParentGraphView 6,   ��  �� *FindAncestor+"  $ .��� 5R   
    �@ ParentNodeItem 6+   ��  �� *FindAncestor+"   $ .��� 5U   
    � �� 5V      �� 5W      "	  6"   .R�5Z      �� 5[      5]      5^      �� 5d      " ��6/   .�5e   
   ��  � �� 5f      �� 5g      "	 ��6"   .R�5m      ��  . 6   5n      5p      5q      �� 5t      "  6   .�5w   
   ��  � �� 5x      �� 5y      "	  6"   .R�5z      �� #��z��5{      #��z��5|      #��z��5}      ._�5~      � .+�5�        $ PART_NodeItemsControl��5�   !   #��z 5�   !   #��z 5�   !   #��z 5�   !   #��z 5�   !   $ Extended=�5�   !   8��  5�   !   �� 5�      $! PART_ConnectionItemsControl��5�   !   #��z 5�   !   #��z 5�   !   #��z 5�   !   #��z 5�   !   ��5�   "   �� 5�   &   .R�5�   *   �� 5�   '   5�      �� 5�      $ PART_DragSelectionCanvas��6%   $y�	Collapsed=�6G   .+�5�   "   �� $
 PART_DragSelectionBorder��5�   %   
����ح�
����  �$��1q�5�   %   $ 1��5�   %   $	 0.5Q�5�   %   5�      5�      5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����  UnitySC.Shared.UI?    9UnitySC.Shared.UI.Dialog.ExceptionDialogs.ExceptionViewer   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5        $��ExpressionViewerWindow��5   	   $	��520��5   	   $	��300��5   	   $	��350��5   	   $	��200��5   	     � WindowStartupLocation$  CenterScreen=�5
   :   .��5      � -   5        $��mainGrid��5       � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      -   5         �Name$ treeCol��5      $
��Auto �5      $	��250��5      $��90��5      �� 5      -   5        $ textCol��5      $��* �5      $��90��5      .+�5   
   R� -   5        $��	treeView1��5      $��5q�5      5      �� 5   
   $��5��6   $��0,5,0,5q�5      $��1��5       �� ResizeBehavior$ CurrentAndNext=�5      �� 5    
   $��0,5,5,5q�5"      $��1��5#      ��5       ��  �� ElementName$ 	treeView1�� �� Path$ BorderThickness���5!      �� $ 	treeView1��$ BorderBrush�._�5$      ,� -   5        $��	docViewer��5$   '   $ ,� HorizontalScrollBarVisibility$
 Auto=�5%   '   " ,� VerticalScrollBarVisibility$
 Auto=�5&   '   5'      � 5(   
   $��1��6   $��2��5)      $��Right=�5*       5+      �� 5,      $
��auto �6#   �� 5-      $
��auto �6#   �� 5.      $
��auto �6#   .+�50      �� -   5        $��chkWrap��54      $��
_Wrap text��50      $��16��51      $��Right=�52      $��0,0,23,0q�53      $��center=�55      	 d� 	IsChecked$
	 TrueY�58      �� 59      -   5        $��btnCopy��5:      $��_Copy All To Clipboard��59      $
��15,0q�5<      $��20q�5=      $��1��5>      $��Center=�5?      $��23��5@      �� 5A      -	   5        $��btnClose��5B      $��Close��5A      $��2��5C      $
��15,0q�5D      $��20q�5E      $��Center=�5G      $��23��5H      5I      5J      5K      
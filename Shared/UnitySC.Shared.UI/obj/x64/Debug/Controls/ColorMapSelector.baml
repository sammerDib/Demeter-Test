   M S B A M L   `   `   `  ����N  JUnitySC.Shared.Data, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullhGclr-namespace:UnitySC.Shared.Data.ColorMap;assembly=UnitySC.Shared.DataUnitySC.Shared.Data.ColorMap  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:UnitySC.Shared.UI.ConvertersUnitySC.Shared.UI.Converters 5      G(clr-namespace:UnitySC.Shared.UI.ControlsUnitySC.Shared.UI.Controls 5	      1   +UnitySC.Shared.UI.Controls.ColorMapSelector   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ]	colorMapsGclr-namespace:UnitySC.Shared.Data.ColorMap;assembly=UnitySC.Shared.Data     5      A
converters*clr-namespace:UnitySC.Shared.UI.Converters     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      AuserControls(clr-namespace:UnitySC.Shared.UI.Controls     5	      -   5          >�Name$  ColorMapSelectorControl��5
       � 	Resources 5      ?  9UnitySC.Shared.UI.Converters.BitmapToBitmapImageConverter  5         Key($ColorMapBitmapToBitmapImageConverter     UseCache . 5      �� 5      ColorMapTemplate   �� DataType+   %UnitySC.Shared.Data.ColorMap.ColorMap"  5      .R�5      (�  (�Name$ Viewbox��5      $��12��5      $
��Auto��5       (� Stretch$
 Fill=�5      .��5      ��  ��Name$ Image��5       �� BitmapScalingMode$ NearestNeighbor=�5       �� EdgeMode$ Aliased=�5      $
��Fill=�5!      ��5       �� *Bitmap+ ( $ColorMapBitmapToBitmapImageConverter	 �� 	Converter#	 [ 
 � LayoutTransform
 5"      �� 5#       �� Angle$	 -90Q�6   5%      5&       �� Triggers 5'      �� 5(       �� Value$ 
Horizontal��5*       �� Binding 5)      �� *Orientation+ �� RelativeSource �� *FindAncestor+ �� AncestorType1  +UnitySC.Shared.UI.Controls.ColorMapSelector"  .a�5+      ��  �� 
TargetName$ Image��6    �� Property �@�LayoutTransform �� Value 5,      �� 5-   	   $ 0Q�6   5/      �� 50      $ Viewbox��6    � ��$
 Auto��64   �� 51      $ Viewbox��6    � ��$ 12��65   52      54      .��56      � .+�57      d� -   5        $ ��ChangeColorMapToggleButton��58      $
��Auto��59      $��0,0,5,0q�5:      $��Stretch=�5;       � ToolTip$ Change color map��5<      .��5=      �  � ColumnDefinitions 5>      �� 5?      $��* �6   �� 5@      $
��Auto �6   .+�5B      �� $��0,0,5,0q�5C        ColorMapTemplate#��[ 5E      ��5D      �� *SelectedColorMap+ �� ElementName$ ColorMapSelectorControl��5E      F� 5F      $��1��5G      $��6��5H      $��6��5I      $��Bottom=�5J      "����     6n�-��  6n�-�� ԓ� 	
���   � �� Stretch$ Uniform=�5M      5N      5O      � 5P       � AllowsTransparency .  � HorizontalOffset$ 5��5R      $��Right=�5T       � 	StaysOpen .  ��5S      �� *	IsChecked+$  ChangeColorMapToggleButton�� � PlacementTarget 5U      �� $  ChangeColorMapToggleButton��.��5W      � $��10q�6
   .+�5X      �� 
������� �� CornerRadius$ 3��5Z       J� Effect 5[      3  -System.Windows.Media.Effects.DropShadowEffect  5\         
BlurRadius$ 5Q�5]         	Direction$	 -90Q�5^          Opacity$	  0.3Q�5_      !   RenderingBias$! Performance=�5`      "   ShadowDepth$" 1Q�5a      #   Color$# Black��5b      5d      �� 5e      $��0q�5f      $��
Color maps��5g      .��5h      �� -   5        $��Center=�5i      $��Center=�5j      ��5k      �� 1   +UnitySC.Shared.Data.ColorMap.ColorMapHelper$   	ColorMaps% �� Source#% Z$ & �� SelectedItem& 5l      �� *SelectedColorMap+$ ColorMapSelectorControl��' �� Mode$' TwoWay=���5n      �� 5o   	   .R�5p   
   � $��5q�6   .+�5q      �� ( ��Name$( ContentPresenter��5r      $	��100��5s      $��Center=�5t      #��[ 5v      ��5u      ��  5w      �� *Name+5x       5y   
   �� 5z      $ 
Horizontal��5|       5{      �� *Orientation+ �� *FindAncestor+"  .a�5}      �� $ ContentPresenter��6    � ��$	 100��6B   �� 5~      $ ContentPresenter��6    � ��$
 Auto��6C   5      5�   
   ��5�      �� 5�   	   ) �� BasedOn#) [B��5�   	   * �� 
TargetType"* ��5�   	   .�5�   
   ��  � �� 5�      �� 5�      .R�5�      �� + �� Orientation$+ 
Horizontal=�6   5�      5�      , �� Triggers, 5�   
   �� 5�       5�      �� *Orientation+ �� *FindAncestor+"   
Horizontal5�      .a�5�      ��  � �� 5�      �� 5�      .R�5�      �� $+ Vertical=�6   5�      5�      5�      5�   
   5�      5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����O  KUnitySC.PM.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullu?clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.Converter1UnitySC.PM.Shared.UI.Recipes.Management.Converter  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullfEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters 5      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5	      fEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Extensions 5
      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      F    @UnitySC.PM.Shared.UI.Recipes.Management.View.LayersEditorControl   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      [localConverters?clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.Converter     5      \
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5	      bsharedExtensionsEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UI     5
      ^sharedControlsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   �� 5      $T Npack://application:,,,/UnitySC.Shared.UI;component/Styles/ImageDictionary.xaml?�6%   �� 5      $T Npack://application:,,,/UnitySC.Shared.UI;component/Styles/ImageGeometries.xaml?�6%   %    5      .��5      � -   5        $��Layer��5      .+�5   
   �� ._�5      �  � RowDefinitions 5      �� 5       $
��Auto �6$   �� 5!      $
��Auto �6$   �� 5"      $��* �6$   .+�5$      �� $
��Left=�6   $��
Add layers��67   5&      �� 5'      $��Right=�6   $��0,0,5,0q�68   �� 5(   "    �� Command 6,   �� *	DeleteAll+.�6J   Delete all layers6]   5)      �� 5+      $
��Auto=�6   $��2��6B   .��5,      � .+�5-      ��  �� AlternationCount$ 6��6B   $��
32,15,0,15q�6W   ��6#   �� *Layers+��5.      �� 5/      .R�50   &   ��  �� CornerRadius$ 4��6�   $��1q�6�      ListItemStaticBorderColor#��[  6  ��6-   ��  �� Path$ 
LayerColor� �� 	Converter B  <UnitySC.Shared.UI.Converters.MediaColorToSolidBrushConverter  ��6�   �� *	Thickness+ W   QUnitySC.PM.Shared.UI.Recipes.Management.Converter.LayerThicknessToHeightConverter  ._�51   &   � .+�53   .   � y�63   �� *	InEdition+ G  AUnitySC.Shared.UI.Converters.InvertedBooleanToVisibilityConverter  	 � ColumnDefinitions	 54   .   �� 55   2   $��* �6C   �� 56   2   $��75 �6C   .+�59   .   � .+�5:   2   � $��Center=�67   	 5;   6   �� 5<   :   $	��150 �6K   �� 5=   :   $	��120 �6K   �� 5>   >   $
��Auto �6O   �� 5?   >   $��* �6O   �� 5@   :   $	��130 �6K   .+�5B   6   �� $
��10,0q�6W   $
��Bold"�6e   $��Center=�6w   ��6A   �� *Name+6w   �� 5C   6   
 �� Orientation$
 
Horizontal=�6A   $��1��6Z   .+�5D   :   ��   HeightGeometry+  %UnitySC.Shared.UI.Extensions.ImageExt   SourceGeometry# [ 6@   $��Center=�6�    � ToolTip$ 	Thickness��6�   $��20��6�   $��10,0,0,0q�6�   �� 5E   >   $
��Bold"�6�   $��Center=�6�   $��5,0,0,0q�6�   ��6H   �� *	Thickness+ �� StringFormat$ 
 {0:0.###}��6�   5F   7   �� 5G   :   $
 
Horizontal=�6E   $��2��6^   $	��120��6:  y�6n   �� **(DataContext.EditLayersThicknessTolerance+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" >� ?  9UnitySC.Shared.UI.Converters.BooleanToVisibilityConverter  .+�5H   >   ��   ThicknessToleranceGeometry# [ 6D   $��Center=�6�   $ 	Thickness��6�   $��20��6�   $��10,0,0,0q�6�   �� 5I   >   $
��Bold"�6�   $��Center=�6�   $��5,0,0,0q�6�   ��6H   �� *ThicknessTolerance+$ 
 {0:0.###}��6�   5J   ;   �� 5K   :   $
 
Horizontal=�6E   $��3��6^   .+�5L   :   ��   AtomGeometry# [ 6@   $��Center=�6�   $ Material��6�   $��20��6�   $��5,0,6,0q�6�   �� 5M   :   $��Unknown material��6D   $��Center=�6\   $
��Bold"�6w   5N   7   �� 5O   6   $
 
Horizontal=�6A   $��4��6Z   .+�5P   :   �� $	��RI ��6D   $��Center=�6O   $
��Bold"�6j   �� 5Q   :   $��?��6D   $��Center=�6M   y�6h   �� *IsRefractiveIndexUnknown+   �� 5R   :   $��Center=�6�   $
��Bold"�6  ��6D   �� *RefractiveIndex+$ {0:F2}��y�6~   �� *IsRefractiveIndexUnknown+   6  5S   3   5T   3   5U   /   �� 5W   .   $��1��69   $
 
Horizontal=�6I   .+�5X   2   ,  &UnitySC.Shared.UI.Controls.ImageButton  $��30��6G     TrashGeometry   ImageGeometry# [ 6R   $��5,0,0,0q�6�     ImageErrorColor   ImageGeometryBrush# [ 6�   $ Delete��6�   ��6�   �� *DataContext.DeleteLayer+ �� *FindAncestor+" >���6W  ��   5Y   2   $��30��6G   $��1��6R     PencilGeometry# [ 6b     ImageMainColor# [ 6�   $
 Edit��6�   $	��5,0q�6�   ��6�   �� *%#DataContext.ChangeLayerEditionState+ �� *FindAncestor+" >���6l  �� 5Z   /   5[   +   � 5]   *   y�6/   �� *	InEdition+   BooleanToVisibilityConverter# [ 	 5^   .   �� 5_   2   $��* �6C   �� 5`   2   $��75 �6C   .+�5d   2   � $��Center=�67   	 5e   6   �� 5f   :   $	��150 �6K   �� 5g   :   $	��120 �6K   �� 5h   :   $
��Auto �6K   �� 5i   :   $��* �6K   �� 5j   :   $	��130 �6K   .+�5m   6   �� $��80��6>   $��Center=�6b   $��5,0,0,0q�6~   ��6L   �� *Name+6~   � 5n   6   $��1��6;   	 5o   6   �� 5p   :   $
��Auto �6K   �� 5q   :   $��* �6K   .+�5s   :   �� # [ 6@   $ 	Thickness��6�   $��20��6�   $��10,0,0,0q�6�   $��Center=�6�   ,  &UnitySC.Shared.UI.Controls.TextBoxUnit  5t   :   $��1��6O   $��Center=�6�   $��2q�6�   1  +UnitySC.Shared.UI.Extensions.TextBoxMaskExt   Mask$ PositiveDecimal=�6�   -	  'UnitySC.Shared.UI.Extensions.TextBoxExt 	  OnEnterAndEscUpdate .    LengthValue 6`   �� *	Thickness+6  5v   7   � 5x   6   $��2��6;   $	��120��6K   y�6W   �� **(DataContext.EditLayersThicknessTolerance+ �� $ FindAncestor=�" >�   	 5y   :   �� 5z   >   $
��Auto �6O   �� 5{   >   $��* �6O   .+�5}   :   �� # [ 6@   $ 	Thickness��6�   $��20��6�   $��10,0,0,0q�6�   $��Center=�6�     5~   :   $��1��6O   $��Center=�6�   $��2q�6�   $ PositiveDecimal=�6�    .  6`   �� *ThicknessTolerance+6#  5�   7   �� 5�   6   $
 
Horizontal=�6A   $��3��6Z   $��Stretch=�6j   .+�5�   :   �� # [ 6@   $ Material��6�   $��20��6�   $��5,0,6,0q�6�   $��Center=�6�   �� 5�   :   $��Stretch=�6C   $	��200��6a   6r   5�   7   � 5�   6   $��4��6;   	 5�   :   �� 5�   >   $
��Auto �6O   �� 5�   >   $
��Auto �6O   �� 5�   >   $
��Auto �6O   �� 5�   >   $��* �6O   .+�5�   :   �� $��RI��6D   $
��Bold"�6N   $��Center=�6`   $
��Left=�6|   $��0,0,3,0q�6�   �� 5�   :   $��70��6B   $��1��6M   $��Center=�6   $��2q�6�   $��Stretch=�6�   $ PositiveDecimal=�6�    . ��6]   �� *RefractiveIndex+y�62  �� *IsRefractiveIndexUnknown+   2
  ,UnitySC.Shared.UI.Controls.ImageToggleButton
  5�   :   $��2��6[   $��30��6l    	 QuestionMarkGeometry 
  ImageGeometry# [	 6w    
  ImageCheckedGeometry# [	 6�    
  ImageGeometryBrush
 �   �  
  ImageGeometryCheckedBrush
 � � �$��1,1,2,2q�6Y   d� 	IsChecked 6*  �� *IsRefractiveIndexUnknown+6Y  5�   7   5�   3   �� 5�   3   $��1��6:   $��Ok��6J   $��30��6W   $ Apply change��6b    
 HighlightedButton#��[
 6y   $	��5,0q�6�   $��Right=�6Y  ��6�   �� *%#DataContext.ChangeLayerEditionState+ �� *FindAncestor+" >���6<  �� 6Y  5�   /   5�   +   5�   #   5�      ��5�      �� 5�      .R�5�   "   �� $
 Vertical=�6-   5�      5�        5�      $��30��6/   $��30��6:   $
��Left=�6F   $	��Top=�6a     InsertRowGeometry# [ 6y     ImageButtonWithoutBorder#��[ 6�    � Cursor$
 Hand��6�   $ 	Add Layer��6�   $��5q�6   ��6  �� *AddTopLayer+z�5�      T� 5�   "    T� Y$ -5Q�65   5�   #   5�      �� 5�      $��5,15,0,0q�6F   ��6'   �� *Layers+��5�      �� 5�   "   .R�5�   &   � ��6+   �� *	Thickness+   .+�5�   *     $��30��6?   $��30��6J   $
��Left=�6V   $��Bottom=�6q   # [ 6�   #��[ 6�   $ 	Add Layer��6�  $
 Hand��6�  ��6�   �� *DataContext.AddLayerAfter+ �� *FindAncestor+" >���6r  �� z�5�   .   T� 5�   2   $ 15Q�6E   5�   3   5�   +   5�   '   5�   #   5�      5�      5�      5�      5�      5�      5�      
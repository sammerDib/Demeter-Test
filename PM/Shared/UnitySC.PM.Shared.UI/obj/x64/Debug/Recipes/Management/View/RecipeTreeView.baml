   M S B A M L   `   `   `  ����O  KUnitySC.PM.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullk:clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.View,UnitySC.PM.Shared.UI.Recipes.Management.View  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      fEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Extensions 5	      fEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters 5
      u?clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.ViewModel1UnitySC.PM.Shared.UI.Recipes.Management.ViewModel  5      A    ;UnitySC.PM.Shared.UI.Recipes.Management.View.RecipeTreeView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.View     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      RcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5      \sharedExtensionsEclr-namespace:UnitySC.Shared.UI.Extensions;assembly=UnitySC.Shared.UI  5	      V
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI  5
      O	viewModel?clr-namespace:UnitySC.PM.Shared.UI.Recipes.Management.ViewModel  5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      � .+�5   
   R� -   5        $��	RTreeView��5      $��Disabled=�5      $��Stretch=�5      ��5   $   �� *RootTreeViewModelCollection+��5      �� 5       �� 
TargetType" Q�6   .�5      -   5        �� 5        �� Property �@Q�
IsExpanded �� Value 63   �� *
IsExpanded+ �� Mode$ TwoWay=��� 5!       �@Q�
IsSelected 63   �� *
IsSelected+$ TwoWay=��� 5"       � ��$ Normal"�63    �� Triggers 5#      P� 5$       P� Property �@Q�
IsSelected	 P� Value	 . . �5%      ��  � ��$
 Bold"�6;   5&      
 �� 	Resources
 5(      ��%Q   '��       �� 5)      " ��6    .�5*      ��  � ��$ 2��6@   5+      5,      5-        5/       �� DataTypeI   CUnitySC.PM.Shared.UI.Recipes.Management.ViewModel.RootTreeViewModel �� ItemsSource �Name
 � Tag �� ElementName � ColumnDefinitions �� RelativeSource �� 	Converter?  9UnitySC.Shared.UI.Converters.BooleanToVisibilityConverter �� Mode �� AncestorType,  &UnitySC.Shared.UI.Controls.ImageButton  Name   PlusCircleGeometry   ImageGeometry  ButtonForegroundBrush   ImageGeometryBrush  ImageButtonWithoutBorder � ToolTip �� Path �� Triggers �� 
TargetName  MainHeaderBackgroundH   BUnitySC.PM.Shared.UI.Recipes.Management.ViewModel.ProductViewModel  WaferGeometry+  %UnitySC.Shared.UI.Extensions.ImageExt   SourceGeometry  
IconsColor   GeometryBrush  Icon  TrashGeometry  IconsErrorColorE   ?UnitySC.PM.Shared.UI.Recipes.Management.ViewModel.StepViewModel 	 LayerGeometry 
 StepG  AUnitySC.Shared.UI.Converters.InvertedBooleanToVisibilityConverter  ArrowSquareDownGeometryG   AUnitySC.PM.Shared.UI.Recipes.Management.ViewModel.RecipeViewModel  FileGeometry  ImageMainColorM	   GUnitySC.PM.Shared.UI.Recipes.Management.ViewModel.DataflowItemViewModel��%  (��       50   +   *, +)7   7  7  7  (�� �    5W   +   *, +)7  7  7  7   7  7  7  7  7  7  (�� f    5�   ,   *, +)7 	 7  7 
 7  7  7  7  7   7  7  7  7  7  7  (�� �    5�      *, +)7  7  7  7  7  7  7  (�� _    5�      *,	 +)7  7  7  7  7  7  7  �� 50      "  6+    51   +   �� *
Children+.R�53      � $ gridRoot��6    6-   �� *DataContext+$ 	RTreeView�� 54      �� 55      $
��Auto �6/   �� 56      $��* �6/   �� 57      $
��Auto �6/   .+�59      A� $��0��6"   $��3q�5:   "   
��� ���$��10��6;   $��Center=�5;   "   ��5<   "   �� *ActualHeight+ �� *Self+y�5=   "   �� *
HasChanged+   �� 5>      $��1��6$   $��Products��64   $��60��6D   $��Center=�6R   $��NoWrap=�6m   $��CharacterEllipsis=�6�   � 5?      $��2��6   y�6/   �� *CanAddProduct+ �� $ FindAncestor=�" >�   .+�5@        $ BtnAddProduct��63   8   8  8�� $��16��5D   /   $��16��6:   $��0 0 3 0q�6G   $��Center=�5E   /   $��Right=�5F   /   $ Add Product��5J   /   ��5H   /   �� *DataContext.AddCommand+$ 	RTreeView����5I   /   �� y�5K   /   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5L      5M       5O      P� 5P       �@J�IsMouseOver	 . . �5Q      �� $ BtnAddProduct��6%    � y�$ Visible=�6V   �� 5R      $ gridRoot��6%   8   � ��6Q   5S      5U      �� 5W      "  6+    5X   +   �� *
Children+.R�5Y      � $ gridProduct��6    60   �� *DataContext+$ 	RTreeView�� 5Z      �� 5[      $
��Auto �6/   �� 5\      $
��Auto �6/   �� 5]      $��* �6/   �� 5^      $
��Auto �6/   �� 5_      $
��Auto �6/   .+�5a      �� $��0��6    8   8  8�� 6�   A� 5b      $��1��6"   $��3q�62   
��� ���$��10��6K   ��6W   �� *ActualHeight+ �� *Self+y�5c   "   �� *
HasChanged+   �� 5d      $��2��6$   $��60��6J   $��Center=�6X   $��NoWrap=�6s   $��CharacterEllipsis=�6�   $��3,0,0,0q�6�   ��64   �� *Name+6�   � 5e      $��3��6   y�6/   �� *
CanAddStep+ �� $ FindAncestor=�" >�   .+�5f        $ 
BtnAddStep��6/   8  8  8�� $��18��5i   *   $��18��65   $��3,0,3,0q�6A   $��Center=�5j   *   $��Right=�5k   *   $ Add Step��5n   *   ��5l   *   �� *DataContext.AddCommand+$ 	RTreeView����5m   -   �� y�5o   *   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5p        5q      $ BtnRemoveProduct��6/   $��4��6I   8  8  8�� $��18��5t   *   $��18��65   $��5,0,0,0q�6A   $��Center=�5u   *   $��Right=�5v   *   $ Remove Product��5y   *   ��5w   *   �� *DataContext.RemoveCommand+$ 	RTreeView����5x   -   �� y�5z   *   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5{       5|      P� 5}       �@J�IsMouseOver	 . . �5~      �� $ BtnRemoveProduct��6%    � y�$ Visible=�6Y   �� 5      $ 
BtnAddStep��6%    � y�$ Visible=�6S   �� 5�      $ gridProduct��6%   8 	  � ��6T   5�      5�      �� 5�      "  6,    5�   ,   �� *
Children+.R�5�      � $ gridStep��6    6-   �� *DataContext+$ 	RTreeView�� 5�      �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $��* �6/   �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   .+�5�      �� $��0��6    8   8  8�� 8�� 6�   A� 5�      $��1��6"   $��3q�62   
��� ���$��10��6K   ��6W   �� *ActualHeight+ �� *Self+y�5�   )   �� *
HasChanged+   �� 5�      $��2��6$   $��60��6J   $��Center=�6X   $��NoWrap=�6s   $��CharacterEllipsis=�6�   $��3,0,0,0q�6�   ��64   �� *Name+6�   �� 5�      $��3��6)   y�69   �� *DataContext.ShowImportCommand+$ 	RTreeView��   .��5�        $ BtnImportRecipe��64   8  8  8�� $��18��5�   .   $��18��69   $��3,0,0,0q�6E   $��Center=�5�   .   $��Right=�5�   .   $ Import Recipe��5�   .   ��5�   .   �� *DataContext.ImportCommand+$ 	RTreeView����5�   1   �� y�5�   .   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5�        5�      $ BtnAddRecipe��6?   $��4��6/   8  8  8��	 $��18��5�   .   $��18��69   $��3,0,3,0q�6E   $��Center=�5�   .   $��Right=�5�   .   $ 
Add Recipe��5�   .   ��5�   .   �� *DataContext.AddCommand+$ 	RTreeView����5�   1   �� y�5�   .   �� $ 
IsSelected� �� $ FindAncestor=�" Q�     5�      $ BtnRemoveStep��6?   $��5��6/   8 
 8  8�� $��18��5�   .   $��18��69   $��5,0,0,0q�6E   $��Center=�5�   .   $��Right=�5�   .   $ Remove Step��5�   .   ��5�   .   �� *DataContext.RemoveCommand+$ 	RTreeView����5�   1   �� y�5�   .   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5�       5�      P� 5�       �@J�IsMouseOver	 . . �5�      �� $ BtnRemoveStep��6%    � y�$ Visible=�6V   �� 5�      $ BtnImportRecipe��6%    � y�$ Visible=�6X   �� 5�      $ BtnAddRecipe��6%    � y�$ Visible=�6U   �� 5�      $ gridStep��6%   8   � ��6Q   5�      5�      �� 5�      "  6   .R�5�      � $ 
gridRecipe��6    6/   �� *DataContext+$ 	RTreeView�� 5�      �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $��* �6/   �� 5�      $
��Auto �6/   .+�5�      �� $��0��6    8   8  8�� 6�   A� 5�      $��1��6"   $��3q�62   
��� ���$��10��6K   ��6W   �� *ActualHeight+ �� *Self+y�5�   "   �� *
HasChanged+   �� 5�      $��2��6$   $��60��6J   $��Center=�6X   $��NoWrap=�6s   $��CharacterEllipsis=�6�   $��3,0,0,0q�6�   ��64   �� *Name+6�     5�      $ BtnRemoveRecipe��60   $��3��6I   8  8  8�� $��18��5�   *   $��18��65   $��5,0,0,0q�6A   $��Center=�5�   *   $��Right=�5�   *   $ Remove Recipe��5�   *   ��5�   *   �� *DataContext.RemoveCommand+$ 	RTreeView����5�   -   �� y�5�   *   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5�       5�      P� 5�       �@J�IsMouseOver	 . . �5�      �� $ BtnRemoveRecipe��6%    � y�$ Visible=�6X   �� 5�      $ 
gridRecipe��6%   8   � ��6S   5�      5�      �� 5�      " 	 6   .R�5�      � $ gridDFRecipe��6    61   �� *DataContext+$ 	RTreeView�� 5�      �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $��* �6/   �� 5�      $
��Auto �6/   .+�5�      �� $��0��6    8   8  8�� 6�   A� 5�      $��1��6"   $��3q�62   
��� ���$��10��6K   ��6W   �� *ActualHeight+ �� *Self+y�5�   "   �� *
HasChanged+   �� 5�      $��2��6$   $��60��6J   $��Center=�6X   $��NoWrap=�6s   $��CharacterEllipsis=�6�   $��3,0,0,0q�6�   ��64   �� *Name+6�     5�      $ BtnRemoveDFRecipe��60   $��3��6K   8  8  8�� $��18��5�   *   $��18��65   $��5,0,0,0q�6A   $��Center=�5�   *   $��Right=�5�   *   $ Remove Recipe��5�   *   ��5�   *   �� *DataContext.RemoveCommand+$ 	RTreeView����5�   -   �� y�5�   *   �� $ 
IsSelected� �� $ FindAncestor=�" Q�   5�       5�      P� 5�       �@J�IsMouseOver	 . . �5�      �� $ BtnRemoveDFRecipe��6%    � y�$ Visible=�6Z   �� 5�      $ gridDFRecipe��6%   8   � ��6U   5�      5�      5�      *
  $Microsoft.Xaml.Behaviors.Interaction 
  Triggers 5�      +  %Microsoft.Xaml.Behaviors.EventTrigger  5�         	EventName$ SelectedItemChanged��6!   *  $Microsoft.Xaml.Behaviors.TriggerBase    Actions.  5�      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  !   CommandParameter$! argument��6r   "   Command" 6,   �� *31RootTreeViewVM.SelectedTreeViewItemChangedCommand+6r   5�      5�      5      5     
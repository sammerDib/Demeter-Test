   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:UnitySC.Shared.UI.ControlsUnitySC.Shared.UI.Controls  5   	   ?    9UnitySC.Shared.UI.Dialog.ExceptionDialogs.ExceptionDialog   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <control(clr-namespace:UnitySC.Shared.UI.Controls     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � SizeToContent$ WidthAndHeight=�6.   $	��400��5	   	   $	��200��6   $	��600��6(   $	��600��68   $	��500��5   	   $	��600��6    � Title 5   	   �� *Title+ � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   .+�5      ��  	  Error#��[  6   $��40��64   $��40��6?   $��10q�6K   �� 5      $ Vertical=�6   .+�5       �� $��
10,20,20,2q�65   $
��Bold"�6I   ��6   �� *	Message+6I   �� 5!      $��
10,2,20,20q�65   ��6   �� *	Details+65   5"      5#      9� 5%   
   -   5         9�Name$ expander��5%       $��1��6   ��5&      �� 5'      $ 
Horizontal=�6   .+�5(      �� $��Debug informations��6    $��Center=�6:   $��2,0,0,0q�6U   ,   &UnitySC.Shared.UI.Controls.ImageButton  5)        Copy	   Image#	 [ 6*   $��Bottom=�6H   $��Right=�6c   
 � ToolTip$
 
Copy error��6   $��10,0,0,0q�6�   ��6�   �� *CopyCommand+��5*      �� 5+       �� 
TargetType"  6$     TransparentImageButton �� BasedOn# [ 6E   .�5,   "   ��  �� Property � y� �� Value$ 	Collapsed=�6?    �� Triggers 5-   "   �� 5.   &    �� Binding 62   ��  �� ElementName$ expander�� �� Path$ 
IsExpanded� �� Value True6l   .a�5/   *   ��  � y�$ Visible=�6G   50   '   52      54      55      .��57      � $��10q�6   .+�58      ��  �� 
IsReadOnly . $	��600��6G   $ �� HorizontalScrollBarVisibility$
 Auto=�59      " �� VerticalScrollBarVisibility$
 Auto=�6B    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6z   ��58      �� *	DebugInfo+.��59   �   ��5:      �� 5;      " ��6    5<      .��5=   %   5>      5?      5@      �� 5B   
   $��2��6   $��OK��6   $��Right=�5C      $	��100��6)   $��10,10,10,10q�65    �� 	IsDefault . ��5D      �� *	OkCommand+5E      5F      5G      
   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:UnitySC.Shared.UI.ExtensionsUnitySC.Shared.UI.Extensions  5      G(clr-namespace:UnitySC.Shared.UI.ControlsUnitySC.Shared.UI.Controls  5      )    #UnitySC.Shared.UI.Controls.Notifier   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      GsharedExtensions*clr-namespace:UnitySC.Shared.UI.Extensions     5      :local(clr-namespace:UnitySC.Shared.UI.Controls     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a?xamlbehaviors+http://schemas.microsoft.com/xaml/behaviors  5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      � -   5         �Name$ NotifierBell��5   "   $��27��6   $��32��6   .+�5   
   �� $
��Left=�6      BellSolidGeometry+   %UnitySC.Shared.UI.Extensions.ImageExt   SourceGeometry# [  6+      GeometryBrush
 �������5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � y� �� Value$ 	Collapsed=�63   	 �� Triggers	 5      �� 5      
 �� Binding
 6&   �� *CurrentState+ �� Value Disabled6G   .a�5      ��  � y�$ Visible=�6;   5      5       5"      � 5$   
   ��5%      �� 5&      " �6   .�5'      ��  � y�$ 	Collapsed=�63   �� 5(       � {� .  62   	 5)      �� 5*      
 6&   �� *CurrentState+	 Error6G   .a�5+      ��  � y�$ Visible=�6;   �� 5,       � {� . 6:   5-      5/      .+�51      �� $
��Left=�6   # [  6/     ImageErrorColor# [ 6}     ImageShaking#��[ 6�   52      �� 54   
   $
��Left=�6   # [  6+   
 � �����55      �� 56      " ��6   .�57      ��  � y�$ 	Collapsed=�63   	 58      �� 59      
 6&   �� *CurrentState+ Warning6G   .a�5:      ��  � y�$ Visible=�6;   5;      5=      5?      �� 5A   
   $
��Left=�6   # [  6+     
IconsColor# [ 6y   ��5B      �� 5C      " ��6   .�5D      ��  � y�$ 	Collapsed=�63   	 5E      �� 5F      
 6&   �� *CurrentState+ Information6G   .a�5G      ��  � y�$ Visible=�6;   5H      5J      5L      � 5N   
   $��Right=�6   $��Bottom=�6+   $��15��6F   $��15��6R   .+�5O      A� #��[ 6   (� 5P      .��5Q      �� $
��Wrap=�6   $��Center=�6R   $��2q�6o   
���������60   �� *NbUnreadMessages+6z   5R      ��5S      �� 5T      " �6   .�5U      ��  � y�$ Visible=�63   	 5V      �� 5W      
 6&   �� *NbUnreadMessages+ 06K   .a�5X      ��  � y�$ 	Collapsed=�6;   5Y      5[      5]      � 5^   
    � AllowsTransparency . $
��Fade=�5b      $
��Left=�5c       � PlacementTarget 5_      ��  �� ElementName$ NotifierBell����5`      �� *CurrentMessage+ �� Mode$ OneWay=�  IsNotNullToBooleanConverter �� 	Converter# [ .��5d      �� -   5         ��Name$ border��5d   �   
������� �� CornerRadius$ 2��6(     PanelBorderColorBrush#��[ 69   $��2q�6n   $��1q�6�   ._�5e      ��  �� Orientation$ 
Horizontal=�6   .+�5f      ��   Icon#��[ 6�   $��2q�6�   ��6   �� *CurrentMessage.Level+ ) %MessageTypeToImageDictionaryConverter# [ 6�   �� 5g      $��2q�6H   $��50��6S   $	��300��6a   $
��Left=�6p   $��CharacterEllipsis=�6�   ��6    �� *CurrentMessage.Content+6�   5h      5i      5j      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5k   
   +  %Microsoft.Xaml.Behaviors.EventTrigger  5l         	EventName$ MouseUp��6)   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5m      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     CommandParameter$ argument��6T      Command 64   �� *OpenCommand+6T   5n      5p      5q      
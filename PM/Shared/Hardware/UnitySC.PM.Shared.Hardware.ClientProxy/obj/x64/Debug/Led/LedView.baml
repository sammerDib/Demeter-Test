   M S B A M L   `   `   `  ����a  ]UnitySC.PM.Shared.Hardware.ClientProxy, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Led*UnitySC.PM.Shared.Hardware.ClientProxy.Led  5      =    7UnitySC.PM.Shared.Hardware.ClientProxy.Led.View.LedView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:UnitySC.PM.Shared.Hardware.ClientProxy.Led     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a?xamlbehaviors+http://schemas.microsoft.com/xaml/behaviors  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %    5      .��5      � .+�5   
   �  � ColumnDefinitions 5      �� 5      $
��Auto �6#   62   �� 5      $��* �6#   6/   �� 5      $
��Auto �6#   62   �� 5      $��* �6#   6/    � RowDefinitions 5      �� 5      $
��Auto �6    60   �� 5      $
��Auto �6    60   �� 5      $
��Auto �6    60   �� 5      $
��Auto �6    60   �� 5       $
��Auto �6    60   �� 5!      $
��Auto �6    60   �� 5"      $��* �6    6-   .+�5%      �� $��0��6   $��0��6!   $	��IP:��61   $��5q�6?   �� 5&      $��0��6   $��1��6#   $��23��63   $��5q�6?   ��5'      ��  �� Path$ 	IpAddress� �� UpdateSourceTrigger$ PropertyChanged=��� 5)      $��0��6   $��2��6!   $��Port:��61   $��5q�6A   �� 5*      $��0��6   $��3��6#   $��23��63   $��5q�6?   ��5+      �� $ 
PortNumber�$ PropertyChanged=�d� 5-      $��1��6   $��0��6(   $��2��68   $��5q�6L    d� 	IsChecked 5.      �� $ LedActivated� �� Mode$ OneWay=�$ PropertyChanged=���5/      �� $ ActivateLed���50      �� $ LedActivated�$ PropertyChanged=���51      �� 52      	 �� 
TargetType"	 d�6   .�53      �� 
 �� Property
 � �� �� Value$ Turn On��64   �� 54      
 � ��
 �  ��67    �� Triggers 55      �� 56       �� Binding 6*   �� $ LedActivated� �� Value True6P   .a�57   "   �� 
 � ��$ Turn Off��6<   �� 58   "   
 � ��
 � � �6?   59      �� 5:       6*   �� $ LedActivated�	 False6P   .a�5;   "   �� 
 � ��$ On��6<   �� 5<   "   
 � ��
 �  ��6?   5=      5?      5A      �� 5C      $��1��6   $��2��6!   $��	NbModule:��61   $��5q�6E   �� 5D      $��1��6   $��3��6!   $��5q�6x   ��61   �� $ NbModule�$ PropertyChanged=�6x   �� 5F      $��2��6   $��0��6!   $��Command:��61   $��5q�6D   �� 5G      -   5         ��Name$ CommandText��5G   G   $��2��6   $��1��6#   $��2��63   $��5q�6\   �� 5H      $��2��6   $��3��6"   $��5q�62   $��GO��5I      
���������5J      �� *SendCommand+��5K      ��  �� ElementName$ CommandText��$
 Text�$ TwoWay=�$ PropertyChanged=��� 5M      $��3��6   $��0��6!   $��Intensité globale:��61   $��5q�6N   �� 5N      -   5         ��Name$ 	GLISlider��5N   m   $��3��6   $��1��6"   $��3��62   $��5q�6F    �� TickPlacement$ BottomRight=�6Q    � Minimum$ 0Q�5P       � Maximum$
 1000Q�6!   {�5O      �� $ LedActivated�$ OneWay=�$ PropertyChanged=�*  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5Q      +  %Microsoft.Xaml.Behaviors.EventTrigger  5R         	EventName$ ValueChanged��61   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5S      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 6<   �� $ 	ChangeGLI�   CommandParameter 6_   �� *Value+$ 	GLISlider��5T      5V      �� 5X      $��5��6   $��0��6!   $��2��61   $��LED response:��6E   �� 5Y      $��6��6   $��0��6#   $��4��63   ��6G   �� *	Responses+$ OneWay=�5Z      5[      5\      
   M S B A M L   `   `   `  ����e  aUnitySC.PM.DMT.Client.Modules.TestHardware, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullq=clr-namespace:UnitySC.PM.DMT.Client.Modules.TestHardware.View/UnitySC.PM.DMT.Client.Modules.TestHardware.View  5      �Eclr-namespace:UnitySC.PM.DMT.Client.Modules.TestHardware.DMTConverter7UnitySC.PM.DMT.Client.Modules.TestHardware.DMTConverter  5      D    >UnitySC.PM.DMT.Client.Modules.TestHardware.View.DummyDMTScreen   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Olocal=clr-namespace:UnitySC.PM.DMT.Client.Modules.TestHardware.View     5      \
convertersEclr-namespace:UnitySC.PM.DMT.Client.Modules.TestHardware.DMTConverter     5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $" ../../Style/GlobalStyle.xaml?�6%   �� 5      $&  ../../Style/ImageDictionary.xaml?�6%   �� 5      $ ../../DataTemplate.xaml?�6%   %    5      .��5      � .+�5   
   ��  �� CornerRadius$ 10��6   $��20,25,20,20q�6#   $��Center=�6A   $��Center=�6^   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    � MappingMode$ RelativeToBoundingBox=�67    �� 
StartPoint$ 0.5,0&�6[   .��5      �  � Color$ 	#FF515151��6#    � Offset$
 0.99Q�65   � 5      $ 	#FF212121��6#   5      ._�5      � $��-1q�6   .+�5      (� 	 (� Stretch$	 Uniform=�6   .��5      �� $��Stretch=�6   $��Stretch=�6;   
������ ��5       �� 
 �� RelativeSource
 �� *FindAncestor+ �� AncestorTypeJ   DUnitySC.PM.DMT.Client.Modules.TestHardware.View.LuminanceScreensView"   �� Path$ DataContext.ScreenWidth���5!      �� 
 �� *FindAncestor+"  $ DataContext.ScreenHeight�.+�5#      ��  �� Orientation$ Vertical=�6%   .+�5$      �� $��0q�5)   !      ScreenCircle#��[  5+   !   ��5%   !   �� *	Grayscale+ �� 	Converter W   QUnitySC.PM.DMT.Client.Modules.TestHardware.DMTConverter.GrayscaleToColorConverter  ��5&   !   �� *LuminancePoints+��5'   !   �� 
 �� *FindAncestor+"  $ DataContext.ScreenWidth���5(   !   �� 
 �� *FindAncestor+"  $ DataContext.ScreenHeight� �� SelectedItem 5*   !   �� *SelectedPoint+  5,   "    �� 
TargetType �� Property �� Value��%T   '��       �� 5-   &   " ��6,   .�5.   *   ��  � ��
 ���� 6G   5/   '   50   #   ��51   "   �� 52   &   .R�53   *   �� $��Stretch=�61   $��Stretch=�6O   54   '   ��56   "   �� 57   &   .R�58   *   � .+�59   .   A�  A�Name$ circle��5:   ^   
�������  ImageValidColor#��[ 66   ��5;   6   �� 
 �� *FindAncestor+"  $&  DataContext.CircleStrokeTickness���5<   6   �� 
 �� *FindAncestor+"  $# DataContext.MeasureCircleSize���5=   6   �� 
 �� *FindAncestor+"  $# DataContext.MeasureCircleSize��� 5>   .   $ Vertical=�69   $��Center=�6P   $��Center=�5?   9   .+�5@   2   ��  ��Name$ measure��5D   <   $
��Bold"�5A   <   $��12(�5B   <   
���������5@   <   �� *Name+5D   <   �� 5E   2    ��Name$ measureStack��5F   =   $ 
Horizontal=�5E   =   $��Center=�6V   .+�5G   6   �� $ measureValue��5H   @   $
��Bold"�5I   @   $��12(�5J   @   
���������5G   @   �� *	Luminance+5K   @   �� 5L   6   $ measureUnit��5M   @   $��Cd/m²��5L   @   $
��Bold"�5N   @   $��12(�5O   @   
�������$	��2,0q�5Q   @   5R   3   5S   /   5T   +    �� Triggers 5U   *   �� 5V   .    �� Binding 6:   �� *	Luminance+ �� Value 6X   Z� .a�5W   2   ��  �� 
TargetName$ circle��69    � ��
 ���� 6]   �� 5X   2   $ circle��69    5Y   9   �� 
 �� *FindAncestor+" >�$ DataContext.Grayscale� \   VUnitySC.PM.DMT.Client.Modules.TestHardware.DMTConverter.GrayscaleToForegroundConverter   � ���� 5Z   2   $ measure��69    5[   9   �� 
 �� *FindAncestor+" >�$ DataContext.Grayscale�    � ���� 5\   2   $ measureStack��69    � y�$ 	Collapsed=�5]   9   5^   /   �� 5_   .   $
 True��5a   1    5`   1   �� 
 ��  �� Mode$ FindAncestor=�" ��$ 
IsSelected�.a�5b   2   �� $ circle��69     SelectedItemColor# [ 5c   9    � ��5d   /   5f   '   5h      5i      5j      5k      5l      5m      5n      5o      
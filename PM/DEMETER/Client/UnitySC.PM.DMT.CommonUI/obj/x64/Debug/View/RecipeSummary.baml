   M S B A M L   `   `   `  ����R  NUnitySC.PM.DMT.CommonUI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:UnitySC.PM.DMT.CommonUI.ViewModel!UnitySC.PM.DMT.CommonUI.ViewModel  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      U/clr-namespace:UnitySC.PM.DMT.CommonUI.Converter!UnitySC.PM.DMT.CommonUI.Converter  5	      0    *UnitySC.PM.DMT.CommonUI.View.RecipeSummary   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >vm/clr-namespace:UnitySC.PM.DMT.CommonUI.ViewModel     5      XcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      ?	converter/clr-namespace:UnitySC.PM.DMT.CommonUI.Converter  5	        � 	Resources  5      7   1UnitySC.PM.DMT.CommonUI.ViewModel.RecipeSummaryVM   RecipeSummaryViewModel  EnabledMeasuresFront �� Source �� Path  EnabledMeasuresBack  MeasureOutputTemplate �� 	ConverterB   <UnitySC.PM.DMT.CommonUI.Converter.GetStringResourceConverter  MeasureTemplate � ColumnDefinitions �� MergedDictionaries �� Source�� 5   
    5(      �� 5*      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %P  &	        &	      &	 `     &	 �     &	 $    7    5      6!   �� 5      -   5         5      �� $ EnabledMeasures�5      �� 5      -   5         5      �� $ EnabledMeasures�5      �� 5      .R�5      � $��0,0,0,5q�6   .+�5      �� ��6    �� *.+   6h   5      5      �� 5      .R�5      � $��0,0,0,10q�6    5      �� 5       $	��200 �6+   �� 5!      $��* �6+   .+�5#      �� ��6    �� *Name+68   �� 5$      $��1��6#   8��  ��64   �� *	Outputs+6�   5%      5&      5,      .��5.      � .+�5/      ��   MainMenuBackground#��[ 6    J� Opacity$	 0.2Q�6>   $��-4q�6L   6Z   �� 50      $
��Auto=�6   .��51   
   � .+�55   
   �  56      �� 57      $��2* �6#   �� 58      $��* �6#   .+�5:      �� $��1��6    	 Timer#��[ 6%   $��Bottom=�6F   $ .3Q�6a   5;      � 5<   
     FormGrid#��[ 6    � RowDefinitions 5=      �� 5>      $
��Auto �6    �� 5?      $��* �6    �� 5@      $
��Auto �6    .+�5B      �  5C      �� 5D      $
��Auto �6$   �� 5E      $
��Auto �6$   �� 5F      $
��Auto �6$   �� 5G      $
��Auto �6$   �� 5H      $
��Auto �6$   �� 5I      $
��Auto �6$   �� 5J      $
��Auto �6$   �� 5K      $
��Auto �6$   �� 5L      $
��Auto �6$   �� 5M      $
��Auto �6$   �� 5N      $
��Auto �6$    5P      �� 5Q      $
��Auto �6'   �� 5R      $��* �6'   .+�5U      �� $
��Name��6   $��5,5,10,5q�6(   $��14(�6:   $��Normal"�6H   �� 5V      $��1��6   $��14(�6S   ��6-   �� *DisplayedRecipe.Name+6S   �� 5W      $��1��6   $��Version��6)   $��5,5,10,5q�68   $��14(�6J   $��Normal"�6X   �� 5X      $��1��6   $��1��6)   $��14(�6c   ��6:   �� *DisplayedRecipe.Version+6c   �� 5Y      $��2��6   $��Creator��6)   $��5,5,10,5q�68   $��14(�6J   $��Normal"�6X   �� 5Z      $��2��6$   $��1��61   $��14(�6\   ��6B   �� *
UserName+6\   �� 5[      $��3��6   $��Creation Date��6)   $��5,5,10,5q�6>   $��14(�6P   $��Normal"�6^   �� 5\      $��3��6   $��1��6)   $��14(�6c   ��6:   �� *DisplayedRecipe.Created+6c   �� 5]      $��4��6   $
��Step��6)   $��5,5,10,5q�65   $��14(�6G   $��Normal"�6U   �� 5^      $��4��6   $��1��6)   $��14(�6T   ��6:   �� *
StepName+6T   � 5_      $��6��6   $��1��6$   $��0,10,0,0q�64    5`      �� 5a      $	��200 �6+   �� 5b      $��* �6+   .+�5d      �� $��0,0,0,1q�6   
���   �._�5e      �� $��14(�6$   $��Normal"�62   
Measures6P   5f      �� 5g      $��1��6   $��0,0,0,1q�6.   
���   �._�5h      �� $��14(�6$   $��Normal"�62   	Outputs6O   5i      5j      �� 5k      $��7��6   $��Front��6)   $��5,5,10,5q�66   $	��Top=�6H   $��14(�6`   $��Normal"�6n   �� 5l      $��7��6   $��1��6&   $��0,0,0,1q�66   
���   �._�5m      �� #��[ 6d   $��5q�6�   $��14(�6�   $
��Bold"�6�   ��6   �� 	 �� Source#	 [ 6�   5n      �� 5o      $��8��6    $
��Back��6-   $��5,5,10,5q�69   $	��Top=�6K   $��14(�6c   $��Normal"�6q   �� 5p      $��8��6   $��1��6&   $��0,0,0,1q�66   
���   �._�5q      �� #��[ 6d   $��5q�6�   $��14(�6�   $
��Bold"�6�   ��6    �� #	 [ 6�   5r      �� 5t      $��9��6    $��Comment��6-   $	��Top=�6<   $��14(�6T   $��Normal"�6b   $��5,20,0,0q�6v   �� 5u      $��9��6    $��1��6-   $��0,20,0,0q�6�   $��14(�6�   $
��Wrap=�6�   $��50��6�   ��6=   �� *DisplayedRecipe.Comment+
 �� UpdateSourceTrigger$
 PropertyChanged=�6�   5w      � 5y      $��1��6   $��4q�6    5z      5{      %  Xceed.Wpf.Toolkit.BusyIndicator  5|   
      IsBusy 6   �� *IsBusy+5}      5~      5      5�      
   M S B A M L   `   `   `  ����O  KUnitySC.PM.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nulla5clr-namespace:UnitySC.PM.Shared.UI.Administration.Log'UnitySC.PM.Shared.UI.Administration.Log  5      L HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullbCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls 5      ^Aclr-namespace:UnitySC.Shared.UI.Helper;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Helper 5	      5    /UnitySC.PM.Shared.UI.Administration.Log.LogView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      Alocal5clr-namespace:UnitySC.PM.Shared.UI.Administration.Log  5      RcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  5      LHelpAclr-namespace:UnitySC.Shared.UI.Helper;assembly=UnitySC.Shared.UI  5	        � 	Resources  5       �� MergedDictionaries �� SourceE   ?UnitySC.PM.Shared.UI.Administration.Log.LogAreaToImageConverter   LogAreaToImageConverterB   <UnitySC.PM.Shared.UI.Administration.Log.LogToActionConverter  LogToActionConverter�� 5   
    5      �� 5      $P Jpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStyles.xaml?�6%   �� 5      $S Mpack://application:,,,/UnitySC.Shared.UI;component/Styles/UnityStylesNew.xaml?�6%   %:   &	        &	        5      6,     5      6)   5      .��5      �   PanelBackgroundBrush#��[ 6     FormGrid#��[ 6>    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,   .+�5   
   ��   BorderPanel#��[ 6     PanelTitleBackgroundBrush#��[ 66   ._�5       ��  �� Orientation$ 
Horizontal=�6   .+�5"      �� $
��User��6   �� 5#      $	��100��69   ��6   �� *Users+ �� SelectedItem 6H   �� *SelectedUser+��5$      �� 5%      .R�5&      �� $ 
Horizontal=�6)   .+�5'   "   ��   User#��[ 6(     Icon#��[ 6�   $��0,0,4,0q�6�   y�6H   �� *WrappedObject+  NullToVisibilityConverter �� 	Converter# [ 6�   �� 5(   "   ��6,   �� 5)      5*      5,      �� 5/      $
��Area��6   �� 50      $	��100��69   ��6   �� *Areas+ 6H   �� *SelectedArea+��51      �� 52      .R�53      �� $ 
Horizontal=�6)   .+�54   "   �� #��[ 6�   $��0,0,4,0q�6�   ��6(   �� *WrappedObject+# [  y�6~   �� *WrappedObject+# [ 6�   �� 55   "   ��6,   �� 56      57      59      �� 5<      $��Action��6   �� 5=      $	��100��6<   ��6   �� *	Actions+ 6K   �� *SelectedAction+��5>      �� 5?      .R�5@      �� $ 
Horizontal=�6)   .+�5A   "   �� #��[ 6�   $��0,0,4,0q�6�   ��6(   �� *WrappedObject+# [ y�6z   �� *WrappedObject+# [ 6�   �� 5B   "   ��6,   �� 5C      5D      5F      �� 5I      $
��Date��6   &   Xceed.Wpf.Toolkit.DateTimePicker  5J      &   Xceed.Wpf.Toolkit.DateTimeUpDown   Format$ Custom=�6&      FormatString$ G��66   $	��100��6G   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]	   Value	 6V   �� *	StartDate+�� 5K      $��0q�6   $��22��6%   $��-4,0,0,0q�61   
 � ToolTip$
 
Clear date��6C   ��6X   �� *ClearStartDateCommand+.��5L      ��  
	 Delete#��[	 6   $��12��6=   $��2q�6I   5M      �� 5N      $��to��6     5O      $ Custom=�6&   $ G��66   $	��100��6G   	 6V   �� *	EndDate+�� 5P      $��0q�6   $��22��6%   $
 
Clear date��61   $��-4,0,0,0q�6F   ��6X   �� *ClearEndDateCommand+.��5Q      �� #��[	 6   $��12��6=   $��2q�6I   5R      �� 5S      $��Detail��6   (  "Xceed.Wpf.Toolkit.WatermarkTextBox  5T         	Watermark$ Search on detail��6e   $	��100��6�   $��Center=�6�   $��4q�6�   ��6(   �� *Detail+ �� UpdateSourceTrigger$ PropertyChanged=�6�   ,  &UnitySC.Shared.UI.Controls.ImageButton  5U      $
 Apply filter��6'   $��Apply��6>   $��8,0,0,0q�6N    

 Filter   Image# [
 6�   ��6_   �� *ApplyFilterCommand+6�   5V      5W      �� 5Z   
   $��1��6   $ �� IsSynchronizedWithCurrentItem$
 TrueY�5[      +  %UnitySC.Shared.UI.Helper.GridViewSort   AutoSort . ��5Z       �� *Logs+ �� View 5]      �� 5^      .P�5_      ��  �� Width$
 Auto��6%   $
��Area��62      PropertyName$ Table��6@    �� CellTemplate 5`      �� 5a      .R�5b   "   �� $ 
Horizontal=�6-   .+�5c   &   �� #��[ 6�   $��0,0,4,0q�6�   ��6,   �� *Table+# [  y�6z   �� *	TableType+# [ 6�   �� 5d   &   ��60   �� *Table+5e   #   5f      5h      �� 5i      $
 Auto��6%   $��Action��62   $ Action��6B    5j      �� 5k      .R�5l   "   �� $ 
Horizontal=�6-   .+�5m   &   �� #��[ 6�   $��0,0,4,0q�6�   ��6,   �� *Action+# [ y�6x   �� *
ActionType+# [ 6�   �� 5n   &   ��60   �� *Action+5o   #   5p      5r      �� 5s      $
 Auto��6%   $
��User��62   $ 
User.Login��6@    5t      �� 5u      .R�5v   "   �� $ 
Horizontal=�6-   .+�5w   &   �� #��[ 6,   #��[ 6�   $��0,0,4,0q�6�   y�6K   �� *User+# [ 6�   �� 5x   &   ��60   �� *User+5y   #   5z      5|      �� 5}      $
 Auto��6%   $
��Date��62   $
 Date��6@    5~      �� 5      .R�5�   "   �� ��6,   �� *Date+5�      5�      �� 5�      $
 Auto��6%   $��Detail��62   $ Detail��6B    5�      �� 5�      .R�5�   "   �� ��6,   �� *Detail+5�      5�      5�      5�      %	  Xceed.Wpf.Toolkit.BusyIndicator	  5�   
   $��1��6    	  DisplayAfter$ 0h�6V    	  IsBusy 6*   �� *IsBusy+6V   � 5�   
   $��2��6   #��[ 6   .+�5�      �� $��Right=�6   $ 
Horizontal=�65   $��0,0,35,0q�6N   .+�5�      �� $	��2,4q�66   $��Center=�6C   ��6   �� *
NbResult+6C   �� 5�      $��Results��6   $	��2,4q�6+   $��Center=�68     5�       
 Export# [ 6'   $
 Export logs as csv��6j   $��Export��6�   ��6H   �� *ExportCommand+6�   5�      5�      5�      5�      
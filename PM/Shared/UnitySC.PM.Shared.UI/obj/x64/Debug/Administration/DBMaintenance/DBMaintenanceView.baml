   M S B A M L   `   `   `  ����L  HUnitySC.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullfEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Converters  5      O KUnitySC.PM.Shared.UI, Version=1.2.6.0, Culture=neutral, PublicKeyToken=nullu?clr-namespace:UnitySC.PM.Shared.UI.Administration.DBMaintenance1UnitySC.PM.Shared.UI.Administration.DBMaintenance 5      bCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UIUnitySC.Shared.UI.Controls  6\   I   CUnitySC.PM.Shared.UI.Administration.DBMaintenance.DBMaintenanceView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      V
convertersEclr-namespace:UnitySC.Shared.UI.Converters;assembly=UnitySC.Shared.UI  5      Klocal?clr-namespace:UnitySC.PM.Shared.UI.Administration.DBMaintenance  5      RcontrolsCclr-namespace:UnitySC.Shared.UI.Controls;assembly=UnitySC.Shared.UI  6\   .��5      �    PanelBackgroundBrush#��[  6     � ColumnDefinitions  5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   � $��
10,0,10,10q�6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      ��   TitleLevel1#��[ 6   $��	0,10,0,10q�69   .��6L   DATABASE BACKUPS6^   ,   &UnitySC.Shared.UI.Controls.ImageButton  5      $��1��6#     SaveGeometry   ImageGeometry# [ 6M     
IconsColor   ImageGeometryBrush# [ 6{   $
��10,0q�6�   ��60   �� *
BackupDB+.��6�   
New Backup6�   �� 5      $��2��6     TitleLevel2#��[ 6!   $��5,10,0,0q�6F   .��6X   EXISTING BACKUPS6j   �� 5      $��3��6     ListBoxWithoutSelection#��[ 6N   $
��10,0q�6   ��6#   �� *AvailableDBBackups+��5      �� 5      .R�5      �   5      �� 5   "   $	��150 �63   6A   �� 5    "   $��* �63   6?   �� 5!   "   $
��Auto �63   6B   .+�5#      �� $	��5,0q�6f   $��Center=�6s   ��6(   �� *Date+ �� StringFormat$ {0:dd/MM/yyyy HH:mm:ss}��6s   �� 5$      $��1��6(   $	��5,0q�6P   $��Center=�6]   ��68   �� *DBName+6]   �� 5%      $��2��6%   $��2q�65   ��6@   �� *DataContext.RestoreDB+ �� RelativeSource �� *FindAncestor+ �� AncestorType" >���6�   �� .��6�   	Restore6�   5&      5'      5)      5*      � 5+   
   $��1��6   $
��10,0q�6    5,      �� 5-      $
��Auto �6    �� 5.      $
��Auto �6    �� 5/      $
��Auto �6    �� 50      $��* �6    .+�52      �� #��[ 6   $��	0,10,0,10q�69   .��6L   DATABASE REPAIR6]     53      $��1��6#     MaintenanceModeGeometry# [ 6M   # [ 6�   $
��10,0q�6�   ��60   �� *
RepairDB+.��6�   Clean Up / Repair6�   54      %  Xceed.Wpf.Toolkit.BusyIndicator  55   
   $��2��6      DisplayAfter$ 0h�6]      IsBusy 61   �� *IsBusy+	   BusyContent	 56      �� 57      $��4q�6   .+�58      �� $
��Bold"�6;   $��Center=�6M   ��6    �� *	BusyTitle+6M   �� 59      $��4q�6!   .+�5:      �� $
��Bold"�6A   $��Center=�6S   ��6$   �� *BusyMessage+6S   � 5;      $��5q�6E   $��15��6P   
 � Maximum$	
 100Q�6\    � Value 6&   �� *BusyProgress+6\   5<      5=         ProgressBarStyle 5?      �� 5@       �� 
TargetType" �6   .�5A      ��  �� Property � y� �� Value$ 	Collapsed=�63   5B      .��5D      �� 5E      5F      5G      
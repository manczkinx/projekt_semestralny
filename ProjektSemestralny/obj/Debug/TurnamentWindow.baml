   M S B A M L   `   `   `  ����M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  5   	   (    "ProjektSemestralny.TurnamentWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ProjektSemestralny     5   	   -   5          � Title$  Lista Zawodów��5   	   $	��600��6   $
��1000��6,    � 	Resources 5	      (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  turnamentViewSource �� Source �� Source��%Z   &	        &	      7     5
   
   6    �� 5   
    6;   �� *	Turnament+8   5      .��5      �  � DataContext# [ 6   ��5   
   �� 5       �� ImageSource$ /background.jpg��6   .+�5   
   �� -   5         ��Name$ TurnamentNameBlock��5      $
��Left=�60   $��311,349,0,0q�6K   $
��Wrap=�6`   $��Nazwa Zawodów��6t   $	��Top=�6�   $��28��6�   $	��134��6�   $
��Bold"�6�   $��16(�6�   
�������6�   �� 5   
   -   5        $ TurnamentDateBlock��5      $
��Left=�60   $��311,399,0,0q�6K   $
��Wrap=�6`   $	��Top=�6t   $��28��6�   $	��134��6�   $
��Bold"�6�   $��16(�6�    J� RenderTransformOrigin$ 4.291,-2.911&�6�   
��������� 6�   $
�Data��6  �� 6  $�	 Zawodów��6  6&  �� 5   
   -   5         ��Name$ TurnamentNameBox��5      $
��Left=�6,   $��28��6G   $��450,349,0,0q�6S   	 �� TextWrapping$
	 Wrap=�6h   $	��Top=�6|   $	��224��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 
 �� SelectionBrush
 6�   Z� 6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ TurnamentDateBox��5      $
��Left=�6/   $��450,399,0,0q�6J   $	��Top=�6_   $	��224��6w   $��28��6�   ���	#FF0F0F2D$
��Bold"�6�   ��6�   Z� 6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ turnamentDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��250,10,250,245.5q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�      CanUserAddRows .  
����������	#FF0F0F2D��6i   �� ��6  Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        turnamentNameColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Nazwa Zawodów��5   d      Width5  /System.Windows.Controls.DataGridLengthConverter$	 275 6{   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   �� *TurnamentName+6{   4  .System.Windows.Controls.DataGridTemplateColumn  5      -   5        turnamentDateColumn��$ Data Zawodów��5   F   $	 200 6\      CellTemplate 5      �� 5      .R�5           SelectedDate 6)   �� *TurnamentDate+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 5      5      5       �� 5!   
   -	   5         ��Name$ 
BackButton��5!      $��Powrót��6%   $
��Left=�66   $��50��6Q   $��
90,480,0,0q�6]   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   
���   ����	#FF0F0F2D��5"      �� 5#       �� EndPoint$	 1,1&�6&    �� 
StartPoint$	 0,0&�65   .��5$      �  � Color$ Black��6#    � Offset$ 0Q�61   � 5%      $ 	#FFFFFE05��6#   $	 0.5Q�65   � 5&      $ Black��6#   $ 1Q�61   5'      ��5)      �� 5*       �� 
TargetType" ��6"   .R�5+      ��   �� CornerRadius$  20��5,      #��z��5-      ._�5.      �� $��Center=�6+   $��Center=�5/      50      51      53      �� 54   
   -
   5        $ 
SendButton��54      $��Dodaj��6%   $
��Left=�65   $��50��6P   $��320,480,0,0q�6\   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��55      �� 56      $	 1,1&�6&   $	 0,0&�65   .��57      � $ 	#FFFFFE05��6#   $ 0Q�65   � 58      $ Black��6#   $	 0.5Q�61   � 59      $ 	#FFFFFE05��6#   $ 1Q�65   5:      ��5=      �� 5>      " ��6"   .R�5?      �� $  20��5@      #��z��5A      ._�5B      �� $��Center=�6+   $��Center=�5C      5D      5E      5H      �� 5I   
   -   5        $ UpdateButton��5I      $��
Aktualizuj��6'   $
��Left=�6<   $��50��6W   $��549,480,0,0q�6c   $	��Top=�6x   $	��125��6�   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5J      �� 5K      $	 1,1&�6&   $	 0,0&�65   .��5L      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5M      $ Black��6#   $	 0.5Q�61   � 5N      $ 	#FFFFFE05��6#   $ 1Q�65   5O      ��5Q      �� 5R      " ��6"   .R�5S      �� $  20��5T      #��z��5U      ._�5V      �� $��Center=�6+   $��Center=�5W      5X      5Y      5[      �� 5\   
   -   5        $ DeleteButton��5\      $��Usuń��6'   $��50��66   $��780,480,90,0q�6B   $	��Top=�6X   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5]      �� 5^      $	 1,1&�6&   $	 0,0&�65   .��5_      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5`      $ Black��6#   $	 0.5Q�61   � 5a      $ 	#FFFFFE05��6#   $ 1Q�65   5b      ��5d      �� 5e      " ��6"   .R�5f      �� $  20��5g      #��z��5h      ._�5i      �� $��Center=�6+   $��Center=�5j      5k      5l      5n      5o      5p      
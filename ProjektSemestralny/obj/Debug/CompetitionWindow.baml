   M S B A M L   `   `   `  ����M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  5   	   *    $ProjektSemestralny.CompetitionWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ProjektSemestralny     5   	   -   5          � Title$  Lista Konkurencji��5   	   $	��600��6#   $
��1000��60    � 	Resources 5	      (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  competitionsViewSource �� Source �� Source��%]   &	        &	      7     5
   
   6    �� 5   
    6>   �� *Competitions+8   5      .��5      �  � DataContext# [ 6   ��5   
   �� 5       �� ImageSource$ /background.jpg��6   .+�5   
   �� -   5         ��Name$ 
ShortBlock��5      $
��Left=�6(   $��298,368,0,0q�6C   $
��Wrap=�6X   $��Skrót konkurencji��6l   $	��Top=�6�   $��28��6�   $	��141��6�   $
��Bold"�6�   $��16(�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5   
   -   5        $ 	NameBlock��5      $
��Left=�6'   $��298,400,0,0q�6B   $
��Wrap=�6W   $��Nazwa Konkurencji��6k   $	��Top=�6�   $��28��6�   $	��158��6�   $
��Bold"�6�   $��16(�6�   
������� 5        5      5      �� 5   
   -   5         ��Name$ ShortBox��5      $
��Left=�6$   $��28��6?   $��465,368,0,0q�6K   	 �� TextWrapping$
	 Wrap=�6`   $	��Top=�6t   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 
 �� SelectionBrush
 6�   Z� �� 5   
   -   5        $ NameBox��5      $
��Left=�6#   $��28��6>   $��465,400,0,0q�6J   $
	 Wrap=�6_   $	��Top=�6s   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 
 6�   Z� 6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ competitionsDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��290,10,290,243.5q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�      CanUserAddRows .  ���	#FF0F0F2D
���������6l   �� ��6�   Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        	cutColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Skrót��5   P      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6_   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *Cut+6_     5       -   5        competitionNameColumn��$ Nazwa Konkurencji��5    h   $	 345 6�    6D   �� *CompetitionName+6�   5"      �� 5#   
   -	   5         ��Name$ 
BackButton��5#      $��Powrót��6%   $
��Left=�66   $��50��6Q   $��
90,484,0,0q�6]   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   
���   ����	#FF0F0F2D��5$      �� 5%       �� EndPoint$	 1,1&�6&    �� 
StartPoint$	 0,0&�65   .��5&      �  � Color$ Black��6#    � Offset$ 0Q�61   � 5'      $ 	#FFFFFE05��6#   $	 0.5Q�65   � 5(      $ Black��6#   $ 1Q�61   5)      ��5+      �� 5,       �� 
TargetType" ��6"   .R�5-      ��  �� CornerRadius$ 20��5.      #��z��5/      ._�50      �� $��Center=�6+   $��Center=�51      52      53      55      �� 56   
   -
   5        $ 
SendButton��56      $��Dodaj��6%   $
��Left=�65   $��50��6P   $��314,484,0,0q�6\   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��57      �� 58      $	 1,1&�6&   $	 0,0&�65   .��59      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5:      $ Black��6#   $	 0.5Q�61   � 5;      $ 	#FFFFFE05��6#   $ 1Q�65   5<      ��5>      �� 5?      " ��6"   .R�5@      �� $ 20��5A      #��z��5B      ._�5C      �� $��Center=�6+   $��Center=�5D      5E      5F      5H      �� 5I   
   -   5        $ UpdateButton��5I      $��
Aktualizuj��6'   $
��Left=�6<   $��50��6W   $��545,484,0,0q�6c   $	��Top=�6x   $	��125��6�   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5J      �� 5K      $	 1,1&�6&   $	 0,0&�65   .��5L      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5M      $ Black��6#   $	 0.5Q�61   � 5N      $ 	#FFFFFE05��6#   $ 1Q�65   5O      ��5Q      �� 5R      " ��6"   .R�5S      �� $ 20��5T      #��z��5U      ._�5V      �� $��Center=�6+   $��Center=�5W      5X      5Y      5[      �� 5\   
   -   5        $ DeleteButton��5\      $��Usuń��6'   $��50��66   $��769,484,90,0q�6B   $	��Top=�6X   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5]      �� 5^      $	 1,1&�6&   $	 0,0&�65   .��5_      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5`      $ Black��6#   $	 0.5Q�61   � 5a      $ 	#FFFFFE05��6#   $ 1Q�65   5b      ��5d      �� 5e      " ��6"   .R�5f      �� $ 20��5g      #��z��5h      ._�5i      �� $��Center=�6+   $��Center=�5j      5k      5l      5n      5o      5p      
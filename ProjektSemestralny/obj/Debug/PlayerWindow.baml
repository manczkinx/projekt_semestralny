   M S B A M L   `   `   `  ����M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  5   	   %    ProjektSemestralny.PlayerWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ProjektSemestralny     5   	   -   5          � Title$  Lista Zawodników��5   	   $	��600��6"   $
��1000��6/    � 	Resources 5	      (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  playersViewSource �� Source �� Source��%X   &	        &	      7     5
   
   6    �� 5   
    69   �� *	Players+8   5      .��5      �  � DataContext# [ 6   ��5   
   �� 5       �� ImageSource$ /background.jpg��6   .+�5   
   �� -   5         ��Name$ PlayerNameBlock��5      $
��Left=�6-   $��115,327,0,0q�6H   $
��Wrap=�6]   $��Imię*��6q   $	��Top=�6~   $��28��6�   $	��100��6�   $
��Bold"�6�   $��16(�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5   
   -   5        $ PlayerSecondNameBlock��5      $
��Left=�63   $��115,371,0,0q�6N   $
��Wrap=�6c   $��	Nazwisko*��6w   $	��Top=�6�   $��28��6�   $	��100��6�   $
��Bold"�6�   $��16(�6�   
������� 5        5      5      �� 5   
   -   5        $ 	ClubBlock��5      $
��Left=�6'   $��115,418,0,0q�6B   $
��Wrap=�6W   $	��Top=�6k   $��28��6�   $	��100��6�   $
��Bold"�6�   $��16(�6�   
������� 5        5      �� 5   !   $�Klub*��6%   �� 64   �� 6@   6G   �� 5   
   -   5        $ LicenseBlock��5      $
��Left=�6*   $��524,327,0,0q�6E   $
��Wrap=�6Z   $	��Top=�6n   $��28��6�   $	��124��6�   $
��Bold"�6�   $��16(�6�   
������� 5         5!      �� 5"   !   $�Numer Licencji��6%   �� 6=   �� 6I   6P   �� 5#   
   -   5        $ PhoneNumberBlock��5#      $
��Left=�6.   $��524,372,0,0q�6I   $
��Wrap=�6^   $	��Top=�6r   $��42��6�   $	��124��6�   $
��Bold"�6�   $��16(�6�   
������� 5$        5%      �� 5&   !   $�Numer Telefonu��6%   �� 6=   �� 6I   6P   �� 5'   
   -   5        $ 
EmailBlock��5'      $
��Left=�6(   $��524,419,0,0q�6C   $
��Wrap=�6X   $��E-mail��6l   $	��Top=�6z   $��28��6�   $	��100��6�   $
��Bold"�6�   $��16(�6�   
������� 5(        5)      5+      �� 5,   
   -   5         ��Name$ PlayerEmailBox��5,      $
��Left=�6*   $��28��6E   $��666,419,0,0q�6Q   	 �� TextWrapping$
	 Wrap=�6f   $	��Top=�6z   $	��228��6�   $��16(�6�   ���	#FF0F0F2D
 �� SelectionBrush
 6�   Z� �� 5-   
   -	   5        $ PlayerPhoneNumberBox��5-      $
��Left=�60   $��28��6K   $��666,372,0,0q�6W   $
	 Wrap=�6l   $	��Top=�6�   $	��228��6�   $��16(�6�   ���	#FF0F0F2D
 6�   Z� 6�   �� 5.   
   -
   5        $ PlayerLicenseBox��5.      $
��Left=�6,   $��28��6G   $��666,327,0,0q�6S   $
	 Wrap=�6h   $	��Top=�6|   $	��228��6�   $��16(�6�   ���	#FF0F0F2D
 6�   Z� 6�   �� 5/   
   -   5        $ PlayerClubBox��5/      $
��Left=�6)   $��28��6D   $��216,418,0,0q�6P   $
	 Wrap=�6e   $	��Top=�6y   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 
 6�   Z� 6�   �� 50   
   -   5        $ PlayerSecondNameBox��50      $
��Left=�6/   $��28��6J   $��216,371,0,0q�6V   $
	 Wrap=�6k   $	��Top=�6   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 
 6�   Z� 6�   �� 51   
   -   5        $ PlayerNameBox��51      $
��Left=�6)   $��28��6D   $��216,327,0,0q�6P   $
	 Wrap=�6e   $	��Top=�6y   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 
 6�   Z� 6�   &   System.Windows.Controls.DataGrid  52   
   -   5          Name$ playersDataGrid��52         AutoGenerateColumns .     EnableRowVirtualization . $��10,10,10,262q�6      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�      CanUserAddRows .  ���	#FF0F0F2D
���������6g   �� ��6�   Z�    Columns 53      0  *System.Windows.Controls.DataGridTextColumn  54      -   5        idColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Numer Startowy��54   N      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6x   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *Id+6x     55      -   5        playerNameColumn��$ Imię��55   ^   $	 100 6l    6?   �� *
PlayerName+6l     56      -   5        playerSecondnameColumn��$ Nazwisko��56   j   $	 200 6|    6E   �� *PlayerSecondname+6|     57      -   5        
clubColumn��$
 Klub��57   R   $	 100 6`    69   �� *Club+6`     58      -   5        licenseNumberColumn��$ Numer Licencji��58   d   $	 100 6|    6B   �� *LicenseNumber+6|     59      -   5        phoneNumberColumn��$ Numer Telefonu��59   `   $	 100 6x    6@   �� *PhoneNumber+6x     5:      -   5        emailColumn��$ E-mail��5:   T   $	 255 6d    6:   �� *Email+6d   5<      �� 5=   
   -   5         ��Name$ 
BackButton��5=      $��Powrót��6%   $
��Left=�66   $��50��6Q   $��
90,484,0,0q�6]   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   
���   ����	#FF0F0F2D��5>      �� 5?       �� EndPoint$	 1,1&�6&    �� 
StartPoint$	 0,0&�65   .��5@      �  � Color$ Black��6#    � Offset$ 0Q�61   � 5A      $ 	#FFFFFE05��6#   $	 0.5Q�65   � 5B      $ Black��6#   $ 1Q�61   5C      ��5E      �� 5F       �� 
TargetType" ��6"   .R�5G      ��  �� CornerRadius$ 20��5H      #��z��5I      ._�5J      �� $��Center=�6+   $��Center=�5K      5L      5M      5O      �� 5P   
   -   5        $ 
SendButton��5P      $��Dodaj��6%   $
��Left=�65   $��50��6P   $��306,484,0,0q�6\   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5Q      �� 5R      $	 1,1&�6&   $	 0,0&�65   .��5S      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5T      $ Black��6#   $	 0.5Q�61   � 5U      $ 	#FFFFFE05��6#   $ 1Q�65   5V      ��5X      �� 5Y      " ��6"   .R�5Z      �� $ 20��5[      #��z��5\      ._�5]      �� $��Center=�6+   $��Center=�5^      5_      5`      5b      �� 5c   
   -   5        $ UpdateButton��5c      $��
Aktualizuj��6'   $
��Left=�6<   $��50��6W   $��543,484,0,0q�6c   $	��Top=�6x   $	��125��6�   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5d      �� 5e      $	 1,1&�6&   $	 0,0&�65   .��5f      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5g      $ Black��6#   $	 0.5Q�61   � 5h      $ 	#FFFFFE05��6#   $ 1Q�65   5i      ��5k      �� 5l      " ��6"   .R�5m      �� $ 20��5n      #��z��5o      ._�5p      �� $��Center=�6+   $��Center=�5q      5r      5s      5u      �� 5v   
   -   5        $ DeleteButton��5v      $��Usuń��6'   $��50��66   $��769,484,90,0q�6B   $	��Top=�6X   $
��Bold"�6�   $��18(�6�   
����������	#FF0F0F2D��5w      �� 5x      $	 1,1&�6&   $	 0,0&�65   .��5y      � $ 	#FFFFFE05��6#   $ 0Q�65   � 5z      $ Black��6#   $	 0.5Q�61   � 5{      $ 	#FFFFFE05��6#   $ 1Q�65   5|      ��5~      �� 5      " ��6"   .R�5�      �� $ 20��5�      #��z��5�      ._�5�      �� $��Center=�6+   $��Center=�5�      5�      5�      5�      5�      5�      
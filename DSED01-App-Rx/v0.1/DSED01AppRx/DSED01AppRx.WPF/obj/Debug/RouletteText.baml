   M S B A M L   `   `   `  ����J  FDSED01AppRx.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DSED01AppRx.WPFDSED01AppRx.WPF  5   	   "    DSED01AppRx.WPF.RouletteText   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DSED01AppRx.WPF     5   	     � Title$*  $A Veriation of Russian Roulette Game��5   	    � WindowStyle$
 None=�5	   	   $	��600��5
   	   $	��500��6    � Left$	 100��5   	   
 � Top$	 100��6   $��18(�5   	   $��Segoe Print)�6   .��5      � $��0,0,0,0q�6   $
��Left=�6   $	��500��67   
�������.+�5   
   � $	��140��6   $��0,0,0,0q�6   $	��Top=�6-   $
��Left=�6E   $	��500��6`   .+�5      �� 
���   �$��1q�6)    J� RenderTransformOrigin$	 0,0&�6=   $
��Left=�6Y   $	��485��6t   $��5,5,5,5q�6�   �� 5      $)��#Set the rules of the Roulette Game:��5      $��35��5      $	��325��6   $��	15,10,0,0q�6)   $
��Left=�6<   $	��Top=�6W   �� 5      $0��*Rule 1 : Pick a random number from 1 to 6.��5      $��35��5      $	��420��6   $��	15,40,0,0q�6)   $
��Left=�6<   $	��Top=�6W   �� 5      $-��'Rule 2 : Try to pick out random number.��5      $��35��5       $	��387��6   $��	15,70,0,0q�6)   $
��Left=�6<   $	��Top=�6W   �� 5'      $��You have 2 chances.��5(      $��35��5)      $	��387��6   $��
95,100,0,0q�6)   $
��Left=�6=   $	��Top=�6X   5*      � 5+   
   $
��Left=�6   $	��437��6*   $��	0,155,0,0q�67   $	��Top=�6J   $	��480��6b   .+�55      �� $&��  1. Randomize a number. (1 to 6)��56      $��35��57      $	��330��6   $��5,5,0,0q�6)   $
��Left=�6:   $	��Top=�6U   �� 59      $�� 2. Get the next number.��5:      $��35��5;      $	��240��6   $��5,40,0,0q�6)   $
��Left=�6;   $	��Top=�6V   �� 5=      $�� 3. Make your choice : ��5>      $��35��5?      $	��210��6   $��5,75,0,0q�6)   $
��Left=�6;   $	��Top=�6V   �� 5A      $�� 3.1 Dicard this number. ��5B      $��35��5C      $	��235��6   $��
25,105,0,0q�6)   $
��Left=�6=   $	��Top=�6X   �� 5E      $
��Wrap=�6   $L��F 3.1.1 If the discarded number is random 
        number => Your lose.��5F      $��60��5G      $	��400��6   $��
60,140,0,0q�6)   $
��Left=�6=   $	��Top=�6X   �� 5I      $
��Wrap=�6   $�� 3.2 Pick this number.��5J      $��35��5K      $	��215��6   $��
25,200,0,0q�6)   $
��Left=�6=   $	��Top=�6X   �� 5M      $
��Wrap=�6   $?��93.2.1 If this number match the random number. => You win.��5N      $��60��5O      $	��390��6   $��
70,235,0,0q�6)   $
��Left=�6>   $	��Top=�6Z   �� 5Q      $
��Wrap=�6   $Q��K3.2.2 If this number does not match the random number. Reduce chances by 1.��5R      $��60��5S      $	��390��6   $��
70,295,0,0q�6)   $
��Left=�6=   $	��Top=�6X   �� 5U      $
��Wrap=�6   $B��<3.2.2.1 If chance is reduced to zero.
          => You lose.��5V      $��60��5W      $	��345��6   $��120,355,0,0q�6)   $
��Left=�6>   $	��Top=�6Y   5\      5^      5_      
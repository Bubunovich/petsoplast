   M S B A M L   `   `   `  ����B  >PetShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:PetShop.PagesPetShop.Pages  5      #    PetShop.Pages.ViewProductPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:PetShop.Pages     5        N� 
Background
  ����� N� Title$Q KИС Товары для животных - Просмотр товаров��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $��70 �6   6*   �� 5      $��* �6   6)   �� 5      $��50 �6   6*   .+�5   
   �� -   5         ��Name$ CountOfLabel��5      $
��Left=�6&   $��	10,0,10,0q�6A   $��15/30��5      $��Center=�6    $��0��6;   5      �� 5   
   -   5        $ FIOLabel��5      $��Right=�6"   $��0,0,10,0q�6>   $��ФИО��5      $��Center=�6   $��0��69   5      � 5   
   $��1��6   .+�5      �� -   5         ��Name$ SearchTextBox��5      $	��150��6-   $
��Left=�69   $��10,0,0,0q�6T   .��6�   5      	� 5      -   5         	�Name$ SourtUpRadioButton��5      $!��По возростанию��66   $��Center=�6O   $
��Left=�5      $��	200,0,0,0q�6(   5      	� 5      -   5        $ SourtDownRadioButton��5      $��По убыванию��68   $��Center=�6N   $
��Left=�5      $��	340,0,0,0q�6(   5       �� 5!      -   5         ��Name$ ManufacturedComboBox��5!      $	��160��65   $��30��6A   $
��Left=�6M   $��Center=�6h   $��	470,0,0,0q�5"       �� DisplayMemberPath$ ManufactureName��6*   6�   5#      �� 5$   
   -   5         ��Name$ ProductListView��5$      $��Center=�5%      $��Center=�5&      $��10q�5'      $��2��6   ��5(      �� 5)      .R�5*      � 	 � ColumnDefinitions	 5+      �� 5,      $	��150 �6/   6=   �� 5-      $	��400 �6/   6=   �� 5.      $	��150 �6/   6=   �� 5/      $	��150 �6/   6=   .+�51      �� $��0��6    $��10q�60   ��52      �� 53   "   
 �� Path$
 ProductPhoto�6*    �� TargetNullValue 54   &   �� 55   *    �� 	UriSource$ /Resources/picture.png?�66   58   #   5:      �� 5;      $��1��6%   $��Center=�5<   !   $
��Left=�5=   !   .+�5>      �� $
��Bold"�6x   ��6(   �� *ProductName1.NameName+ �� StringFormat$0 *Наименование товара: {0}��6x   �� 5?      $
��wrap=�6p   ��6(   �� *ProductDescription+$( "Описание товара: {0}��6�   �� 5@      ��6(   �� *$"ProductManufacture.ManufactureName+$2 ,Производитель товара: {0}��6�   �� 5A      ��6(   �� *ProductCost+$ Цена: {0}��6`   5B      �� 5D      $��2��6$   $��Center=�6�   $��Center=�5E      ��5D   4   �� *ProductQuantityInStock+$+ %Наличие на складе: {0}��5E   4   5H      5I      5K      �� 5L   
   -   5         ��Name$ 
BackButton��5L      $��
Назад��6%   $��3��5M   *   69   5N      5O      
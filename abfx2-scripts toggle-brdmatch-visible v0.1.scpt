FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
 ABOUT THIS SCRIPT

Created By: 		Brendan Nelson
Last Updated: 	18th November 2013
Purpose:			Toggle visibility of the BRDmatch layer
---
If you've run the brd-matching script but now want to hide all its outputs in your Omnigraffle file, just run this script. It'll find all layers called "BRDmatch" and toggle their visibility status, meaning that visible layers will become hidden and hidden layers will become visible.

If you want to delete the BRD matching layers altogether, use the script remove-brdmatch instead.
     � 	 	   A B O U T   T H I S   S C R I P T 
 
 C r e a t e d   B y :   	 	 B r e n d a n   N e l s o n 
 L a s t   U p d a t e d :   	 1 8 t h   N o v e m b e r   2 0 1 3 
 P u r p o s e : 	 	 	 T o g g l e   v i s i b i l i t y   o f   t h e   B R D m a t c h   l a y e r 
 - - - 
 I f   y o u ' v e   r u n   t h e   b r d - m a t c h i n g   s c r i p t   b u t   n o w   w a n t   t o   h i d e   a l l   i t s   o u t p u t s   i n   y o u r   O m n i g r a f f l e   f i l e ,   j u s t   r u n   t h i s   s c r i p t .   I t ' l l   f i n d   a l l   l a y e r s   c a l l e d   " B R D m a t c h "   a n d   t o g g l e   t h e i r   v i s i b i l i t y   s t a t u s ,   m e a n i n g   t h a t   v i s i b l e   l a y e r s   w i l l   b e c o m e   h i d d e n   a n d   h i d d e n   l a y e r s   w i l l   b e c o m e   v i s i b l e . 
 
 I f   y o u   w a n t   t o   d e l e t e   t h e   B R D   m a t c h i n g   l a y e r s   a l t o g e t h e r ,   u s e   t h e   s c r i p t   r e m o v e - b r d m a t c h   i n s t e a d . 
   
  
 l     ��������  ��  ��        l    ; ����  O     ;    k    :       r    
    4   �� 
�� 
docu  m    ����   o      ���� 0 	_document        r        c        n        1    ��
�� 
pnam  o    ���� 0 	_document    m    ��
�� 
ctxt  o      ���� 0 
wffilename 
wfFileName       r    $ ! " ! n    " # $ # 7   "�� % &
�� 
ctxt % m    ����  & l   ! '���� ' \    ! ( ) ( l    *���� * n     + , + 1    ��
�� 
leng , o    ���� 0 
wffilename 
wfFileName��  ��   ) m     ���� ��  ��   $ o    ���� 0 
wffilename 
wfFileName " o      ���� 0 
wffilename 
wfFileName    - . - r   % * / 0 / n   % ( 1 2 1 1   & (��
�� 
ppth 2 o   % &���� 0 	_document   0 o      ���� 	0 _path   .  3 4 3 r   + 4 5 6 5 I  + 2�� 7��
�� .corecnte****       **** 7 n   + . 8 9 8 2  , .��
�� 
OGWS 9 o   + ,���� 0 	_document  ��   6 o      ���� 0 wfpagecount wfPageCount 4  : ; : r   5 8 < = < m   5 6����  = o      ���� 0 wfpage WFpage ;  >�� > l  9 9��������  ��  ��  ��    m      ? ?�                                                                                  OGfl  alis    �  Macintosh HD               ��7�H+  ��iOmniGraffle Professional 5.app                                 �r%� ڑ        ����  	                Applications    ��)�      � ́    ��i  9Macintosh HD:Applications: OmniGraffle Professional 5.app   >  O m n i G r a f f l e   P r o f e s s i o n a l   5 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 5.app   / ��  ��  ��     @ A @ l     ��������  ��  ��   A  B C B l  < Y D���� D I  < Y�� E��
�� .sysodlogaskr        TEXT E b   < U F G F b   < Q H I H b   < I J K J b   < A L M L b   < ? N O N m   < = P P � Q Q r G o i n g   t o   t o g g l e   v i s i b i l i t y   o f   a l l   B R D   m a t c h i n g   l a y e r s   i n   O o   = >���� 0 
wffilename 
wfFileName M m   ? @ R R � S S  .   K l  A H T���� T I  A H�� U��
�� .sysontocTEXT       shor U m   A D���� ��  ��  ��   I l  I P V���� V I  I P�� W��
�� .sysontocTEXT       shor W m   I L���� ��  ��  ��   G m   Q T X X � Y Y @ I s   t h a t   O K ?   C l i c k   C a n c e l   i f   n o t !��  ��  ��   C  Z [ Z l     ��������  ��  ��   [  \�� \ l  Z � ]���� ] Y   Z � ^�� _ `�� ^ k   d � a a  b c b l  d d��������  ��  ��   c  d e d l  d d�� f g��   f # 	display dialog workingCanvas    g � h h : 	 d i s p l a y   d i a l o g   w o r k i n g C a n v a s e  i j i O   d � k l k k   h � m m  n o n l  h h��������  ��  ��   o  p q p r   h p r s r n   h l t u t 4   i l�� v
�� 
OGWS v o   j k���� 0 wfpage WFpage u o   h i���� 0 	_document   s o      ���� 0 workingcanvas workingCanvas q  w x w r   q � y z y n   q  { | { 1   { ��
�� 
pvis | n  q { } ~ } 4   t {�� 
�� 
OGLa  m   w z � � � � �  B R D m a t c h ~ o   q t���� 0 workingcanvas workingCanvas z o      ���� &0 currentvisibility currentVisibility x  ��� � r   � � � � � H   � � � � o   � ����� &0 currentvisibility currentVisibility � n       � � � 1   � ���
�� 
pvis � n  � � � � � 4   � ��� �
�� 
OGLa � m   � � � � � � �  B R D m a t c h � o   � ����� 0 workingcanvas workingCanvas��   l m   d e � ��                                                                                  OGfl  alis    �  Macintosh HD               ��7�H+  ��iOmniGraffle Professional 5.app                                 �r%� ڑ        ����  	                Applications    ��)�      � ́    ��i  9Macintosh HD:Applications: OmniGraffle Professional 5.app   >  O m n i G r a f f l e   P r o f e s s i o n a l   5 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 5.app   / ��   j  � � � l  � ���������  ��  ��   �  � � � Z  � � � ����� � =   � � � � � o   � ����� 0 wfpage WFpage � o   � ����� 0 wfpagecount wfPageCount � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �  F i n i s h e d !��  ��  ��   �  ��� � l  � ���������  ��  ��  ��  �� 0 wfpage WFpage _ m   ] ^����  ` o   ^ _���� 0 wfpagecount wfPageCount��  ��  ��  ��       
�� � � � � ����� �����   � ����������������
�� .aevtoappnull  �   � ****�� 0 	_document  �� 0 
wffilename 
wfFileName�� 	0 _path  �� 0 wfpagecount wfPageCount�� 0 wfpage WFpage�� 0 workingcanvas workingCanvas�� &0 currentvisibility currentVisibility � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  B � �  \����  ��  ��   � ���� 0 wfpage WFpage �  ?����������������������~�} P R�|�{ X�z�y�x ��w�v � �
�� 
docu�� 0 	_document  
�� 
pnam
�� 
ctxt�� 0 
wffilename 
wfFileName
�� 
leng�� 
�� 
ppth�� 	0 _path  
�� 
OGWS
� .corecnte****       ****�~ 0 wfpagecount wfPageCount�} 0 wfpage WFpage�| 
�{ .sysontocTEXT       shor
�z .sysodlogaskr        TEXT�y 0 workingcanvas workingCanvas
�x 
OGLa
�w 
pvis�v &0 currentvisibility currentVisibility�� �� 8*�k/E�O��,�&E�O�[�\[Zk\Z��,�2E�O��,E�O��-j E�OkE�OPUO��%�%a j %a j %a %j O Vk�kh  � 1��/E` O_ a a /a ,E` O_ _ a a /a ,FUO��  a j Y hOP[OY�� �  � �  ?�u �
�u 
docu � � � � � T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y . g r a f f l e � � � � � T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y � � � �j / U s e r s / b r e n d a n / D r o p b o x / W o r k / P r o j e c t s / D e u t s c h e   B a n k / a b F X / P l a n n i n g / P r o c e s s / B R D   m a t c h i n g / A u t o m a t i o n / G r a f f l e / T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y . g r a f f l e�� 7��  �  � �  ��t�s�r �  ?�q �
�q 
docu � � � � � T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y . g r a f f l e
�t 
OGWS�s t
�r kfrmID  
�� boovtrueascr  ��ޭ
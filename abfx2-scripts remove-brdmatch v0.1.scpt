FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� ABOUT THIS SCRIPT

Created By: 		Brendan Nelson
Last Updated: 	18th November 2013
Purpose:			To delete the BRDmatch layer from a document
---
This is like an "undo" function for the brd-matching script. It just runs through the currently open Omnigraffle document and deletes every layer called "BRDmatch", thereby erasing all trace of its outputs.

If you just want to hide the BRD matching output there is another script called toggle-brdmatch-visible which might be more suitable.
     � 	 	�   A B O U T   T H I S   S C R I P T 
 
 C r e a t e d   B y :   	 	 B r e n d a n   N e l s o n 
 L a s t   U p d a t e d :   	 1 8 t h   N o v e m b e r   2 0 1 3 
 P u r p o s e : 	 	 	 T o   d e l e t e   t h e   B R D m a t c h   l a y e r   f r o m   a   d o c u m e n t 
 - - - 
 T h i s   i s   l i k e   a n   " u n d o "   f u n c t i o n   f o r   t h e   b r d - m a t c h i n g   s c r i p t .   I t   j u s t   r u n s   t h r o u g h   t h e   c u r r e n t l y   o p e n   O m n i g r a f f l e   d o c u m e n t   a n d   d e l e t e s   e v e r y   l a y e r   c a l l e d   " B R D m a t c h " ,   t h e r e b y   e r a s i n g   a l l   t r a c e   o f   i t s   o u t p u t s . 
 
 I f   y o u   j u s t   w a n t   t o   h i d e   t h e   B R D   m a t c h i n g   o u t p u t   t h e r e   i s   a n o t h e r   s c r i p t   c a l l e d   t o g g l e - b r d m a t c h - v i s i b l e   w h i c h   m i g h t   b e   m o r e   s u i t a b l e . 
   
  
 l     ��������  ��  ��        l    9 ����  O     9    k    8       r    
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
OGWS 9 o   + ,���� 0 	_document  ��   6 o      ���� 0 wfpagecount wfPageCount 4  :�� : r   5 8 ; < ; m   5 6����  < o      ���� 0 workingcanvas workingCanvas��    m      = =�                                                                                  OGfl  alis    �  Macintosh HD               ��7�H+  ��iOmniGraffle Professional 5.app                                 �r%� ڑ        ����  	                Applications    ��)�      � ́    ��i  9Macintosh HD:Applications: OmniGraffle Professional 5.app   >  O m n i G r a f f l e   P r o f e s s i o n a l   5 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 5.app   / ��  ��  ��     > ? > l     ��������  ��  ��   ?  @ A @ l  : W B���� B I  : W�� C��
�� .sysodlogaskr        TEXT C b   : S D E D b   : O F G F b   : G H I H b   : ? J K J b   : = L M L m   : ; N N � O O Z G o i n g   t o   d e l e t e   a l l   B R D   m a t c h i n g   l a y e r s   f r o m   M o   ; <���� 0 
wffilename 
wfFileName K m   = > P P � Q Q  .   I l  ? F R���� R I  ? F�� S��
�� .sysontocTEXT       shor S m   ? B���� ��  ��  ��   G l  G N T���� T I  G N�� U��
�� .sysontocTEXT       shor U m   G J���� ��  ��  ��   E m   O R V V � W W @ I s   t h a t   O K ?   C l i c k   C a n c e l   i f   n o t !��  ��  ��   A  X Y X l     ��������  ��  ��   Y  Z�� Z l  X � [���� [ Y   X � \�� ] ^�� \ k   b � _ _  ` a ` l  b b��������  ��  ��   a  b c b l  b b�� d e��   d # 	display dialog workingCanvas    e � f f : 	 d i s p l a y   d i a l o g   w o r k i n g C a n v a s c  g h g O   b v i j i I  f u�� k��
�� .coredelonull���    obj  k n  f q l m l 4   j q�� n
�� 
OGLa n m   m p o o � p p  B R D m a t c h m n   f j q r q 4   g j�� s
�� 
OGWS s o   h i���� 0 workingcanvas workingCanvas r o   f g���� 0 	_document  ��   j m   b c t t�                                                                                  OGfl  alis    �  Macintosh HD               ��7�H+  ��iOmniGraffle Professional 5.app                                 �r%� ڑ        ����  	                Applications    ��)�      � ́    ��i  9Macintosh HD:Applications: OmniGraffle Professional 5.app   >  O m n i G r a f f l e   P r o f e s s i o n a l   5 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 5.app   / ��   h  u v u l  w w��������  ��  ��   v  w x w Z  w � y z���� y =   w z { | { o   w x���� 0 workingcanvas workingCanvas | o   x y���� 0 wfpagecount wfPageCount z I  } ��� }��
�� .sysodlogaskr        TEXT } m   } � ~ ~ �    F i n i s h e d !��  ��  ��   x  ��� � l  � ���������  ��  ��  ��  �� 0 workingcanvas workingCanvas ] m   [ \����  ^ o   \ ]���� 0 wfpagecount wfPageCount��  ��  ��  ��       
�� � � � � �����������   � ����������������
�� .aevtoappnull  �   � ****�� 0 	_document  �� 0 
wffilename 
wfFileName�� 	0 _path  �� 0 wfpagecount wfPageCount�� 0 workingcanvas workingCanvas��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  @ � �  Z����  ��  ��   � ���� 0 workingcanvas workingCanvas �  =�������������������������� N P���� V���� o�� ~
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
�� .corecnte****       ****�� 0 wfpagecount wfPageCount�� 0 workingcanvas workingCanvas�� 
�� .sysontocTEXT       shor
�� .sysodlogaskr        TEXT
�� 
OGLa
�� .coredelonull���    obj �� �� 6*�k/E�O��,�&E�O�[�\[Zk\Z��,�2E�O��,E�O��-j E�OkE�UO��%�%a j %a j %a %j O 6k�kh  � ��/a a /j UO��  a j Y hOP[OY�� �  � �  =�� �
�� 
docu � � � � � T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y . g r a f f l e � � � � � T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y � � � �j / U s e r s / b r e n d a n / D r o p b o x / W o r k / P r o j e c t s / D e u t s c h e   B a n k / a b F X / P l a n n i n g / P r o c e s s / B R D   m a t c h i n g / A u t o m a t i o n / G r a f f l e / T E S T 2   a b f x 2 - O p t i o n s - O r d e r s - c o u n t e r - o f f e r - p o p u p - w i r e f r a m e s   v 0 . 2 1   c o p y . g r a f f l e�� 7�� ��  ��   ascr  ��ޭ
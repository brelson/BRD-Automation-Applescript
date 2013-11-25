FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
�
� ABOUT THIS SCRIPT

Created By: 		Brendan Nelson
Last Updated: 	18th November 2013
Purpose:			To annotate wireframe documents with matching business requirements

Changes
 - v0.2 can handle Excel spreadsheets with normal numbers (not 3 digits) and cells with multiple numbers in a comma-separated list (22 Nov 2013)

---
This script is intended to be used during the BRD Matching exercise at the end of a workstream. It provides a quick and easy way to populate wireframe pages with matching requirements, which are read from the spreadsheet created during the Primary Analysis activity. Matching requirements are listed in small text in the footer area meaning that they can be found by a Ctrl-F document search but are not too intrusive for people reading the wireframe in a normal way.

To use it you need to have your wireframe document open on your desktop as well as a spreadsheet, in Excel, with the outputs of the matching exercise. Some safety tips before you go ahead and use the script:
 - Shut down all other Excel or Omnigraffle files you have open
 - Iterate your wireframe to a new version *before* running this script, in case something goes wrong
 - In the dialogue box that opens after running this script, check the details before you click OK. It is the point of no return!


With the spreadsheet, the script assumes that it has the following structure: 
 - Column A: wireframe page numbers, all forced to 3 digits (001, 002, 011 etc)
 - Column B: requirement IDs (BRFP1, etc)
 - Column C: match status (N/A, Implemented etc) 
It can pick up page numbers if they occur multiple times in a single cell ("003, 005, 010") or in a range ("001-004") but it can't actually detect ranges. It'll help the script if you can convert ranges to comma-separated page numbers.

With the wireframe, the script will add a new layer called "BRDmatch" to each canvas, if it doesn't already exist, and add details of matching requirements into a shape. 

Some more details on how the script works:
 - It tells you what files it will work on before it starts. Hit cancel if they're the wrong files!
 - It looks through the Excel document for every occurence of a wireframe page
 - When it finds one, it retrieves the ID and status of the associated requirement
 - After it's scanned the spreadsheet for the page number, it writes details of all matches to a shape in the "BRDmatch" layer , then moves on to the next page
 - If the text "Gap" appears in the status, the text is shown in a different colour
 - If it finds no matches for a particular page it just writes a single space, which will be invisible
 - It finishes once it's repeated this process for every wireframe page number.
     � 	 	    A B O U T   T H I S   S C R I P T 
 
 C r e a t e d   B y :   	 	 B r e n d a n   N e l s o n 
 L a s t   U p d a t e d :   	 1 8 t h   N o v e m b e r   2 0 1 3 
 P u r p o s e : 	 	 	 T o   a n n o t a t e   w i r e f r a m e   d o c u m e n t s   w i t h   m a t c h i n g   b u s i n e s s   r e q u i r e m e n t s 
 
 C h a n g e s 
   -   v 0 . 2   c a n   h a n d l e   E x c e l   s p r e a d s h e e t s   w i t h   n o r m a l   n u m b e r s   ( n o t   3   d i g i t s )   a n d   c e l l s   w i t h   m u l t i p l e   n u m b e r s   i n   a   c o m m a - s e p a r a t e d   l i s t   ( 2 2   N o v   2 0 1 3 ) 
 
 - - - 
 T h i s   s c r i p t   i s   i n t e n d e d   t o   b e   u s e d   d u r i n g   t h e   B R D   M a t c h i n g   e x e r c i s e   a t   t h e   e n d   o f   a   w o r k s t r e a m .   I t   p r o v i d e s   a   q u i c k   a n d   e a s y   w a y   t o   p o p u l a t e   w i r e f r a m e   p a g e s   w i t h   m a t c h i n g   r e q u i r e m e n t s ,   w h i c h   a r e   r e a d   f r o m   t h e   s p r e a d s h e e t   c r e a t e d   d u r i n g   t h e   P r i m a r y   A n a l y s i s   a c t i v i t y .   M a t c h i n g   r e q u i r e m e n t s   a r e   l i s t e d   i n   s m a l l   t e x t   i n   t h e   f o o t e r   a r e a   m e a n i n g   t h a t   t h e y   c a n   b e   f o u n d   b y   a   C t r l - F   d o c u m e n t   s e a r c h   b u t   a r e   n o t   t o o   i n t r u s i v e   f o r   p e o p l e   r e a d i n g   t h e   w i r e f r a m e   i n   a   n o r m a l   w a y . 
 
 T o   u s e   i t   y o u   n e e d   t o   h a v e   y o u r   w i r e f r a m e   d o c u m e n t   o p e n   o n   y o u r   d e s k t o p   a s   w e l l   a s   a   s p r e a d s h e e t ,   i n   E x c e l ,   w i t h   t h e   o u t p u t s   o f   t h e   m a t c h i n g   e x e r c i s e .   S o m e   s a f e t y   t i p s   b e f o r e   y o u   g o   a h e a d   a n d   u s e   t h e   s c r i p t : 
   -   S h u t   d o w n   a l l   o t h e r   E x c e l   o r   O m n i g r a f f l e   f i l e s   y o u   h a v e   o p e n 
   -   I t e r a t e   y o u r   w i r e f r a m e   t o   a   n e w   v e r s i o n   * b e f o r e *   r u n n i n g   t h i s   s c r i p t ,   i n   c a s e   s o m e t h i n g   g o e s   w r o n g 
   -   I n   t h e   d i a l o g u e   b o x   t h a t   o p e n s   a f t e r   r u n n i n g   t h i s   s c r i p t ,   c h e c k   t h e   d e t a i l s   b e f o r e   y o u   c l i c k   O K .   I t   i s   t h e   p o i n t   o f   n o   r e t u r n ! 
 
 
 W i t h   t h e   s p r e a d s h e e t ,   t h e   s c r i p t   a s s u m e s   t h a t   i t   h a s   t h e   f o l l o w i n g   s t r u c t u r e :   
   -   C o l u m n   A :   w i r e f r a m e   p a g e   n u m b e r s ,   a l l   f o r c e d   t o   3   d i g i t s   ( 0 0 1 ,   0 0 2 ,   0 1 1   e t c ) 
   -   C o l u m n   B :   r e q u i r e m e n t   I D s   ( B R F P 1 ,   e t c ) 
   -   C o l u m n   C :   m a t c h   s t a t u s   ( N / A ,   I m p l e m e n t e d   e t c )   
 I t   c a n   p i c k   u p   p a g e   n u m b e r s   i f   t h e y   o c c u r   m u l t i p l e   t i m e s   i n   a   s i n g l e   c e l l   ( " 0 0 3 ,   0 0 5 ,   0 1 0 " )   o r   i n   a   r a n g e   ( " 0 0 1 - 0 0 4 " )   b u t   i t   c a n ' t   a c t u a l l y   d e t e c t   r a n g e s .   I t ' l l   h e l p   t h e   s c r i p t   i f   y o u   c a n   c o n v e r t   r a n g e s   t o   c o m m a - s e p a r a t e d   p a g e   n u m b e r s . 
 
 W i t h   t h e   w i r e f r a m e ,   t h e   s c r i p t   w i l l   a d d   a   n e w   l a y e r   c a l l e d   " B R D m a t c h "   t o   e a c h   c a n v a s ,   i f   i t   d o e s n ' t   a l r e a d y   e x i s t ,   a n d   a d d   d e t a i l s   o f   m a t c h i n g   r e q u i r e m e n t s   i n t o   a   s h a p e .   
 
 S o m e   m o r e   d e t a i l s   o n   h o w   t h e   s c r i p t   w o r k s : 
   -   I t   t e l l s   y o u   w h a t   f i l e s   i t   w i l l   w o r k   o n   b e f o r e   i t   s t a r t s .   H i t   c a n c e l   i f   t h e y ' r e   t h e   w r o n g   f i l e s ! 
   -   I t   l o o k s   t h r o u g h   t h e   E x c e l   d o c u m e n t   f o r   e v e r y   o c c u r e n c e   o f   a   w i r e f r a m e   p a g e 
   -   W h e n   i t   f i n d s   o n e ,   i t   r e t r i e v e s   t h e   I D   a n d   s t a t u s   o f   t h e   a s s o c i a t e d   r e q u i r e m e n t 
   -   A f t e r   i t ' s   s c a n n e d   t h e   s p r e a d s h e e t   f o r   t h e   p a g e   n u m b e r ,   i t   w r i t e s   d e t a i l s   o f   a l l   m a t c h e s   t o   a   s h a p e   i n   t h e   " B R D m a t c h "   l a y e r   ,   t h e n   m o v e s   o n   t o   t h e   n e x t   p a g e 
   -   I f   t h e   t e x t   " G a p "   a p p e a r s   i n   t h e   s t a t u s ,   t h e   t e x t   i s   s h o w n   i n   a   d i f f e r e n t   c o l o u r 
   -   I f   i t   f i n d s   n o   m a t c h e s   f o r   a   p a r t i c u l a r   p a g e   i t   j u s t   w r i t e s   a   s i n g l e   s p a c e ,   w h i c h   w i l l   b e   i n v i s i b l e 
   -   I t   f i n i s h e s   o n c e   i t ' s   r e p e a t e d   t h i s   p r o c e s s   f o r   e v e r y   w i r e f r a m e   p a g e   n u m b e r . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    : 4 how many rows in your primary analysis spreadsheet?     �   h   h o w   m a n y   r o w s   i n   y o u r   p r i m a r y   a n a l y s i s   s p r e a d s h e e t ?      l     ����  r         m     ����   o      ���� 0 	totalrows 	totalRows��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l   ' ����  O    '     k    & ! !  " # " r     $ % $ 4   �� &
�� 
docu & m   
 ����  % o      ���� 0 	_document   #  ' ( ' r     ) * ) c     + , + n     - . - 1    ��
�� 
pnam . o    ���� 0 	_document   , m    ��
�� 
ctxt * o      ���� 0 
wffilename 
wfFileName (  / 0 / l   �� 1 2��   1 P J	set wfFileName to texts 1 thru ((length of wfFileName) - 8) of wfFileName    2 � 3 3 � 	 s e t   w f F i l e N a m e   t o   t e x t s   1   t h r u   ( ( l e n g t h   o f   w f F i l e N a m e )   -   8 )   o f   w f F i l e N a m e 0  4 5 4 r     6 7 6 n     8 9 8 1    ��
�� 
ppth 9 o    ���� 0 	_document   7 o      ���� 	0 _path   5  :�� : r    & ; < ; I   $�� =��
�� .corecnte****       **** = n      > ? > 2    ��
�� 
OGWS ? o    ���� 0 	_document  ��   < o      ���� 0 wfpagecount wfPageCount��     m     @ @�                                                                                  OGfl  alis    �  Macintosh HD               ��7�H+  ��iOmniGraffle Professional 5.app                                 �r%� ڑ        ����  	                Applications    ��)�      � ́    ��i  9Macintosh HD:Applications: OmniGraffle Professional 5.app   >  O m n i G r a f f l e   P r o f e s s i o n a l   5 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 5.app   / ��  ��  ��     A B A l     ��������  ��  ��   B  C D C l  ( ; E���� E O   ( ; F G F k   , : H H  I J I r   , 2 K L K 4  , 0�� M
�� 
docu M m   . /����  L o      ���� 0 _xlsdocument   J  N�� N r   3 : O P O c   3 8 Q R Q n   3 6 S T S 1   4 6��
�� 
pnam T o   3 4���� 0 _xlsdocument   R m   6 7��
�� 
ctxt P o      ���� 0 xlsfilename xlsFileName��   G m   ( ) U U
                                                                                  XCEL  alis    �  Macintosh HD               ��7�H+   ��Microsoft Excel.app                                             =�Ț�E        ����  	                Microsoft Office 2011     ��)�      Ț�5     ����i  EMacintosh HD:Applications: Microsoft Office 2011: Microsoft Excel.app   (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h   H D  6Applications/Microsoft Office 2011/Microsoft Excel.app  / ��  ��  ��   D  V W V l     ��������  ��  ��   W  X Y X l  < { Z���� Z I  < {�� [��
�� .sysodlogaskr        TEXT [ b   < w \ ] \ b   < s ^ _ ^ b   < k ` a ` b   < c b c b b   < a d e d b   < ] f g f b   < U h i h b   < S j k j b   < O l m l b   < G n o n m   < ? p p � q q b C a r r y i n g   o u t   B R D   m a t c h i n g   o n   t h e   f o l l o w i n g   f i l e s : o l  ? F r���� r I  ? F�� s��
�� .sysontocTEXT       shor s m   ? B���� ��  ��  ��   m l  G N t���� t I  G N�� u��
�� .sysontocTEXT       shor u m   G J���� ��  ��  ��   k m   O R v v � w w  W i r e f r a m e :   i o   S T���� 0 
wffilename 
wfFileName g l  U \ x���� x I  U \�� y��
�� .sysontocTEXT       shor y m   U X���� ��  ��  ��   e m   ] ` z z � { {  S p r e a d s h e e t :   c o   a b���� 0 xlsfilename xlsFileName a l  c j |���� | I  c j�� }��
�� .sysontocTEXT       shor } m   c f���� ��  ��  ��   _ l  k r ~���� ~ I  k r�� ��
�� .sysontocTEXT       shor  m   k n���� ��  ��  ��   ] m   s v � � � � � � I f   t h i s   a r e   n o t   t h e   c o r r e c t   f i l e s ,   c l i c k   C a n c e l .   O t h e r w i s e   c l i c k   O K   t o   p r o c e e d .��  ��  ��   Y  � � � l     ��������  ��  ��   �  � � � l  | � ����� � r   | � � � � m   | }����  � o      ���� 0 wfpage WFpage��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �  B R D   M a t c h e s :   � o      ���� 0 
allmatches 
allMatches��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 
newmatches 
newMatches��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  � ����� � U   � � � � k   � � �  � � � l  � ���������  ��  ��   �  � � � O   �@ � � � k   �? � �  � � � r   � � � � � c   � � � � � m   � �����  � m   � ���
�� 
nmbr � o      ���� 0 startrow startRow �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � Y S startRow should be set to total number of rows in the primary analysis spreadsheet    � � � � �   s t a r t R o w   s h o u l d   b e   s e t   t o   t o t a l   n u m b e r   o f   r o w s   i n   t h e   p r i m a r y   a n a l y s i s   s p r e a d s h e e t �  ��� � V   �? � � � k   �: � �  � � � Q   �0 � ��� � k   �' � �  � � � r   � � � � � 4   � ��� �
�� 
X117 � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  A � o   � ����� 0 startrow startRow � m   � � � � � � �  : A � o   � ����� 0 startrow startRow��  ��   � o      ���� 0 searchrange searchRange �  � � � r   � � � � � I  � ��� � �
�� .sTBL1395X117      7 X117 � o   � ����� 0 searchrange searchRange � �� � �
�� 
5166 � o   � ����� 0 wfpage WFpage � �� ���
�� 
5172 � m   � ��
� boovtrue��   � o      �~�~ 0 
foundrange 
foundRange �  � � � l  � ��}�|�{�}  �|  �{   �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ��z
�z 
DPVu � o   � ��y�y 0 
foundrange 
foundRange � m   � ��x
�x 
ctxt � o      �w�w 0 foundstr foundStr �  � � � l  � ��v�u�t�v  �u  �t   �  � � � Z   �% � ��s � � E   � � � � � o   � ��r�r 0 foundstr foundStr � m   � � � � � � �  , � k   �� � �  � � � l  � ��q�p�o�q  �p  �o   �  � � � l  � ��n � ��n   � "  going to delimit with comma    � � � � 8   g o i n g   t o   d e l i m i t   w i t h   c o m m a �  � � � r   �
 � � � J   � � �  ��m � m   �  � � � � �  ,�m   � n      � � � 1  	�l
�l 
txdl � 1  �k
�k 
ascr �  � � � r   � � � n   �  � 2 �j
�j 
citm  o  �i�i 0 foundstr foundStr � o      �h�h 0 
commapages 
commaPages �  r  $ J   �g m   �  �g   n     	
	 1  #�f
�f 
txdl
 1  �e
�e 
ascr  l %%�d�c�b�d  �c  �b    l %%�a�a   � � for each number in the comma-separated list, make it a number, and then check if it's same as the wireframe page we're looking for    �   f o r   e a c h   n u m b e r   i n   t h e   c o m m a - s e p a r a t e d   l i s t ,   m a k e   i t   a   n u m b e r ,   a n d   t h e n   c h e c k   i f   i t ' s   s a m e   a s   t h e   w i r e f r a m e   p a g e   w e ' r e   l o o k i n g   f o r  X  %��` k  ;�  r  ;B c  ;@ o  ;<�_�_ 0 theitem theItem m  <?�^
�^ 
nmbr o      �]�] 0 theitem theItem  Z  C� �\�[ =  CH!"! o  CD�Z�Z 0 theitem theItem" o  DG�Y�Y 0 wfpage WFpage  k  K�## $%$ l KK�X&'�X  & o i get the necessary values from Excel and append them to "allMatches". Ideally this should be a subroutine   ' �(( �   g e t   t h e   n e c e s s a r y   v a l u e s   f r o m   E x c e l   a n d   a p p e n d   t h e m   t o   " a l l M a t c h e s " .   I d e a l l y   t h i s   s h o u l d   b e   a   s u b r o u t i n e% )*) r  KV+,+ n  KR-.- 1  NR�W
�W 
XfrX. o  KN�V�V 0 
foundrange 
foundRange, o      �U�U 0 frow fRow* /0/ r  Wm121 n  Wi343 1  ei�T
�T 
DPVu4 4  We�S5
�S 
X1175 l [d6�R�Q6 c  [d787 b  [b9:9 m  [^;; �<<  B: o  ^a�P�P 0 frow fRow8 m  bc�O
�O 
ctxt�R  �Q  2 o      �N�N 0 
newmatches 
newMatches0 =>= r  n�?@? n  n�ABA 1  |��M
�M 
DPVuB 4  n|�LC
�L 
X117C l r{D�K�JD c  r{EFE b  ryGHG m  ruII �JJ  CH o  ux�I�I 0 frow fRowF m  yz�H
�H 
ctxt�K  �J  @ o      �G�G  0 newmatchstatus newMatchStatus> KLK r  ��MNM b  ��OPO b  ��QRQ b  ��STS b  ��UVU b  ��WXW o  ���F�F 0 
allmatches 
allMatchesX m  ��YY �ZZ   V o  ���E�E 0 
newmatches 
newMatchesT m  ��[[ �\\    (R o  ���D�D  0 newmatchstatus newMatchStatusP m  ��]] �^^  ) ,  N o      �C�C 0 
allmatches 
allMatchesL _�B_ l ���A`a�A  ` ? 9							display dialog "For " & WFpage & ": " & allMatches   a �bb r 	 	 	 	 	 	 	 d i s p l a y   d i a l o g   " F o r   "   &   W F p a g e   &   " :   "   &   a l l M a t c h e s�B  �\  �[   cdc l ���@�?�>�@  �?  �>  d e�=e l ���<�;�:�<  �;  �:  �=  �` 0 theitem theItem o  (+�9�9 0 
commapages 
commaPages fgf l ���8�7�6�8  �7  �6  g h�5h l ���4�3�2�4  �3  �2  �5  �s   � k  �%ii jkj l ���1lm�1  l K E it doesn't contain a comma so let's just treat it as a normal number   m �nn �   i t   d o e s n ' t   c o n t a i n   a   c o m m a   s o   l e t ' s   j u s t   t r e a t   i t   a s   a   n o r m a l   n u m b e rk opo r  ��qrq c  ��sts o  ���0�0 0 foundstr foundStrt m  ���/
�/ 
nmbrr o      �.�. 0 foundstr foundStrp uvu Z  �#wx�-�,w =  ��yzy o  ���+�+ 0 wfpage WFpagez o  ���*�* 0 foundstr foundStrx k  �{{ |}| l ���)~�)  ~ p j we have a real match, not a "contains" match, so again we read values from Excel and append to allMatches    ��� �   w e   h a v e   a   r e a l   m a t c h ,   n o t   a   " c o n t a i n s "   m a t c h ,   s o   a g a i n   w e   r e a d   v a l u e s   f r o m   E x c e l   a n d   a p p e n d   t o   a l l M a t c h e s} ��� r  ����� n  ����� 1  ���(
�( 
XfrX� o  ���'�' 0 
foundrange 
foundRange� o      �&�& 0 frow fRow� ��� r  ����� n  ����� 1  ���%
�% 
DPVu� 4  ���$�
�$ 
X117� l ����#�"� c  ����� b  ����� m  ���� ���  B� o  ���!�! 0 frow fRow� m  ��� 
�  
ctxt�#  �"  � o      �� 0 
newmatches 
newMatches� ��� r  ���� n  ����� 1  ���
� 
DPVu� 4  ����
� 
X117� l ������ c  ����� b  ����� m  ���� ���  C� o  ���� 0 frow fRow� m  ���
� 
ctxt�  �  � o      ��  0 newmatchstatus newMatchStatus� ��� r  ��� b  ��� b  ��� b  ��� b  ��� b  	��� o  �� 0 
allmatches 
allMatches� m  �� ���   � o  	�� 0 
newmatches 
newMatches� m  �� ���    (� o  ��  0 newmatchstatus newMatchStatus� m  �� ���  ) ,  � o      �� 0 
allmatches 
allMatches� ��� l ����  � > 8						display dialog "For " & WFpage & ": " & allMatches   � ��� p 	 	 	 	 	 	 d i s p l a y   d i a l o g   " F o r   "   &   W F p a g e   &   " :   "   &   a l l M a t c h e s�  �-  �,  v ��� l $$����  �  �  �   � ��� l &&���
�  �  �
  �   � R      �	��
�	 .ascrerr ****      � ****�  �  ��   � ��� r  1:��� [  16��� o  14�� 0 startrow startRow� m  45�� � o      �� 0 startrow startRow�   � A   � ���� o   � ��� 0 startrow startRow� o   � ��� 0 	totalrows 	totalRows��   � m   � ���
                                                                                  XCEL  alis    �  Macintosh HD               ��7�H+   ��Microsoft Excel.app                                             =�Ț�E        ����  	                Microsoft Office 2011     ��)�      Ț�5     ����i  EMacintosh HD:Applications: Microsoft Office 2011: Microsoft Excel.app   (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h   H D  6Applications/Microsoft Office 2011/Microsoft Excel.app  / ��   � ��� l AA� �����   ��  ��  � ��� Z  Ap������ =  AH��� o  AD���� 0 
newmatches 
newMatches� m  DG�� ���  � k  KR�� ��� l KK������  � < 6		didn't find anything so will make allMatches a space   � ��� l 	 	 d i d n ' t   f i n d   a n y t h i n g   s o   w i l l   m a k e   a l l M a t c h e s   a   s p a c e� ���� r  KR��� m  KN�� ���   � o      ���� 0 
allmatches 
allMatches��  ��  � k  Up�� ��� l UU������  � Q K		did find stuff so going to trim out the last comma and space for tidiness   � ��� � 	 	 d i d   f i n d   s t u f f   s o   g o i n g   t o   t r i m   o u t   t h e   l a s t   c o m m a   a n d   s p a c e   f o r   t i d i n e s s� ��� r  Un��� n  Uj��� 7 Xj����
�� 
ctxt� m  \^���� � l _i������ \  _i��� l `g������ n  `g��� 1  cg��
�� 
leng� o  `c���� 0 
allmatches 
allMatches��  ��  � m  gh���� ��  ��  � o  UX���� 0 
allmatches 
allMatches� o      ���� 0 
allmatches 
allMatches� ���� l oo������  � V P		display dialog "For wireframe page " & WFpage & " I found this: " & allMatches   � ��� � 	 	 d i s p l a y   d i a l o g   " F o r   w i r e f r a m e   p a g e   "   &   W F p a g e   &   "   I   f o u n d   t h i s :   "   &   a l l M a t c h e s��  � ��� l qq��������  ��  ��  � ��� l qq������  � V P finished scanning Excel for this page number, will not write the output into OG   � ��� �   f i n i s h e d   s c a n n i n g   E x c e l   f o r   t h i s   p a g e   n u m b e r ,   w i l l   n o t   w r i t e   t h e   o u t p u t   i n t o   O G� ��� l qq��������  ��  ��  � ��� O  q���� k  u�    r  u� n  u~ 4  y~��
�� 
OGWS o  z}���� 0 wfpage WFpage 4 uy��
�� 
docu m  wx����  o      ���� 0 workingcanvas workingCanvas 	
	 l ����������  ��  ��  
  l ������   = 7 now let's check to see if BRDmatch exists as a layer		    � n   n o w   l e t ' s   c h e c k   t o   s e e   i f   B R D m a t c h   e x i s t s   a s   a   l a y e r 	 	  l ����������  ��  ��    r  �� I ������
�� .corecnte****       **** n �� 2 ����
�� 
OGLa o  ������ 0 workingcanvas workingCanvas��   o      ���� 0 
layercount 
layerCount  r  �� c  �� m  ����
�� boovfals m  ����
�� 
bool o      ���� 0 
foundlayer 
foundLayer   l ����!"��  ! M G go through the layers one at a time. Any of you lot called "BRDmatch"?   " �## �   g o   t h r o u g h   t h e   l a y e r s   o n e   a t   a   t i m e .   A n y   o f   y o u   l o t   c a l l e d   " B R D m a t c h " ?  $%$ Y  ��&��'(��& k  ��)) *+* r  ��,-, n  ��./. 1  ����
�� 
pnam/ n ��010 4  ����2
�� 
OGLa2 o  ������ 0 layernumber layerNumber1 o  ������ 0 workingcanvas workingCanvas- o      ���� 0 
layertitle 
layerTitle+ 3��3 Z ��45����4 =  ��676 o  ������ 0 
layertitle 
layerTitle7 m  ��88 �99  B R D m a t c h5 r  ��:;: m  ����
�� boovtrue; o      ���� 0 
foundlayer 
foundLayer��  ��  ��  �� 0 layernumber layerNumber' m  ������ ( o  ������ 0 
layercount 
layerCount��  % <=< l ����������  ��  ��  = >?> Z  �/@A����@ = ��BCB o  ������ 0 
foundlayer 
foundLayerC m  ����
�� boovfalsA k  �+DD EFE l ����GH��  G * $ it doesn't exist so let's create it   H �II H   i t   d o e s n ' t   e x i s t   s o   l e t ' s   c r e a t e   i tF JKJ I ������L
�� .corecrel****      � null��  L ��MN
�� 
koclM n ��OPO m  ����
�� 
OGLaP o  ������ 0 workingcanvas workingCanvasN ��Q��
�� 
prdtQ K  ��RR ��S��
�� 
pnamS m  ��TT �UU  B R D m a t c h��  ��  K VWV O  �)XYX I �(����Z
�� .corecrel****      � null��  Z ��[\
�� 
kocl[ m  ���
�� 
OGSh\ ��]^
�� 
insh] n  _`_  ;  ` n aba 2 ��
�� 
OGGrb 4  ��c
�� 
OGLac m  dd �ee  B R D m a t c h^ ��f��
�� 
prdtf K  "gg ��hi
�� 
Ogsph m  ���� i ��j��
�� 
Ogfij m  ��
�� OGFTOGf0��  ��  Y o  ������ 0 workingcanvas workingCanvasW k��k l **��������  ��  ��  ��  ��  ��  ? lml l 00��������  ��  ��  m non l 00��������  ��  ��  o pqp l 00��rs��  r + % BRDmatch now exists so let's proceed   s �tt J   B R D m a t c h   n o w   e x i s t s   s o   l e t ' s   p r o c e e dq uvu r  0>wxw n 0:yzy 4  3:��{
�� 
OGLa{ m  69|| �}}  B R D m a t c hz o  03���� 0 workingcanvas workingCanvasx o      ���� 0 workinglayer workingLayerv ~~ r  ?K��� l ?G������ n ?G��� 4 BG���
�� 
OGSh� m  EF���� � o  ?B���� 0 workinglayer workingLayer��  ��  � o      ���� 0 
reqgraphic 
reqGraphic ��� l LL��������  ��  ��  � ��� r  L|��� K  Lt�� ����
�� 
Ogas� m  OR��
�� OGtaOGt2� ����
�� 
Ogds� m  UV��
�� boovfals� ����
�� 
Ogdl� m  YZ��
�� boovfals� ����
�� 
ptsz� J  ]e�� ��� m  ]`�� @������ ���� m  `c�� @6؎:!d��  � ����
�� 
Ogor� J  hp�� ��� m  hk�� @y�2	1� ��~� m  kn�� @����
�w�~  �  � n      ��� 1  w{�}
�} 
pALL� o  tw�|�| 0 
reqgraphic 
reqGraphic� ��� r  }���� K  }��� �{��
�{ 
ctxt� o  ~��z�z 0 
allmatches 
allMatches� �y��
�y 
ptsz� m  ���x�x � �w��v
�w 
colr� J  ���� ��� m  ���� ?ə������ ��� m  ���� ?ə������ ��u� m  ���� ?ə������u  �v  � n      ��� m  ���t
�t 
ctxt� o  ���s�s 0 
reqgraphic 
reqGraphic� ��� l ���r�q�p�r  �q  �p  � ��� l ���o���o  � ( " text highlighted if there's a gap   � ��� D   t e x t   h i g h l i g h t e d   i f   t h e r e ' s   a   g a p� ��� Z  �����n�m� E  ����� o  ���l�l 0 
allmatches 
allMatches� m  ���� ��� 
 ( G a p )� r  ����� K  ���� �k��
�k 
ctxt� o  ���j�j 0 
allmatches 
allMatches� �i��
�i 
ptsz� m  ���h�h � �g��f
�g 
colr� J  ���� ��� m  ���� ?�333333� ��� m  ���� ?ə������ ��e� m  ���� ?ə������e  �f  � n      ��� m  ���d
�d 
ctxt� o  ���c�c 0 
reqgraphic 
reqGraphic�n  �m  � ��b� l ���a�`�_�a  �`  �_  �b  � m  qr���                                                                                  OGfl  alis    �  Macintosh HD               ��7�H+  ��iOmniGraffle Professional 5.app                                 �r%� ڑ        ����  	                Applications    ��)�      � ́    ��i  9Macintosh HD:Applications: OmniGraffle Professional 5.app   >  O m n i G r a f f l e   P r o f e s s i o n a l   5 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 5.app   / ��  � ��� l ���^�]�\�^  �]  �\  � ��� l  ���[���[  � � �
	prepare for next page iteration.
	WFpage incremented up to next value
	allMatches goes back to original default
	newMatches is made blank to help detect empty results on next pass
   � ���l 
 	 p r e p a r e   f o r   n e x t   p a g e   i t e r a t i o n . 
 	 W F p a g e   i n c r e m e n t e d   u p   t o   n e x t   v a l u e 
 	 a l l M a t c h e s   g o e s   b a c k   t o   o r i g i n a l   d e f a u l t 
 	 n e w M a t c h e s   i s   m a d e   b l a n k   t o   h e l p   d e t e c t   e m p t y   r e s u l t s   o n   n e x t   p a s s 
� ��� r  ����� l ����Z�Y� [  ����� o  ���X�X 0 wfpage WFpage� m  ���W�W �Z  �Y  � o      �V�V 0 wfpage WFpage� ��� r  ����� m  ���� ���  B R D   M a t c h e s :  � o      �U�U 0 
allmatches 
allMatches� ��� r  ����� m  ���� ���  � o      �T�T 0 
newmatches 
newMatches� ��S� Z ����R�Q� =  ����� o  ���P�P 0 wfpage WFpage� o  ���O�O 0 wfpagecount wfPageCount� I ���N��M
�N .sysodlogaskr        TEXT� m  ���� ���  A l l   f i n i s h e d !�M  �R  �Q  �S   � o   � ��L�L 0 wfpagecount wfPageCount��  ��  ��       �K� �K  � �J
�J .aevtoappnull  �   � ****  �I�H�G�F
�I .aevtoappnull  �   � **** k          C  X  �		  �

  �  ��E�E  �H  �G   �D�C�D 0 theitem theItem�C 0 layernumber layerNumber m�B�A @�@�?�>�=�<�;�:�9�8�7 U�6�5 p�4�3 v z ��2�1 ��0 ��/�.�-�, � ��+�*�)�(�'�&�%�$ � ��#�"�!� ����;I�Y[]����������������8�T���d����
�	|������������� �������������B �A 0 	totalrows 	totalRows
�@ 
docu�? 0 	_document  
�> 
pnam
�= 
ctxt�< 0 
wffilename 
wfFileName
�; 
ppth�: 	0 _path  
�9 
OGWS
�8 .corecnte****       ****�7 0 wfpagecount wfPageCount�6 0 _xlsdocument  �5 0 xlsfilename xlsFileName�4 
�3 .sysontocTEXT       shor
�2 .sysodlogaskr        TEXT�1 0 wfpage WFpage�0 0 
allmatches 
allMatches�/ 0 
newmatches 
newMatches
�. 
nmbr�- 0 startrow startRow
�, 
X117�+ 0 searchrange searchRange
�* 
5166
�) 
5172�( 
�' .sTBL1395X117      7 X117�& 0 
foundrange 
foundRange
�% 
DPVu�$ 0 foundstr foundStr
�# 
ascr
�" 
txdl
�! 
citm�  0 
commapages 
commaPages
� 
kocl
� 
cobj
� 
XfrX� 0 frow fRow�  0 newmatchstatus newMatchStatus�  �  
� 
leng� 0 workingcanvas workingCanvas
� 
OGLa� 0 
layercount 
layerCount
� 
bool� 0 
foundlayer 
foundLayer� 0 
layertitle 
layerTitle
� 
prdt
� .corecrel****      � null
� 
OGSh
� 
insh
� 
OGGr
� 
Ogsp
� 
Ogfi
�
 OGFTOGf0�	 � 0 workinglayer workingLayer� 0 
reqgraphic 
reqGraphic
� 
Ogas
� OGtaOGt2
� 
Ogds
� 
Ogdl
� 
ptsz
� 
Ogor�  

�� 
pALL�� 
�� 
colr�F�E�O�  *�k/E�O��,�&E�O��,E�O��-j E�UO� *�k/E�O��,�&E�UOa a j %a j %a %�%a j %a %�%a j %a j %a %j OkE` Oa E` Oa E` Os�kh��ka &E` O�h_ �x*a a _ %a  %_ %/E` !O_ !a "_ a #ea $ %E` &O_ &a ',�&E` (O_ (a ) �a *kv_ +a ,,FO_ (a --E` .Oa /kv_ +a ,,FO �_ .[a 0a 1l kh  �a &E�O�_   \_ &a 2,E` 3O*a a 4_ 3%�&/a ',E` O*a a 5_ 3%�&/a ',E` 6O_ a 7%_ %a 8%_ 6%a 9%E` OPY hOP[OY��OPY u_ (a &E` (O_ _ (  \_ &a 2,E` 3O*a a :_ 3%�&/a ',E` O*a a ;_ 3%�&/a ',E` 6O_ a <%_ %a =%_ 6%a >%E` OPY hOPOPW X ? @hO_ kE` [OY�nUO_ a A  a BE` Y _ [�\[Zk\Z_ a C,l2E` OPO�_*�k/�_ /E` DO_ Da E-j E` FOfa G&E` HO 2k_ Fkh _ Da E�/�,E` IO_ Ia J  
eE` HY h[OY��O_ Hf  W*a 0_ Da E,a K�a Lla $ MO_ D 0*a 0a Na O*a Ea P/a Q-6a Ka Rla Sa Ta $a U MUOPY hO_ Da Ea V/E` WO_ Wa Nk/E` XOa Ya Za [fa \fa ]a ^a _lva `a aa blva c_ Xa d,FO�_ a ]a ea fa ga ga gmva U_ X�-FO_ a h '�_ a ]a ea fa ia ga gmva U_ X�-FY hOPUO_ kE` Oa jE` Oa kE` O_ �  a lj Y h[OY��ascr  ��ޭ
70 DEFINT A-Z:OPEN"GRP:"AS#1:DIM M(100):DIM T(7)
110 R=RND(-TIME)
120 ON STRIG GOSUB 1000
130 ON SPRITE GOSUB 1250
140 ON INTERVAL=10 GOSUB 1110
150 ON SPRITE GOSUB 1250
160 COLOR 15,1,1:SCREEN 2,0,0
190 '��������� ��������� ��������
210 FOR I=0 TO 3
220    S$=""
230    FOR J=1 TO 8:READ S:S$=S$+CHR$(S):NEXT J
260    SPRITE$(I)=S$
270 NEXT I
280 ' � � � � � � � � � � �  � � � �
310 DRAW"bm0,176":DRAW"s4a0"
330 LINE(0,0)-(255,191),15,B:LINE(16,2)-(239,2),15
350 LINE(16,2)-(239,189),15,B:LINE(16,16)-(239,16),15
370 DRAW"bm136,5":COLOR 15
380 T$="����:":GOSUB 920
390 SC=0
400 PRINT#1,USING"######";SC
420 ' � � � � � � � �  � � � �
440 FOR I=1 TO 100
450    E=INT(RND(1)*224)+16:F=INT(RND(1)*160)+16:PSET(E,F)
480 NEXT I
500 '��������� �������� ������� ����������
530 FOR I=1 TO 100:M(I)=INT(RND(1)*130)+16:NEXT I
560 CIRCLE(160,60),40,11:PAINT(160,60),11
570 CIRCLE(175,45),10,9,,,13/10:PAINT(175,45),9
590 '� � � � � � � � �  � � � � � � �
610 DRAW"bm10,4"
620 FOR I=10 TO 13:PUT SPRITE I,STEP(10,0),15,1:NEXT
650 X=24:Y=96:LI=14
660 F$="t180v12o2s11m100e16r16d#2"
670 M$="t180v12o6l24bgbgab"
680 W$="t180s1m3000o3c"
690 MX=200:MY=96:IX=IX+1:T=-2:F=0:J=0
700 STRIG(0)ON:SPRITE ON:INTERVAL ON
730 IF IX>100THEN IX=0
740 L=SGN(M(IX)-MY)
760 '� � � � � � � �  � � � �
780 PUT SPRITE 0,(X,Y),15,1
790 PUT SPRITE 1,(MX,MY),15,0
800 IF F THEN GOSUB 1040
810 IF J THEN GOSUB 1160
820 IF STICK(0)=1 THEN Y=Y-2
830 IF STICK(0)=5 THEN Y=Y+2
840 IF Y<=16 THEN Y=16
850 IF Y>=176 THEN Y=176
860 MY=MY+L:IF MY=M(IX)THEN IX=IX+1:GOTO 730
870 MX=MX-T:IF MX<40 OR MX>228 THEN T=-T
880 GOTO 780
890 '������������ ������ �� �����
920 FOR I=1 TO LEN(T$):PRINT#1,T$:DRAW"bm-2,0":NEXT
960 RETURN
970 ' ����  � � � � � �
1000 IF F THEN RETURN
1010 PLAY"l8s8m300o6c","l8s8m300o7c"
1020 A=Y:B=X+16:F=1
1030 RETURN
1040 B=B+7
1050 IF B>232 THEN PUT SPRITE 3,(0,209):F=0:RETURN
1060 PUT SPRITE 3,(B,A),15,2:RETURN
1070 RETURN
1080 ' � � � � � �  ����������
1110 IF J THEN RETURN
1120 PLAY"l16s14m800o2a"
1130 BX=MX-8:BY=MY+4
1140 PUT SPRITE 4,(BX,BY),2,3
1150 J=-1:STRIG(0)ON:RETURN
1160 BX=BX-5
1170 IF BX<16 THEN BY=209:J=0
1180 PUT SPRITE 4,(BX,BY),2,3
1190 RETURN
1200 '������������ ��������� ����������.
1210 '����������� �������� �� ��������� � �� ������������
1250 SPRITE OFF:INTERVAL OFF
1260 IF A+2>MY AND A+5<=MY+7 AND B+8>=MX THEN SI=30:PLAY M$:GOTO 1300
1270 IF BY+2>Y AND BY-7<Y AND BX<34 THEN LI=LI-1:PLAY F$:GOTO 1300
1280 IF A+2>=BY AND A+5<=BY+7 AND BY+8>=36 THEN SI=10:PLAY W$:GOTO 1400
1290 SPRITE ON:INTERVAL ON:STRIG(0)ON:RETURN
1300 ' � � � � � � �  �� ������
1330 FOR I=0 TO 50
1340 COLOR,,RND(1)*16
1350 NEXT
1360 MY=96:MX=220
1370 ' �������� �������
1400 PUT SPRITE 3,(0,209):F=0:A=0:B=209
1410 PUT SPRITE 4,(0,209):J=0:BX=0:BY=209
1420 IX=IX+1
1430 ' ���������� �����
1460 DRAW"bm178,5":COLOR 1
1470 PRINT#1,USING"######";SC
1480 SC=SC+SI
1490 DRAW"bm178,5":COLOR 15
1500 PRINT#1,USING"######";SC
1510 COLOR,,1
1520 IF LI=9 THEN GOTO 1590
1530 PUT SPRITE LI,(0,209)
1540 SPRITE ON:INTERVAL ON
1550 RETURN 730
1560 ' � � � � �  � � � �
1590 STRIG(0)OFF:INTERVAL OFF:SPRITE OFF
1600 PUT SPRITE 0,(0,209)
1610 PUT SPRITE 1,(0,209)
1620 PUT SPRITE 3,(0,209)
1630 PUT SPRITE 4,(0,209)
1640 LINE(24,60)-(232,76),15,BF
1650 DRAW"bm26,64":COLOR 1
1660 T$="     ���� ��������"
1670 GOSUB 920
1680 FOR I=1 TO 5000:NEXT
1690 S=STICK(0):IF S=0 THEN 1690
1700 IF S<>1 THEN 1720
1710 CLS:GOTO 310
1720 COLOR 15,4,4
1730 END
1740 ' � � � � � �  ���  � � � � � � � �
1770 DATA 0, 60, 66,255, 66,255, 66, 60
1780 DATA 0,224, 68,255,255, 68,224,  0
1790 DATA 0, 64, 34, 63, 34, 64,  0,  0
1800 DATA 0,  2, 68,252, 68,  2,  0,  0

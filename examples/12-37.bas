10 COLOR 1,15,8:SCREEN 2,2:OPEN"grp:"FOR OUTPUT AS#1
20 DEFINT A-Z:K=8:E=8:X8=55:Y8=25
30 'OOOOOO ������� ��������� ����� OOOOOO
40 FOR RO=Y8 TO Y8+64 STEP 64:FOR I=X8 TO X8+32*3 STEP 32:LINE(I+1,RO)-STEP(15,15),,BF:LINE(I+17,RO+16)-STEP(15,15),,BF:LINE(I+1,RO+32)-STEP(15,15),,BF:LINE(I+17,RO+48)-STEP(15,15),,BF:NEXTI,RO
50 LINE(X8,Y8-1)-(X8+1+16*8,Y8-1)
60 LINE(X8,Y8+16*8)-(X8+16*8+1,Y8+16*8)
70 LINE(X8,Y8-1)-(X8,Y8+16*8)
80 LINE(X8+1+16*8,Y8-1)-(X8+16*8+1,Y8+16*8)
90 PRESET(X8+5,Y8-11):PRINT #1,"1 2 3 4 5 6 7 8"
100 PRESET(X8-7,Y8+5):PRINT #1,"1"
110 PRESET(X8-7,Y8+21):PRINT #1,"2"
120 PRESET(X8-7,Y8+37):PRINT #1,"3"
130 PRESET(X8-7,Y8+53):PRINT #1,"4"
140 PRESET(X8-7,Y8+69):PRINT #1,"5"
150 PRESET(X8-7,Y8+85):PRINT #1,"6"
160 PRESET(X8-7,Y8+101):PRINT #1,"7"
170 PRESET(X8-7,Y8+117):PRINT #1,"8"
180 PRESET(20,165):PRINT#1,"��� ���?:"
190 'OOOOOO ���� ��������� ������� ���� OOOOOO
200 EL=100
210 P$=INPUT$(1):IF P$="" THEN 210
220 IF M$<>""THEN 240
230 PRESET(EL,165):PRINT #1,P$+","
240 M$=M$+P$:PRESET(EL,165):PRINT #1,P$:EL=EL+16
250 IF LEN(M$)<2 THEN 210
260 M=VAL(LEFT$(M$,1)):N=VAL(RIGHT$(M$,1)):IF M<1 OR M>K OR N<1 OR N>E THEN CLS:P$="":M$="":GOTO  20
270 P$="":M$="":EL=0
280 DATA 1,1,1,2,7,10,16,23,13,1,1,2,7,15,0,0,0,192,240,112,56,24,24,24,56,48,16,8,252,254,0,0
290 FOR TI=1 TO 32:READ R:XO$=XO$+CHR$(R):NEXT
300 SPRITE$(1)=XO$
310 DIM A(K,E) '� � � � � � � �  � � � � � � � � �
320 G=8:I=M:J=N:A(I,J)=1:XX=(J-1)*16+X8:YY=(I-1)*16+Y8:PUT SPRITE 1,(XX,YY),10,1
330 FOR V=-2 TO 2:FOR H=-2 TO 2'������� ������������ ��������� ���� ����
340 IF V=0 OR H=0 OR ABS(V)=ABS(H) THEN 350 ELSE GOSUB 500 '������� �� ������������, ������������ ����������� ������� ���� ����.
350 NEXT H:NEXT V
360 COLOR15,1,8:PSET(190,45):PRINT #1,SED:COLOR1,15,8
370 COLOR15,1,8:PSET(190,60):PRINT #1,I;",";J:COLOR 1,15,8
380 SED=SED+1 '����� �����
390 I=I+V2:J=J+H2:XX=(J-1)*16+X8:YY=(I-1)*16+Y8:A(I,J)=1
400 PUT SPRITE 1,(XX,YY),10,1 '����������� �������
410 IF (I-V2+J-H2)MOD2<>0 THEN GOTO 430
420 COLOR15,1,8:PRESET((J-H2-1)*16+X8+5,(I-V2-1)*16+Y8+5):PRINT #1,"O":COLOR1,15,8:GOTO 440
430 PRESET((J-H2-1)*16+X8+5,(I-V2-1)*16+Y8+5):PRINT #1,"O"'���������� ���������� �����
440 PRESET(190,45):PRINT #1,SED
450 PRESET(215,45):PRINT #1,"���"
460 PRESET(190,60):PRINT #1,I;",";J
470 FOR II=1 TO K:FOR JJ=1 TO E
480 IF A(II,JJ)=1 THEN NEXT JJ:NEXT II:GOTO 610 ELSE IF G>0 THEN G=8:GOTO 330
490 '������������, ��������� ����� ��������� ����� � ��� �����,�� ������� ���� ��� �� �����, � ��������� �� ��� ������������.
500 IF I+V=>1 AND I+V=<K AND J+H=>1 AND J+H=<E THEN 510 ELSE RETURN
510 IF A(I+V,J+H)=0 THEN I=I+V:J=J+H ELSE RETURN
520 FOR V1=-2 TO 2:FOR H1=-2 TO 2
530 IF V1=0 OR H1=0 OR ABS(V1)=ABS(H1) THEN 560
540 IF I+V1>=1 AND I+V1<=K AND J+H1>=1 AND J+H1<=E THEN 550 ELSE 560
550 IF A(I+V1,J+H1)=0 THEN L=L+1:GOTO 560 ELSE 560
560 NEXT H1,V1
570 IF(M=4 AND N=1)OR(M=4 AND N=4)OR(M=7AND N=2) THEN 590 ELSE 580
580 IF L<G THEN G=L:V2=V:H2=H:GOTO 600 ELSE GOTO 600
590 IF L=<G THEN G=L:V2=V:H2=H
600 L=0:I=I-V:J=J-H:RETURN '����� ������������
610 COLOR 15,1,8:PSET(20,165):PRINT #1,"���������������������������":COLOR1,15,8
620 PRINT#1,"��������� ���� ����?(�/�):"
630 P$=INPUT$(1):IF P$="" THEN 630
640 ON INSTR("�d�Dy���n�N�",P$) GOTO 660,660,660,660,660,660,660,660,670,670,670,670
650 P$="":GOTO 610
660 SCREEN0:RUN
670 CLS:PRESET(60,90):PRINT #1,"G O O D  B Y E !":PUT SPRITE 1,(116,110),8,1
680 FOR T=0 TO 10000:NEXT:END

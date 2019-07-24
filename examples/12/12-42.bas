22 CLS:PRINT:PRINT:INPUT"Число М ";M:DIM A$(17)
50 FOR I=1 TO 4:FOR J=1 TO 4:FOR K=1 TO 4:FOR L=1 TO 4:FOR N=1 TO 4:FOR S=1 TO 4:FOR P=1 TO 4:FOR R=1 TO 4:A=1
70  IF I=1 THEN A=A+2:A$(2)="+"  ' OOO В строках 70-390 осуществляется
80  IF I=2 THEN A=A-2:A$(2)="-"  ' полный перебор возможных комбинаций
90  IF I=3 THEN A=A*2:A$(2)="*"  ' расположения символов  +,-,*,/  меж-
100 IF I=4 THEN A=A/2:A$(2)="/"  ' ду цифрами 1,2,3,4,5,6,7,8,9 OOO
110 IF J=1 THEN A=A+3:A$(4)="+"
120 IF J=2 THEN A=A-3:A$(4)="-"
130 IF J=3 THEN A=A*3:A$(4)="*"
140 IF J=4 THEN A=A/3:A$(4)="/"
150 IF K=1 THEN A=A+4:A$(6)="+"
160 IF K=2 THEN A=A-4:A$(6)="-"
170 IF K=3 THEN A=A*4:A$(6)="*"
180 IF K=4 THEN A=A/4:A$(6)="/"
190 IF L=1 THEN A=A+5:A$(8)="+"
200 IF L=2 THEN A=A-5:A$(8)="-"
210 IF L=3 THEN A=A*5:A$(8)="*"
220 IF L=4 THEN A=A/5:A$(8)="/"
230 IF N=1 THEN A=A+6:A$(10)="+"
240 IF N=2 THEN A=A-6:A$(10)="-"
250 IF N=3 THEN A=A*6:A$(10)="*"
260 IF N=4 THEN A=A/6:A$(10)="/"
270 IF S=1 THEN A=A+7:A$(12)="+"
280 IF S=2 THEN A=A-7:A$(12)="-"
290 IF S=3 THEN A=A*7:A$(12)="*"
300 IF S=4 THEN A=A/7:A$(12)="/"
310 IF P=1 THEN A=A+8:A$(14)="+"
320 IF P=2 THEN A=A-8:A$(14)="-"
330 IF P=3 THEN A=A*8:A$(14)="*"
340 IF P=4 THEN A=A/8:A$(14)="/"
350 IF R=1 THEN A=A+9:A$(16)="+"
360 IF R=2 THEN A=A-9:A$(16)="-"
370 IF R=3 THEN A=A*9:A$(16)="*"
380 IF R=4 THEN A=A/9:A$(16)="/"
390 IF A=M THEN G=G+1:GOTO 420
395 LOCATE 16,7:PRINTI;J;K;L;N;S;P;R;
400 NEXT R,P,S,N,L,K,J,I
410 IF W<>=4THENPRINT"УВЫ......":END ELSE END
420 FOR Y=1 TO 17 STEP 2:A$(Y)=STR$((Y+1)/2):NEXTY
430 LOCATE0,10+G:FOR Y=1 TO 17
440 PRINTA$(Y);:NEXT Y
450 IF I=4ANDR=4 THEN PRINT:PRINT"ВСЕ.":END ELSE W=4:GOTO 400

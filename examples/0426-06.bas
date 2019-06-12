10 CLS:DIM K,M%,D%,Q,F$:INPUT"Введите нат. число";K
30 F$=STR$(K):M%=LEN(F$):DIM A(M%)
40 FOR I=1 TO M%:A(I)=VAL(MID$(F$,I,1)):NEXT
50 FOR I=2 TO M%-1:FOR J=I+1 TO M%
60 IF A(I)>A(J)THEN SWAP A(I),A(J)
70 NEXT J,I
80  D%=A(3)-A(2)
90 IF M%<3 THEN PRINT"Число должно содержать не менее 2 цифр":GOTO 20
100 IF M%=3 THEN PRINT"Арифм.прогрессия есть!":GOTO 150
110 FOR I=4TO M%
120 IF A(I)-A(I-1)<>D%THEN PRINT"Арифм.прогрессии нет":GOTO160
130 NEXT I
140 PRINT"Арифм.прогрессия есть!"
150 IF M%=3 AND A(3)=0 THEN PRINT"Геом.прогрессии нет":END 
160 FOR I=2 TO M%:IF A(I)=0 THENPRINT"Геом.прогрессии нет":END
170 NEXT I
180 Q=A(3)/A(2)
190 IF M%=3 THEN PRINT"Геом.прогрессия есть!":END
200 FOR I=4 TO M%
210 IF A(I)/A(I-1)<>Q THEN PRINT"Геом.прогрессии нет":END
220 NEXT I
230 PRINT"Геом.прогрессия есть!":END

10 R=0:P$="":INPUT"Введите первое слово";X$
20 INPUT"Введите второе слово";Y$
25 IF LEN(X$)=0 OR LEN(Y$)=0 THEN PRINT"Не балуйтесь!":RUN
30 L=LEN(X$):U=LEN(Y$)
40 FOR I=1 TO L-1:FOR J=I+1TO L
50 IF MID$(X$,I,1)=MID$(X$,J,1) THEN MID$(X$,J,1)=CHR$(0)
60 NEXT J,I
70 FOR I=1 TO L:FOR J=1 TO U
80 IFMID$(X$,I,1)=MID$(Y$,J,1) AND MID$(X$,I,1)<>CHR$(0) THEN P$=P$+MID$(X$,I,1):R=R+1:N$=MID$(X$,I,1):NEXT I
90 IF N$=MID$(X$,L,1) THEN 120
100 NEXT J
110 NEXT I:X$="":Y$=""
120 PRINT"Из первого слова используется";R;"букв для написания второго"
125 PRINT
130 IF LEN(P$)>=2 THEN PRINT "Эти буквы: ";P$
140 IF LEN(P$)=1 THEN PRINT "Эта буква: ";P$
150 RUN 10

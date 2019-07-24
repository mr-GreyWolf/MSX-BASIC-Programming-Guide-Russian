1 CLS 'Вначале очистим экран!
2 INPUT"Введите два натуральных числа через запятую,причем второе число должно быть больше первого (эти числа задают диапазон, в котором ищутся абсолютно простые числа)";C,E
3 PRINT"Вы хотите узнать всю правду об абсолютно простых числах, лежащих на отрезке [";C;",";E;"] ? Пожалуйста..."
4 FOR A=C TO E:IF A<10AND(A=1ORA=2ORA=3ORA=5ORA=7)THEN PRINTA;:NEXTA ELSE IF A<10AND(A=4ORA=6ORA=8ORA=9)THEN NEXTA ELSE A$=MID$(STR$(A),2)
5 N=LEN(A$):DIM A(N)
10 FOR L=1TO N:A(L)=VAL(MID$(A$,L,1)):NEXT L:GOSUB 200
20 I=N
30 GOTO 110
40 GOSUB 300:J=N-1
50 IF A(J)>=A(J+1)ANDJ>0 THEN J=J-1:GOTO 50
60 I=J
70 IF I>0 THEN J=N:GOTO 80 ELSE GOTO 110
80 IF A(I)>=A(J) THEN J=J-1:GOTO 80
90 SWAP A(I),A(J):P1=I+1:P2=N
100 IF P1<P2 THEN SWAP A(P1),A(P2):P1=P1+1:P2=P2-1:GOTO100
110 IF I>0 THEN GOTO 40
120 ERASEA:IF JJ<>1 THEN PRINT A;:NEXT AELSE JJ=0:NEXTA
125 PRINT:PRINT"Надеюсь, Вы остались довольны?!"
130 END
190 'Подпрограмма, производящая сортировку массива A(N), состоящего из цифр числа А.
200 FOR M=1 TO N-1:FOR S=M+1 TO N
210 IFA(M)<=A(S)THEN NEXT:NEXTELSESWAP A(M),A(S):NEXT:NEXT
220 RETURN 
290 'Подпрограмма, позволяющая определить, является ли число V, составленное из цифр числа A, простым.
300 V=0:FOR P=1TON:V=V+A(P)*10^(N-P):NEXT
310 FOR Q=2 TO INT(SQR(V))
320 IF VMODQ=0 THEN JJ=1:RETURN ELSE NEXT Q:RETURN

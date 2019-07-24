10 INPUT"Введите количество элементов в массиве(больше чем 1):";N:DIM T(N)
20 PRINT:PRINT" Натуральные элементы массива перeд Вами:":PRINT"WWWWWWWWWWWWWWWWWWWWWWW"
30 FOR I=1 TO N:T(I)=INT(3*RND(-TIME))+1:PRINT T(I);:NEXT:PRINT
40 FOR I=1 TO N-1:FOR J=I+1 TO N
50 IF T(I)>=T(J) THEN SWAP T(I),T(J)
60 NEXT J,I:PRINT"WWWWWWWWWWWWWWWWWWWWWWW"
70 PRINT"Искомое число:";
80 IF T(1)=1 THEN GOSUB 100:PRINT X:END ELSE X=1:PRINT X:END
90 'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
100 S=T(1):A$="Продолжить":K=2
110 IF NOT(K<=N AND A$="Продолжить") THEN X=S+1:PRINT X:END
120 FOR I=1 TO 0 STEP 1
130 IF T(K)<=S+1 THEN S=S+T(K):K=K+1 ELSE A$="Закончить"
140 I=(K<=N AND A$="Продолжить"):NEXT
150 X=S+1:RETURN

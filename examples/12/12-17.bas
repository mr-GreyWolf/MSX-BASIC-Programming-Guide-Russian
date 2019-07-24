30 INPUT"Число элементов";N
40 DIM A(N),B(N):Z=RND(-TIME)
50 INPUT"Чему равен максимальный элемент";F
60 PRINT "Это - данная таблица:"
70 FOR I=1 TO N:A(I)=INT(2*F*RND(1)-F):PRINT A(I);:NEXT:PRINT
80 I=1:J=1:IF I>N THEN 120
90 FOR K=1 TO 0 STEP 1
100 IF A(I)<0 THEN B(J)=A(I):J=J+1
110 I=I+1:K=(I<=N):NEXT K
120 I=1:IF I>N THEN 170
130 FOR K=1 TO 0 STEP 1
140 IF A(I)>=0 THEN B(J)=A(I):J=J+1
150 I=I+1:K=(I<=N):NEXT K
160 PRINT "А это - искомая таблица:"
170 FOR J=1 TO N:PRINT B(J);:NEXT

10 DEFINT M,N,I,J,A,K:INPUT"Введите M и N";M,N:X=RND(-TIME):DIM A(M,N):IF M<1 OR N<1 THEN RUN 10
30 FOR I=1 TO M:FOR J=1 TO N
40 A(I,J)=INT(30*RND(1)+1):IF A(I,J)=2 THEN PRINTUSING"\  \";STR$(A(I,J))+"*";:NEXT:PRINT:NEXT
50 K=0:FOR K=2 TO A(I,J)-1
60 IF A(I,J)/K<>FIX(A(I,J)/K) THEN NEXT K:PRINTUSING"\  \";STR$(A(I,J))+"*";:NEXT J:PRINT:NEXT I ELSE Y=Y+1:PRINT USING"\  \";STR$(A(I,J))+" ";:NEXT J:PRINT:NEXT I
70 PRINT"Звездочками отмечены простые числа;составных чисел в Вашем массиве";Y

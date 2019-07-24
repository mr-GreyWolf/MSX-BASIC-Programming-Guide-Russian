10 LINEINPUT T$:T$=T$+" ":K=0'K-количество слов в T$
20 FOR I=1 TO LEN(T$):IF MID$(T$,I,1)=" " THEN K=K+1
35 NEXT I 'Количество слов в Т$ найдено!
40 DIM W$(K):DIM P(K)'Вот теперь можно описать массивы!
45 FOR J=1 TO K:W$(J)=SPACE$(5):NEXTJ 'Начальная инициализация пробелами элементов массива W$(K)
47 N=1:FOR J=1 TO K:FOR I=N TO LEN(T$)
70 IF MID$(T$,I,1)=" " GOTO 85
80 NEXT I
85 P(J)=I:W$(J-1)=MID$(T$,N,P(J)-P(J-1)-1):N=P(J)+1:PRINT W$(J-1);SPC(5)
90 NEXT J

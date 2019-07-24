5 PRINTSPC(8);"Вводите текст !":LINEINPUT T$:T$=T$+" ":K=0
15 INPUT "Какое слово менять";Z$
16 INPUT "На какое слово менять";Y$
20 FOR I=1 TO LEN(T$):IF MID$(T$,I,1)=" " THEN K=K+1:NEXTI ELSE NEXTI 'K-количество слов в тексте T$
40 DIM W$(K):DIM P(K)'Вот теперь можно описать массивы!
45 FOR J=1 TO K:W$(J)=SPACE$(5):NEXT J
47 N=1'N-номер первой буквы текущего слова в тексте
50 FOR J=1 TO K: FOR I=N TO LEN(T$)
70 IF MID$(T$,I,1)=" " GOTO 85
80 NEXT I
84 'P()-массив,содержащий номера позиций пробелов в тексте
85 P(J)=I:W$(J-1)=MID$(T$,N,P(J)-P(J-1)-1):N=P(J)+1
90 NEXT J
95 A$="Образец не найден! Ваш текст:"
100 FOR J=0 TO K-1
105 IF W$(J)=Z$ THEN W$(J)=Y$:A$="":GOTO 120
106 FOR I=1 TO LEN(W$(J))-LEN(Z$)+1
107 IF Z$<>MID$(W$(J),I,LEN(Z$))THEN115
108 W$(J)=LEFT$(W$(J),I-1)+Y$+RIGHT$(W$(J),LEN(W$(J))-I-LEN(Z$)+1):A$=""
115 NEXTI
120 NEXT J
130 FOR J=0 TO K-1:B$=B$+W$(J)+" ":NEXT
145 PRINT A$
150 PRINT B$:END

10 MAXFILES=3
20 OPEN "BLACK" FOR OUTPUT AS #1:OPEN "RED" FOR OUTPUT AS #2
25 FOR K=1 TO 2
30     FOR X=1 TO 6 'В каждой команде - 6 игроков
40        PRINT "Данные о команде";K;":"
50        INPUT "Имя нападающего";I$:INPUT "Число заброшенных шайб";F: INPUT "Сделанных голевых передач";G:INPUT "Заработанное штрафное время";W
60        PRINT #K,I$;",";F;",";G;",";W
70     NEXT X
80     CLOSE #K
81 NEXT K
90 OPEN "BLACK" FOR INPUT AS #1:OPEN "RED" FOR INPUT AS #2
100 OPEN "ALLSTARS" FOR OUTPUT AS #3
110 DIM MI$(12):DIM MK$(12):DIM MO(12)
115 I=1
120 FOR K=1 TO 2
130     FOR X=1 TO 6
140        INPUT #K,I$,F,G,W
145        IF K=1 THEN A$="BLACK" ELSE A$="RED"
150        O=F+G:MI$(I)=I$:MK$(I)=A$:MO(I)=O:I=I+1
155     NEXT X
156     CLOSE #K
157 NEXT K
165 FOR I=1 TO 11
166     L=I
170     FOR J=I+1 TO 12
175        IF MO(L)<MO(J) THEN L=J
176     NEXT J
180     SWAP MO(I),MO(L):SWAP MI$(I),MI$(L):SWAP MK$(I),MK$(L)
185 NEXT I
190 FOR I=1 TO 6
194     H$=MI$(I):D$=MK$(I):V=MO(I):PRINT #3,H$;",";D$;",";V
200 NEXT I
210 CLOSE #3
220 OPEN "ALLSTARS" FOR INPUT AS#3
230 FOR N=1 TO 6
240    INPUT #3,H$,D$,V
250    PRINT "Фамилия игрока",H$:PRINT "Команда",D$:PRINT "Очки",V
280 NEXT N:CLOSE #3

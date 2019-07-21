10 L=INT(20*RND(-TIME)+5)
11 FOR I=1 TO L
12   IF RND(-TIME)<.5 THEN P$=P$+"1" ELSE P$=P$+"0":S=S+1
13 NEXT
14 IF SMOD2=1 THEN PRINT"Осталось белое зерно!" ELSE PRINT"Осталось черное зерно!"
15 L=LEN(P$):R=INT(RND(-TIME)*L+1):R1=INT(RND(-TIME)*L+1)
16 IF R=R1 THEN GOTO 15
20 Q$="":S$=MID$(P$,R,1):S1$=MID$(P$,R1,1)
30 FOR K=1 TO LEN(P$)
40   IF K<>R AND K<>R1 THEN Q$=Q$+MID$(P$,K,1)
50 NEXT
60 IF S$=S1$ THEN Q$=Q$+"1" ELSE Q$=Q$+"0"
70 P$=Q$:IF LEN(P$)>1 THEN 15 ELSE PRINT"...а белых зерен в банке изначально было";S

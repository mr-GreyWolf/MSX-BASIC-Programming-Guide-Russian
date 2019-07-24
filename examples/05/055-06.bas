20 '(X,Y) - координаты левого верхнего угла первой буквы текста;S - размер букв; L - расстояние между буквами;
60 COLOR 1,15,8:SCREEN 2:CLEAR 1000:GOSUB 150'WW▐
80 X=70:Y=80:S=2:L=9:S=4*S
90 TE$="КЛАСС":P$="s=S;bm=X;,=Y;":GOSUB 110'WW▐
100 GOTO 100
110 FOR K=1 TO LEN(TE$):Z$=MID$(STR$(ASC(MID$(TE$,K))),2)
130 P$=P$+"XA$("+Z$+");"+"BR=L;":NEXT:DRAW"XP$;":RETURN
150 DIMA$(255):A$(32)="BR1":A$(225)="BD6U4E2F2D4U2L4BE4BR1"
180 A$(236)="BD6E1U3E2R1D6U6BR2":A$(235)="D6U3R1F3H3E3BR1"
200 A$(243)="BR1R2F1BD4G1L2H1U4E1BR4":RETURN'WW▐

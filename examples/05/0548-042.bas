2  DIM G(2000) 'Программа построения поверхностей!
4    DEFFNZ(X,Y)=(60^(2/3)-(X^2+Y^2)^(1/3))^(3/2)         'L=0
5   'DEFFNZ(X,Y)=SQR(20^2-(SQR(X^2+Y^2)-35)^2)            'L=0
6   'DEFFNZ(X,Y)=10*COS(.24*SQR(X^2+Y^2))                 'L=0
7   'DEFFNZ(X,Y)=COS(.1*X)*COS(.1*Y)*10                   'L=0
8   'DEFFNZ(X,Y)=25*COS(2.5E-03*X*Y)               'L=0.6, L=0 
9   'DEFFNZ(X,Y)=75*EXP(-SQR(X^2+Y^2)^2/600)              'L=0
10  'DEFFNZ(X,Y)=64E-05*X*Y*(X*X-Y*Y)/SQR(X^2+Y^2)'L=1.4, 'L=2
12  'DEFFNZ(X,Y)=SIN(SQR(X^2+Y^2)/5)/SQR(X^2+Y^2)*175     'L=0
13  'DEFFNZ(X,Y)=30*COS(X*.05*EXP(-Y*.01))        'L=.785, L=0
14  'DEFFNZ(X,Y)=(X^2-Y^2)/45                     'L=.785, L=0
15  'DEFFNZ(X,Y)=20*COS((X+Y)/LOG(X^2+Y^4+.5))    'L=.785, L=0
16  'DEFFNZ(X,Y)=30*COS((X+Y)/LOG(X^2+Y^2+.5))    'L=.785, L=0
17  'DEFFNZ(X,Y)=10*SIN(.1*(ABS(X)+ABS(Y)))               'L=0
18 INPUT"Угол поворота";L!:N!=COS(L!):M!=SIN(L!)
19 DEFFNF(X,Y)=FNZ(X*N!-Y*M!,X*M!+Y*N!)
20 COLOR1,15,1:SCREEN2:A=SQR(2)
30 FOR T=-90*A TO 90*A STEP A:W=-100:V=100:C=0:FOR I=-60 TO 60 STEP 6:J=I-T
35 IF J>60 OR J<-60 THEN 70
37 'IF20^2<(SQR(I^2+J^2)-35)^2THEN 70       'Только для строки 5!
40 'IF I=0 AND J=0 THEN 70             'Только для строк 10 и 12!
43  IF (I^2+J^2)^(1/3)>60^(2/3)THEN70       'Только для строки 4!
49 Y1%=INT(.70634*(I+J)+FNF(I,J)+.5)
50 IFY1%>W THEN W=Y1%:C=C+1:IF C=1 THENG(INT(T)+220)=W:V=W:GOTO 60 ELSE 60
55 IF Y1%<V THEN V=Y1% ELSE 70
60 PSET(INT(120+.70634*(I-J)+.5),94-Y1%)
70 NEXTI,T
80 FOR T=-90*A TO 90*A STEP A:W=G(INT(T)+220)
81 FOR J=-60 TO 60 STEP 6:I=J+T
83 IF J=-60 THEN W=-100 ELSE W=G(INT(T)+220)
85 IF I>60 OR I<-60 THEN 120
90 'IF20^2<(SQR(I^2+J^2)-35)^2THEN120       'Только для строки 5!
91 'IF I=0ANDJ=0 THEN 120              'Только для строк 10 и 12!
93  IF(I^2+J^2)^(1/3)>60^(2/3)THEN120       'Только для строки 4!
99 Y1%=INT(.70634*(I+J)+FNF(I,J)+.5)
100 IF Y1%>W THEN G(INT(T)+220)=Y1% ELSE 120
110 PSET(INT(120+.70634*(I-J)+.5),94-Y1%)
120 NEXTJ,T
150 GOTO 150

10 SCREEN 5
20 SET PAGE 0,0:CLS
30 DRAW"bm100,100 c11 d5 r1 d2 r1 bm100,104 l2 d1 l2 d1 bm99,103 u1 l2 d1 l1 bm100,103 r2 u1 bm101,100 d1"
40 SET PAGE 0,1:CLS
50 DRAW"bm100,100 c11 r1 d1 l1 d4 l1 d1 g1 e1 u4 l1 g1 e1 r2 d1 r1 l1 d2 r1 d1 g1"
60 SET PAGE 0,2:CLS
70 DRAW"bm100,100 r1 d1 l1 d6 l1 u1 l2 r3 u1 r1 l1 u1 l1 u2 d1 l1"
90 SET PAGE 0,3:CLS
100 DRAW"bm100,100 r1 d1 l1 d4 f1 g1 h1 g1 e1 u4 l1 g1 d1 bm100,100 d3 r1"
110 FOR I=0 TO 3:SET PAGE I,I
120 FOR T=0 TO 100:NEXT:NEXT
140 GOTO 110 'WW�

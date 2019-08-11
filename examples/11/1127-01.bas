10 SCREEN 1,2
20 SPRITE$(2)="Проверка":SPRITE$(3)="на столкновение"
30 FOR T=1 TO 130
40 PUT SPRITE 2,(T,80):PUT SPRITE 3,(240-T,80)
50 VDP(15+1)=0:Z=INP(&H99) AND 32
60 IF Z<>0 THEN PRINT "Столкновение состоялось!"
70 NEXT

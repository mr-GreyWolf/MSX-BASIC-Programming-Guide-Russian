10 COLOR 1,15,8:SCREEN 1,1:SPRITE$(20)="������!"
20 PUT SPRITE 2,(165,38),7,20
30 PRINT "X=";VPEEK(6921):PRINT "Y="VPEEK(6920):PRINT"���� �����";VPEEK(6923):PRINT"������";VPEEK(6922)
40 FOR T=0 TO 8:PRINT CHR$(VPEEK(14336+VPEEK(6922)*8+T));:NEXT

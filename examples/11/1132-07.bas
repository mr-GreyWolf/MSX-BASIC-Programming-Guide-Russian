10 CLS
20 FOR X=0 TO 255:VPOKE &H1800+X,X:NEXT 
30 FOR X=0 TO &H7FF:VPOKE X,0:NEXT
40 LOCATE 5,10:PRINT"������ �������!"
50 POKE &HFCAF,2
60 LINE (20,10)-(100,40),15,BF
70 CIRCLE (80,30),40,8
80 POKE &HFCAF,1

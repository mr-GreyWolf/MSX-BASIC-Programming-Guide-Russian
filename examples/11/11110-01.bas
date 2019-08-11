10 SCREEN 0:CLS:KEYOFF
20 OUT &H99,0:OUT &H99,0 OR &H40
30 FOR I=1 TO 20
40    READ R$:R=ASC(R$):OUT &H98,R
50 NEXT I:PRINT 'Попробуйте убрать в этой строке оператор PRINT
60 DATA Г,р,у,п,п,о,в,а,я," ",п,е,р,е,с,ы,л,к,а,!

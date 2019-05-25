110 PRINT "Начало";:TIME=0
120 K=0:DIM M(5)
140 K=K+1              '░WWWY
150 A=K/2*3+4-5        '    V
160 GOSUB 230 'WWW▐    '    V
170 FOR L=1 TO 5       '    V
180   M(L)=A           '    V
190 NEXT L             '    V
200 IF K<1000 THEN 140 'WWW▐[
210 PRINT TIME/60;"сек":PRINT "Конец"
220 END
230 RETURN 'WW▐

10 INPUT E
20 S=0:N=1:A=(-1)^N/N^2
30 GOTO 50
40 S=S+A:N=N+1:A=(-1)^N/N^2
50 IF ABS(A)>=E THEN GOTO 40
60 PRINT "Результат:";S

10 INPUT E
20 S=0:N=1:A=(-1)^N/N^2
30 IF ABS(A)>=E THEN S=S+A:N=N+1:A=(-1)^N/N^2:GOTO 30 ELSE PRINT "���������:";S:PRINT"��������: ";-(4*ATN(1))^2/12:PRINT"���������� �� �������� �����:";N-1 '��������, ��� �������� � ��������� � 4*ATN(1) 

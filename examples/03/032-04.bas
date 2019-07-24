100 INPUT"Задайте a,b,c";A,B,C
110 DISC=B*B-4*A*C:W=1/2/A:Z=-B/2/A
120 IF ABS(DISC)<1E-14 THEN PRINT"Двойной корень,x=";Z:GOTO 100'Условие ABS(DISC)<1.E-14 взято вместо условия DISC=0 с целью компенсации ошибок округления.
130 IF DISC<0 THEN 160
140 PRINT "Корни";Z+SQR(DISC)*W;
150 PRINT "и";Z-SQR(DISC)*W:GOTO 100
160 PRINT "Мнимые корни:";Z;"+/-";SQR(-DISC)*W;"i":GOTO100

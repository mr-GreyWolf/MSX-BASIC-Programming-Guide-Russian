10 '������������� �������� ��������������� ���� [14].
20 XM=256:YM=191:X=-10:INPUTH:W=3.14159/40:D=90*3.14159/180:K=.01:COLOR15,4,8:SCREEN2
100 KE=1:FORXN=0TOXM-10STEP4:YN=H*SIN(W*XN+D)*EXP(-K*XN)
130 LINE(0,YM)-(XM,YM):YN=YM-ABS(YN)-3:CIRCLE(X,Y),4,4:IF Y>186 THEN KE=KE+2:CIRCLE(XN+10,YN),4,KE ELSE CIRCLE(XN+10,YN),4,KE
170 X=XN+10:Y=YN:NEXT XN:GOTO 100

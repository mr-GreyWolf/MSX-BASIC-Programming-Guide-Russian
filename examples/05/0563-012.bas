10 COLOR 1,15,8:SCREEN 1,3
20 ON SPRITE GOSUB100:SPRITE ON:X$="��������":SPRITE$(50)=X$+X$+X$+X$
50 FOR K=0 TO 255
60 PUT SPRITE 0,(K,70),4,50:PUT SPRITE 1,(120,K),13,50
80 NEXT:SPRITE ON:GOTO 50
90 '���� ������������! ����
100 PRINT"������������":FORI=1 TO 1000:NEXT:CLS:SPRITE OFF:RETURN

40 INPUT "Введите значения m,n";M,N:GOTO 100' WWWY
50 'Подпрограмма вычисления факториала F!        V
60 F=1:FOR J=1 TO K:F=F*J:NEXTJ'                 V
90 RETURN 'Конец подпрограммы!'                  V
100 K=M:GOSUB 60:M1=F'    ░WWWWWWWWWWWWWWWWWWWWWW[
110 K=N:GOSUB 60:N1=F
120 K=M-N:GOSUB 60:R1=F
130 CMN=M1/N1/R1
140 PRINT "Число сочетаний из М=";M;"по N=";N;"равно";CMN:END

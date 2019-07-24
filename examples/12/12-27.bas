5 'Автор программы: Шарковский Игорь (9 класс), 02.01.90
10 KEY OFF:CLS:COLOR 15,4
20 INPUT"Количество монет (нечетное число, не большее 13)";N
30 IF N/2=FIX(N/2) OR N>13 THEN CLS :RUN20 ELSE X=RND(-TIME):DIM A(N)
40 PRINT "В вашем кошельке лежат монеты:"
50 FOR I=1 TO N:PRINT "XWWWWY";:NEXT:PRINT:
60 FOR I=1 TO N
70 A(I)=INT(20*(RND(1))+10):PRINT "V"A(I)"V";
80 NEXT :PRINT:FOR I=1 TO N:PRINT "ZWWWW[";:NEXT:FOR I=1 TO 1000:NEXT:PRINT:
90 PRINT "Приступим к упорядочению монет по возрастанию ":FOR I=1 TO 1000:NEXT
100 PRINT :IF N=1 THEN PRINT "Всего-то?":END
110 FOR I=1 TO N-1:FOR J=I+1 TO N
120  IF A(I)>=A(J) THEN SWAP A(I),A(J):K=K+1:NEXTJ:NEXT I ELSE K=K+1:NEXT J:NEXT I
130 PRINT "После упорядочения монеты в Вашем кошельке расположились так:"
140 FOR I=1 TO N:PRINT"XWWWWY";:NEXT:FOR I=1 TO 1000:NEXT:PRINT
150 FOR I=1 TO N :PRINT "V"A(I)"V";:NEXT
160 PRINT:FOR I=1 TO N:PRINT"ZWWWW[";:NEXT:FOR I=1 TO 1000:NEXT:FOR I=1 TO 4:PRINT:NEXT
170 PRINT "Теперь (наконец-то) приступим к нахождению средней из них (по массе)":FOR I=1 TO 1000:NEXT:PRINT
190 PRINT "Средняя по массе монета в Вашем кошельке -"A(FIX(N/2)+1)"г":PRINT"Число взвешиваний -"K :FOR I=1 TO 1000:NEXT
220 LOCATE 4+FIX(N/2-1)*6,11:PRINT "   ─°┌°─"
230 LOCATE 4+FIX(N/2-1)*6,12:PRINT "    ┬┬┬"
235 LOCATE 4+FIX(N/2-1)*6,13:PRINT "  ВОТ ОНА"
240 LOCATE 0,24

5  'Автор программы: Поляков Сергей (9 класс), 02.01.90
10 WIDTH80:CLS:INPUT"Введите число монет(продолжение сообщений по нажатию клавиши 'Пробел')";N:IF N/2=FIX(N/2) THEN DIM A(N):X=RND(-TIME) ELSE CLS:RUN 10
20       PRINT "В Вашем кошельке хранятся следующие монеты:"
30       PRINT"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"
40   FOR I=1 TO N:A(I)=INT(100*RND(1)+1):PRINT A(I);:NEXT:R1=A(1)
50 PRINT:PRINT"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW":H$=INPUT$(1)
60   FOR I=1 TO N-1 STEP 2
70       IF A(I)<A(I+1) THEN R=A(I):D=A(I+1) ELSE R=A(I+1):D=A(I)
80       G=G+1:PRINT"  Итак,           "G"-ОЕ ВЗВEШИВАНИЕ":PRINT
90       PRINT" Вес "I"-ой монеты   -"A(I)" граммов     "I+1"-ой монеты-   "A(I+1)" граммов ":PRINT
100      PRINT" Самая меньшая по весу из предыдущих монет -"R1" граммов":PRINT
110      G=G+1:IF R<R1 THEN R1=R
120      PRINT" Меньшая из 2 только что взятых монет-"R"граммов; после сравнения этих монет ОСТАЕТСЯ монета весом "R1"граммов":PRINT
125 PRINT "        ("G"-ОЕ ВЗВЕШИВАНИЕ)":PRINT
130      PRINT" Самая большая по весу из предыдущих монет -"D1" граммов":PRINT
140      G=G+1:IF D>D1 THEN D1=D
150      PRINT" Большая из 2 только что взятых монет-"D"граммов; после сравнения этих монет ОСТАЕТСЯ монета весом "D1" граммов":PRINT
155 PRINT "        ("G"-OE ВЗВЕШИВАНИЕ)":PRINT
160                    H$=INPUT$(1):GOSUB 200
170  C=C+3:NEXT I
180        PRINT:PRINT"После долгих стараний: ("C" взвешиваний) мы нашли,что наибольший вес:":PRINT D1"граммов":PRINT
190        PRINT"  Mинимальный вес:"R1"граммов":END
200 LOCATE 0,4:FOR F=1 TO 17:FOR J=1 TO 80:PRINT" ";:NEXT:NEXT:LOCATE 0,4:RETURN

10 SCREEN 0:WIDTH 40:ADR=4096 'Начальный адрес хранения данных в VRAM
20 INPUT"Число элементов массива";N
30 FOR T=1 TO N
40    INPUT"Очередной элемент";Z
50    FOR I=0 TO 7
60       VPOKE ADR+8*T+I,PEEK(VARPTR(Z)+I)
70 NEXT I,T
80 'Выведем элементы массива на экран
90 FOR T=1 TO N
100    IF VPEEK(ADR+8*T)\128=1 THEN Z$="-." ELSE Z$="+." 'Знак числа
110    FOR I=1 TO 7
120       Z$=Z$+RIGHT$("00"+HEX$(VPEEK(ADR+8*T+I)),2) 'Мантисса числа
130    NEXT I
140    IF(VPEEK(ADR+8*T) MOD 128)\64=1 THEN Z$=Z$+"E+" ELSE Z$=Z$+"E-"
150    Z$=Z$+MID$(STR$((VPEEK(ADR+8*T)MOD 128)-64),2) 'Порядок числа
160 U=VAL(Z$):PRINT U;:NEXT T

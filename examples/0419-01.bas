10 PRINT"Введите два шестнадцатеричных числа"
20 INPUT A$,B$
30 SM=VAL("&H"+A$)+VAL("&H"+B$)
40 DF=VAL("&H"+A$)-VAL("&H"+B$)
50 PRINT "Сумма, разность:";RIGHT$("0000"+HEX$(SM),4);SPC(1);RIGHT$("0000"+HEX$(DF),4)

1 INPUT"Имя файла";A$
10 OPEN A$ FOR INPUT AS#1
20 FOR I=1 TO 7
30    I$(I)=INPUT$(1,#1)
40    PRINT ASC(I$(I)),HEX$(ASC(I$(I)))
50 NEXT
60 CLOSE
65 IF I$(1)<>"Ч" THEN PRINT"Это не BLO-файл! ":END
66 PRINT"Вы хотите вывести адреса на принтер (д/н)?"
67 Y$=INKEY$:IF Y$="" THEN 67
68 IF Y$="д" OR Y$="Д" THEN LPRINT A$
69 A1=256*ASC(I$(3))+ASC(I$(2))
70 PRINT "Начальный адрес:";HEX$(A1);" или";A1
71 IF Y$="д"OR Y$="Д" THEN LPRINT"Начальный адрес:";HEX$(A1);" или";A1
79 A2=256*ASC(I$(5))+ASC(I$(4))
80 PRINT "Конечный адрес:";HEX$(A2);" или";A2
81 IF Y$="д" OR Y$="Д" THEN LPRINT"Конечный адрес:";HEX$(A2);" или";A2
89 A3=256*ASC(I$(7))+ASC(I$(6))
90 PRINT "Адрес запуска:";HEX$(A3);" или";A3
91 IF Y$="д" OR Y$="Д" THEN LPRINT"Адрес запуска:";HEX$(A3);" или";A3

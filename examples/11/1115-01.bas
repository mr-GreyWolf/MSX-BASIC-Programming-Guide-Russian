10 SCREEN 3:OPEN"GRP:" AS#1
20 PSET(8,0),3:PSET(12,0),1 'Рисуем "толстую" линию
30 PSET(30,80):PRINT #1,HEX$(VPEEK(8))
40 A$=INPUT$(1)

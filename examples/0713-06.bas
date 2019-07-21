10 DATA 3E,0F     :' LD   A,0Fh      ; В 15-й регистр PSG поместим
20 DATA 1Е,03     :' LD   Е,03h      ; 3 (для джойстика 1)
30 DATA CD,93,00  :' CALL 0093h      ; BIOS записи (оператор SOUND не
35 '                                 ; действует!)
40 DATA 3E,0E     :' LD   A,0Eh      ; Читаем содержимое регистра 14
50 DATA CD,96,00  :' CALL 0096h      ; BIOS чтения
60 DATA 32,00,E0  :' LD   (E000h),A  ; Полученное число поместим в
65 '                                 ; ячейку с адресом &HE000
70 DATA C9        :' RET
80 FOR I=0 TO 15:READ A$:POKE &HD000+I,VAL("&H"+A$):NEXT I
90 DEFUSR=&HD000
100 A=USR(0)                         ' Прочитаем состояние джойстика 1
110 PRINT RIGHT$("0"+BIN$(NOT(PEEK(&HE000) AND 15)),4)

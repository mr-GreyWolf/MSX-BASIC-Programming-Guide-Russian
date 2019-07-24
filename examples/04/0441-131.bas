100 INPUT "Строка для сжатия:";FS$ 
109 'Удаление пробелов из FS$.
110 S$=FS$:RMV$=" ":GOSUB 200 
130 PRINT S$:END
140 'OOOO Рекурсивная подпрограмма сжатия строк. OOOO
150 'В RMV$ - удаляемые символы 
160 'В S$ - исходная строка и результат 
200 IF INSTR(1,S$,RMV$)<>0 THEN S$=LEFT$(S$,INSTR(1,S$,RMV$)-1)+RIGHT$(S$,LEN(S$)-INSTR(1,S$,RMV$)):GOSUB 200 
210 RETURN

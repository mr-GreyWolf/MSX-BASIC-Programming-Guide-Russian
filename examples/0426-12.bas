10 CLEAR 1500
20 INPUT"Введите количество слов";N:PRINT"Вводите слова!"
27 'В строках 30-60 идентификация исходного массива C$(N).
30 DIM C$(N):FOR I=1 TO N:INPUTC$(I):NEXT:K$=""
75 'В строках 80-130 находятся "общие" символы. Значение переменной К$ состоит из "общих" символов.
80 FOR I=1 TO N:FOR J=1 TO LEN(C$(I)):FOR R=1 TO N
110 FOR K=1 TO LEN(C$(R))
120 IF MID$(C$(I),J,1)=MID$(C$(R),K,1) THEN NEXT R:K$=K$+MID$(C$(I),J,1):NEXT J ELSE NEXT K,J
130 NEXT I
135 'В строках 140-180 происходит"вычеркивание"из слов массива "общих" символов.
140 FOR I=1 TO N:FOR J=1 TO LEN(C$(I)):FOR K=1 TO LEN(K$)
170 IF MID$(C$(I),J,1)=MID$(K$,K,1)THENMID$(C$(I),J,1)=" "
180 NEXT K,J,I
185 'Строки 190-230 выполняют "сжатие" слов массива C$(N),т.к.при "вычеркивании" "общих" символов образуются пробелы.
190 DIM N$(N)
200 FOR I=1 TO N:FOR J=1 TO LEN(C$(I))
220 IF MID$(C$(I),J,1)<>" "THENN$(I)=N$(I)+MID$(C$(I),J,1)
230 NEXT J,I
240 FOR I=1TO N:PRINT"Вот";I;"слово:" ;N$(I);"   - не правда ли?":NEXT

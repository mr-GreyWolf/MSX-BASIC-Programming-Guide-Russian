10 ' Ш у м о в о й  эффект
20 SOUND 6,0:SOUND 7,&B00000111
40 'Убывание частоты шума (проверить убывание)
50 FOR I=1 TO 31
60    SOUND 8,10:SOUND 9,10:SOUND 10,10
70    SOUND 6,1
80    FOR J=1 TO 50:NEXT J
90    SOUND 8,0:SOUND 9,0:SOUND 10,0
100   FOR J=1 TO 25:NEXT J
110 NEXT
120 GOTO 50

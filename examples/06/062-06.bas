20 CLS:KEYOFF:R=RND(-TIME)
40 'Описание подстрок
50 A$="o5df#ga":B$="o5gbo6cd":C$="o5ao6c#de"
80 D$="xa$;xc$;xb$;xa$;xb$;xc$;"
90 PLAY"v10t120l16"
100 PLAY D$
110 IF NOT(PLAY(1)) THEN 100
120 'Генерация случайных строк
130 W$=""
140 FOR I=1 TO 5
150    X=INT(RND(1)*26):W$=W$+CHR$(65+X)
170 NEXTI
180 PRINT W$;
190 GOTO 110

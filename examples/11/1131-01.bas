10 SCREEN 2,2
20 'Инициализация режима SCREEN 4
50 VDP(2)=7:POKE &HF923,&H1C 'Передвинем Таблицу PNT
60 VDP(5)=52:POKE &HF929,&H1A 'Приведем в порядок SAT
65 VDP(0)=4 'Установим режим SCREEN 4
70 'Основная программа
75 VDP(1)=VDP(1) XOR 64 'Отключим изображение
80 CIRCLE(100,100),50,15
90 FOR X=0 TO 8
100 SPRITE$(X)=STRING$(32,255):NEXT 'Сформируем спрайты
110 FOR Y=0 TO 15:V=INT(RND(1)*16)
120    FOR X=0 TO 8
130    VPOKE &H1800+X*16+Y,V 'Раскрасим спрайты, используя Таблицу SCT
140 NEXT X,Y
150 VDP(1)=VDP(1) XOR64 'Включим изображение
160 PUT SPRITE 8,(70,30),,0
170 X=128:Y=96
180 A=STICK(0)
190 IF A=1 OR A=2 OR A=8 THEN Y=Y-2
200 IF A=2 OR A=3 OR A=4 THEN X=X+2
210 IF A=4 OR A=5 OR A=6 THEN Y=Y+2
220 IF A=6 OR A=7 OR A=8 THEN X=X-2
230 FOR Z=0 TO 7
240    PUT SPRITE Z,(X-Z*17,Y),,0  'В о с е м ь  спрайтов в строке!
250 NEXT Z
260 GOTO 180

10 CLS:KEYOFF:COLOR 1,15,8:SCREEN2:PSET(125,95)
40 HX$="u25 e15 r25 d25 g15 l25" 'Исходный шестиугольник
60 FOR SCALE=9 TO 1 STEP(-1)
70 S$="s"+STR$(SCALE):C$="c"+STR$(SCALEMOD8)
110 FOR ROTATE=0 TO 3:R$="a"+STR$(ROTATE):SHAPE$="xs$;xc$;xr$;xhx$;":DRAW SHAPE$:NEXT ROTATE:NEXT SCALE
160 Z$=INPUT$(1)'Ожидание нажатия любой(!) клавиши для окончания работы. Данный пример приведен в [6].

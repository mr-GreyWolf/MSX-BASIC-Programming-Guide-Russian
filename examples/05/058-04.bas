10 INPUT "Режим экрана";N:SCREEN N:OPEN"GRP:" AS#1
20 PRESET(90,90):PRINT#1,"Мама мыла"
30 FOR T=0 TO 500:NEXT 'Задержка
40 PRESET(90,90):PRINT#1,"раму"
50 GOTO 50

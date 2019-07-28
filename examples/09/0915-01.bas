1 'Меню многомодульного файла "MMF"
2 COLOR 1,7,13:SCREEN 1:PRINT:PRINT TAB(7)"Основное меню"
4 PRINT TAB(6)"WWWWWWWWWWWWWWW":PRINT
6 PRINT"1. программа A - 1":PRINT"2. программа B - 2"
8 PRINT"3. программа С - 3":PRINT"4. программа Д - 4"
11 INPUT R:IF R<1 OR R>4 THEN 11
13 ON R GOTO 14,15,16,17
14 RUN"прог.А",R
15 RUN"прог.В",R
16 RUN"прог.С",R
17 RUN"прог.Д",R

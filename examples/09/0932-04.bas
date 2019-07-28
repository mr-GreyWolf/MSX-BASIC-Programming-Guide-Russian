10 CLEAR 1000:MAXFILES=2:OPEN "Карась" FOR OUTPUT AS#2
30 A$="FLOPPY DISK":E=45:F=54.8
50 PRINT #2,A$;",";         '░WW Последний символ ";" !
60 PRINT #2,E;",";F         '░WW Последний символ "пробел" !
70 CLOSE #2

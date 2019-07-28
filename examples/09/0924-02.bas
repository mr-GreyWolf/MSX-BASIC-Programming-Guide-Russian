10 OPEN "Библтека" AS#1 LEN=80
20 FIELD #1,2 AS NUMBER$,15 AS AUTHOR$,30 AS BOOK$,1 AS CODE$, 22 AS RADER$,10 AS DATE$ 
30 LSET NUMBER$=10                 'Шифр книги
40 LSET AUTHOR$="Л.Н.Толстой"
50 LSET BOOK$="Война и мир"
60 LSET CODE$="X"                  'X - книга хранится
70 LSET READER$=" "                'Читатель, разумеется, отсутствует
80 LSET DATE$="10.5.1988"

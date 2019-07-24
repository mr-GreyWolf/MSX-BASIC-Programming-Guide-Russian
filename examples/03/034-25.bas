5 '"Удобный" вывод на экран двумерного массива.
10 FOR I=1 TO 3:FOR J=1 TO 4:READ A(I,J):NEXTJ,I
15 FOR I=1 TO 3:FOR J=1 TO 4
20 'Обратите внимание на символ ";" в строке 25!
25 PRINT A(I,J);:NEXT J:PRINT:NEXT I
30 DATA 1,2,3,4,3,4,5,6,0,4,5,3

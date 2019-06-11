20 Z=RND(-TIME)
30 INPUT "Введите наибольшее количество символов слова";G
40 INPUT"Введите количество слов";N:DIM B$(N)
60 FOR K=1 TO N:A=INT((G+1)*RND(1))
80 FOR I=1 TO A:B$(K)=B$(K)+CHR$(INT(255*RND(1)))
100 NEXT I,K
110 FOR K=1 TO N:PRINT K;"слово: ";B$(K):NEXT

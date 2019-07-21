10 'Пример программы, полученной из псевдокода
20 DIM A(20)
100 INPUT "Введите число элементов";N
110 FOR I=1 TO N:INPUT A(I):NEXT I
200    M=A(1)
210    FOR I=1 TO N
220       IF M<A(I) THEN M=A(I)
230    NEXT I
300 FOR I=1 TO N:PRINT A(I)/M;:NEXT I
500 END

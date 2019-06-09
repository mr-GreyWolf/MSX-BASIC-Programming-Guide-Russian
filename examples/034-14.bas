10 DEFINT N,I,C:INPUT A,B,N:DIM C(N)
20 X=RND(-TIME) 'начальная установка генератора псевдослучайных чисел
30 FOR I=1 TO N
40 C(I)=INT((B-A+1)*RND(1)+A):?C(I):NEXTI

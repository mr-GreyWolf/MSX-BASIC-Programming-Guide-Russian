5  DEFINT K,N,I,S:INPUT K:S=0:N=1
20 IF N>K THEN 70
30 FOR I=1 TO 0 STEP 1
40 S=S+N:N=N+1 'Т е л о  ц и к л а
50 I=N<=K
60 NEXT I
70 PRINT S;"Тестовый пример:";K*(K+1)/2

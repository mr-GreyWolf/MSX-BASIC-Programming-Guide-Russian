10 SCREEN 2:N=18:DIM X(N),Y(N):R=99:DT=2*3.1415/N:T=0
70 FOR I=1 TO N:T=T+DT:X(I)=160+R*COS(T):Y(I)=100-R*SIN(T)
100 NEXT
110 FOR I=1 TO N-1:FOR J=I+1 TO N:LINE (X(I),Y(I))-(X(J),Y(J))
140 NEXT:NEXT
160 GOTO 160

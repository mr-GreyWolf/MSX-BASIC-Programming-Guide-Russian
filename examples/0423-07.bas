1 DATA 1000,M,900,CM,500,D,400,CD,100,C,90,XC,50,L,40,XL,10,X,9,IX,5,V,4,IV,1,I:INPUT"N$";N$
2 READ A,A$
3 IF A$=LEFT$(N$,LEN(A$)) THEN N$=RIGHT$(N$,LEN(N$)-LEN(A$)):N=N+A:GOTO 3
4 IF N$>" "GOTO 2
5 PRINT N

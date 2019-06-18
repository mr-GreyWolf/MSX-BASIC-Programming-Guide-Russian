10 KEYOFF:PLAY"t100s1m10000l8","t100s1m10000l16"
20 SCREEN1:LOCATE 10,10:PRINT"Пьеска!"
30 DATA "o4gbo5d","o3gbo4dgf+g","o5dco4a","o4fgegce"
40 DATA "o4f+o5dc","o3ao4co3f+ao4df+","o4a#b.a16","o4go3gbo4dgf"
50 DATA "o4g+bo5d","o4efedo3bg+","o5co4ba","o3ao4aedce"
60 DATA "o4bag","o4egcecc+","o4bar8","o4dgf+dco3a"
70 DATA "o4gbo5d","o3gbo4dgeb","o5dco4a","o3ao4aeace"
80 DATA "o4f+o5dc","o4do5dco4af+a","o4a+bb","o3o4gf+gfg"
90 DATA "o5cde","o4egdgc+g","o5do4bg","o4dbgdo3bg"
100 DATA "o4gaf+","o3bo4dcdo3ao4d":Y=1
110 N=16:DATA"o4g","o3g8":Z=RND(-TIME)
120 DIM A$(N),B$(N),C$(N),D$(N),E(N),R(N)
130 FOR I=1 TO N:READ A$(I),B$(I):E(I)=I:NEXT
140 X=INT(RND(1)*15)+1
150 IF E(X)<>0 THEN R(Y)=E(X):Y=Y+1:E(X)=0 ELSE 140
160 IF Y<>16 THEN 140 ELSE C$(N)=A$(N):D$(N)=B$(N)
170 FOR I=1 TO N-1:C$(I)=A$(R(I)):D$(I)=B$(R(I)):NEXT
180 FOR J=1 TO N:PLAY C$(J),D$(J):NEXT

10 DATA 3E,0F     :' LD   A,0Fh
20 DATA 1E,00     :' LD   E,00h
30 DATA CD,93,00  :' CALL 0093h
40 DATA C9        :' RET
50 FOR I=0 TO 7:READ A$:POKE &HD000+I,VAL("&H"+A$):NEXT I
60 DEFUSR=&HD000
70 A=USR(0)                 ' Включем индикатор "РУС"
80 FOR I=0 TO 50:NEXT I
90 POKE &HD003,128:A=USR(0) ' Выключем индикатор "РУС"
100 FOR I=0 TO 50:NEXT I 
110 POKE &HD003,0:GOTO 70

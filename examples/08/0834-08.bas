10 ON ERROR GOTO 50
20 PRINT MAX
30 END
50 PRINT 2:IF ERR=XANDERL=Y THEN ON ERROR GOTO 0:RESUME NEXT ELSE X=ERR:Y=ERL:RESUME NEXT

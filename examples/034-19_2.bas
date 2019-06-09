10 FOR N=1 TO 63
20    A=FIX((((1+SQR(5))/2)^N-((1-SQR(5))/2)^N)/SQR(5)+.5)
30    PRINT"n=";N;"A=";A
40 NEXT

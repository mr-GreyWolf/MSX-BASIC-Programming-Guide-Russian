10 CLOSE:OPEN"числа" AS#1 LEN=25
30 FIELD #1,5 AS A$(1),5 AS A$(2),5 AS A$(3),5 AS A$(4), 5 AS A$(5)
40 FOR T=1 TO 5
50     LINEINPUT"Еще слово:";J$(T):LSET A$(T)=J$(T)
60 NEXT T
70 PUT#1,1:CLEAR 'Чистка оперативной памяти
90 OPEN"числа" AS#1
100 FIELD #1,5 AS B$(1),5 AS B$(2),5 AS B$(3),5 AS B$(4), 5 AS B$(5)
110 GET#1,1:U$=""
120 FOR T=1 TO 5:U$=U$+B$(T):NEXT T
150 PRINT"Сумма:";U$

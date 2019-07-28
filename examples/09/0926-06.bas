10 CLOSE:OPEN"числа" AS#1 LEN=25
20 FIELD #1,5 AS A$(1),4 AS A$(2),5 AS A$(3),4 AS A$(4), 5 AS A$(5)
30 FOR T=1 TO 5 STEP 2
40     LINEINPUT"Еще слово:";J$(T)
50     LSET A$(T)=J$(T):NEXT
60 FOR T=2 TO 4 STEP 2
70     INPUT"Еще число";J(T)
80     LSET A$(T)=MKS$(J(T)):NEXT
90 PUT #1,1:CLEAR  'Чистка оперативной памяти
110 OPEN"числа" AS#1
120 FIELD #1,5 AS B$(1),4 AS B$(2),5 AS B$(3),4 AS B$(4), 5 AS B$(5)
130 GET #1,1:U$=B$(1)
140 FOR T=2 TO 4 STEP 2
150     U$=U$+STR$(CVS(B$(T)))+B$(T+1):NEXT
160 PRINT"Сумма:";U$

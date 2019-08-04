10 X=&H8000'"Заглянем" в память,начиная с адреса &H8001!
20 X=X+1:Y=PEEK(X)
30 IF Y<32 THEN PRINT"V";:GOTO 20 ELSE PRINTCHR$(Y);" ";:GOTO20

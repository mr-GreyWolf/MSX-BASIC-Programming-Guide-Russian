10 CALL NETEND
20 INPUT"Младший байт";N1:INPUT"Старший байт";N2:INPUT"Значение";D
30 PRINT"Старое значение:";
40 OUT&H99,N1:OUT&H99,N2:PRINT INP(&H98)
50 OUT&H99,N1:OUT&H99,N2 OR&H40:OUT&H98,D
60 PRINT"Новое значение:";
70 OUT&H99,N1:OUT&H99,N2:PRINT INP(&H98)
80 CALL NETINI:'Отмена действия команды CALL NETEND

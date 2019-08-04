10 GOSUB 30:PRINT 1:END
20 PRINT 2:END
30 POKE (&HF0A0-4),&H10'Адрес перехода
40 RETURN 'изменен с адреса &H800A на'адрес &H8010

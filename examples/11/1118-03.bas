20 COLOR 1,15,15
30 SCREEN 1,3:WIDTH 30
40 SPRITE$(0)=STRING$(32,255)
50 PUT SPRITE 0,(80,80),8,0
60 VPOKE 6915,&B10001000
61 '            ▌
63 '            VWWWWWWWWWWWW  1 - координаты спрайта (X-32,Y)
65 '            ZWWWWWWWWWWWW  0 - координаты спрайта (X,Y)
70 LOCATE 2,8,0:PRINT"Нажмите клавишу"
80 A$=INPUT$(1)
90 VPOKE 6915,&B00001000
100 END

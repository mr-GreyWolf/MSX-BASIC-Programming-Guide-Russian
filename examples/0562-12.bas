10 COLOR 1,15,8:SCREEN 2,3
20 A$="Мы":B$="изучаем":C$="язык":D$="MSX BASIC"
30 SPRITE$(1)=A$:SPRITE$(2)=B$:SPRITE$(3)=C$:SPRITE$(4)=D$
40 FOR I=1 TO 4:PUT SPRITE 2,(90,90),11,I'Обратите внимание на то, что номер спрайта изменяется в цикле, а "экранный" номер постоянен!
50 FOR U=1 TO 200:NEXT:NEXT:GOTO 40

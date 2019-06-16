10 INPUT"Число спрайтов";K:INPUT"Смещение спрайтов по вертикали";Q:SCREEN2,1:COLOR ,15,15:SPRITE$(1)="логарифм"
40 FOR I=1 TO K:PUT SPRITE I,(20*I,W),8,1:W=W+Q:NEXT
50 A$=INPUT$(1)'Ожидание нажатия любой клавиши!

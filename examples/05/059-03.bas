10 SCREEN 4,3               '������� ����������� �������� �������� ���- 
20 SPRITE$(0)=STRING$(32,255)'��� � ������� 11, ��� ��� 9 OR 10 = 11
30 PUT SPRITE 0,(100,100),,0 '� ������� 1 6-� ��� ���������� � �������, 
40 PUT SPRITE 1,(120,120),,0 '������� �����, �� ��������������  ��  
45 A$=INKEY$:IF A$=""THEN 45 '�������� 2, ��������!
50 COLOR SPRITE$(0)=STRING$(16,&B00001001)
60 COLOR SPRITE$(1)=STRING$(16,&B01001010)
70 GOTO 70

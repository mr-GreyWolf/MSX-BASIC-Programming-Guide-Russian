20 DEFINT H,I-K,M:INPUT"����� �����";H:D=RND(-TIME):M=2*H
30 DIM A(M),B(M),C(M):IF H<3 THEN RUN 20
40 FOR I=1 TO M:A(I)=INT(190*RND(1)):B(I)=A(I):C(I)=A(I):NEXT:S=0:P=900 '���������� ��� ���������� ������� ��������� ����� ��������� ��������� �������.
50 FOR I=2 TO M STEP 2
60 FOR J=2 TO M STEP 2
70 FOR K=2 TO M STEP 2
80 U=SQR((A(I)-B(J))^2+(A(I-1)-B(J-1))^2):Q=SQR((A(I)-C(K))^2+(A(I-1)-C(K-1))^2):W=SQR((B(J)-C(K))^2+(B(J-1)-C(K-1))^2):G=U+Q+W '����� �������� ������������.
90 V=SQR((G/2)*(G/2-U)*(G/2-Q)*(G/2-W)) '����� ��� �������.
100 IF V<1E-10 THEN 130'���� ���������� �����������, ��� ����� ��� ��������� �����, �� ������� �� ����� ������.
110 IF G<P THEN P=G:A1=A(I):A2=A(I-1):B1=B(J):B2=B(J-1):C1=C(K):C2=C(K-1)'���� ����������� � ���������� ���������� � ���������� ���������� ��� ������.
120 IF V>S THEN S=V:A3=A(I):A4=A(I-1):B3=B(J):B4=B(J-1):C3=C(K):C4=C(K-1)'���� ����������� ���������� ������� � ���������� ���������� ��� ������ 
130 NEXT K,J,I
140 PRINT"������� ������������ ����.�������:(";A3;",";A4;"),(";B3;",";B4;"),(";C3;",";C4;");"
150 PRINT"������� ������������:";S
160 PRINT"������� ������������ ����.���������:(";A1;",";A2;"),(";B1;",";B2;"),(";C1;",";C2;");"
170 PRINT"�������� ������������:";P
180 FOR I=1 TO 5000:NEXT '�������� �� ������� (�13 ���)!
185 '����������� ����������� ����������� ����������.
190 SCREEN 2
200 FOR I=2 TO M STEP 2:PSET(A(I),A(I-1)),2:NEXT
210 LINE(A1,A2)-(B1,B2),1:LINE-(C1,C2),1:LINE-(A1,A2),1
220 LINE(A3,A4)-(B3,B4),2:LINE-(C3,C4),2:LINE-(A3,A4),2
230 GOTO 230'�� ������ ���������� ������� ������������!

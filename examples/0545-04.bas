10 'Построение линейчатых поверхностей ("ruled surface")
20 INPUT"i0,i1,h";I0,I1,H:INPUT"j0,j1";J0,J1
45 COLOR1,15,1:SCREEN2
50 'Лист Мебиуса.Начальные данные:{0,6.28,.0628,-20,20}
60 DEFFNX(U,V)=COS(U)*(50+V*COS(U)):DEFFNY(U,V)=SIN(U)*(50+V*COS(U)):DEFFNZ(U,V)=V*SIN(U)
90 'Геликоид. Начальные данные:{-.7,6,.12,-45,45}
100 'DEFFNX(U,V)=V*COS(U):DEFFNY(U,V)=V*SIN(U)
120 'DEFFNZ(U,V)=25*U-80
300 FOR I=I0 TO I1 STEP H
310 J=J0:GOSUB 370:A=X:B=Y:I=I+H:GOSUB370:K=X:D=Y:I=I-H
320 J=J1:GOSUB 370:A1=X:B1=Y:I=I+H:GOSUB370:K1=X:D1=Y:I=I-H:LINE(A,B)-(A1,B1):LINE(A,B)-(K,D):LINE(A1,B1)-(K1,D1):NEXTI:A$=INPUT$(1):END
370 X=120+.7*(FNX(I,J)-FNY(I,J)):Y=94-(.7*(FNX(I,J)+FNY(I,J))+.7*FNZ(I,J)):RETURN 'WW▐

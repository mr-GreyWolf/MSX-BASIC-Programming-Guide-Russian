10 'Табулирование функции y=exp(sin(x)) на [A,B] с шагом H.
100 INPUT A,B,H
110 FOR X=A TO B STEP H
120 ?USING"#.###  #.###";X;EXP(SIN(X))
130 NEXT

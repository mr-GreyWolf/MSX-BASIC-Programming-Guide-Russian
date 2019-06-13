10 INPUT K:F=1:GOSUB 100 'WW▐
30 PRINT F:END
90 'Внимание! Рекурсивная подпрограмма!
100 IF K>1 THEN F=F*K:K=K-1:GOSUB 100 'WW▐
110 RETURN 'WW▐

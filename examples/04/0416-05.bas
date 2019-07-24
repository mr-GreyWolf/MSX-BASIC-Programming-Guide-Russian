10 INPUT X
20 Y$=CHR$(-(X>=1)*ASC("y"))+CHR$(-(X>=1)*ASC("e"))+CHR$(-(X>=1)*ASC("s"))+CHR$(-(X<1)*ASC("n"))+CHR$(-(X<1)*ASC("o")):PRINT Y$

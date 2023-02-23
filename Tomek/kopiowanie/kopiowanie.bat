@ECHO OFF
SET SOURCE1=
SET SOURCE2=
SET TARGET=
xcopy %SOURCE1% %TARGET% /EXCLUDE:kopiowanie.txt /E /C /R /Y /I
xcopy %SOURCE2% %TARGET% /EXCLUDE:kopiowanie.txt /E /C /R /Y /I
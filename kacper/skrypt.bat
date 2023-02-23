@ECHO OFF
SET SOURCE1=C:\Users\Praktyka\Desktop\SOURCE1
SET SOURCE2=C:\Users\Praktyka\Desktop\SOURCE2
SET TARGET=C:\Users\Praktyka\Desktop\TARGET
xcopy %SOURCE1% %TARGET% /EXCLUDE:rozszerzenia.txt /E /C /R /Y /I
xcopy %SOURCE2% %TARGET% /EXCLUDE:rozszerzenia.txt /E /C /R /Y /I
@ECHO OFF


SET SOURCE= 
SET TARGET=

xcopy %SOURCE% %TARGET% /E /C /R /Y /I
CLS
ECHO KOPIOWANIE ZAKONCZONE :)

"C:\Users\Praktyka2\Desktop\target\Start4T.exe"

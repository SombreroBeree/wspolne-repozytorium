@ECHO OFF


SET SOURCE= 
SET TARGET= 
SET WEBHOOK= 

xcopy %SOURCE% %TARGET% /E /C /R /Y /I
CLS
ECHO KOPIOWANIE ZAKONCZONE :)
ECHO Godzina Uruchomienia: %time%
curl.exe -H "Content-Type:application/json" -d "{'text':'Godzina Uruchomienia Programu: %time%'}" %WEBHOOK%



"C:\Users\Praktyka2\Desktop\target\Start4T.exe"



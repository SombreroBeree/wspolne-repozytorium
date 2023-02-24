@ECHO OFF


SET SOURCE= "C:\Program Files (x86)\INELO\4Trans"
SET TARGET= "C:\Users\Praktyka2\Desktop\target"
SET WEBHOOK=  "https://inelo.webhook.office.com/webhookb2/f5f6fec8-48be-4340-b3f2-e7155439ae28@be098f5c-2d67-43cb-9b27-597b9fcf2f3d/IncomingWebhook/3360c60f737a4625923dc40419fcb8a6/0197aa54-8e51-40e1-95d4-ee010f71ecbe"
xcopy %SOURCE% %TARGET% /E /C /R /Y /I

CLS
ECHO KOPIOWANIE ZAKONCZONE :)
ECHO Godzina Uruchomienia: %time% > czas.txt

"C:\Users\Praktyka2\Desktop\target\Start4T.exe"

sqlcmd -S DESKTOP-9NECE09\INELO19 -U Mateusz -P ja123   -i SQLQuery1.sql -o Wynik.txt -h -1
SET /p WYNIK=<Wynik.txt
SET /p CZAS=<czas.txt
curl.exe -H "Content-Type:application/json" -d "{'text':' %CZAS% Data Ostatniej operacji 4trans: %WYNIK% '}" %WEBHOOK%


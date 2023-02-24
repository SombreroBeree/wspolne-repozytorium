@ECHO OFF 

SET WEBHOOK= ""
ECHO KOPIOWANIE ZAKONCZONE :)
ECHO Godzina Uruchomienia: %time%
curl.exe -H "Content-Type:application/json" -d "{'text':'Godzina Uruchomienia Programu: %time%'}" %WEBHOOK% 
start 
@ECHO OFF
SET SOURCE=""
SET TARGET=""
SET WEBHOOK=""
xcopy %SOURCE% %TARGET% /E /C /R /Y /I
curl.exe -H "Content-Type:application/json" -d "{'text':'%time%'}" %WEBHOOK%
start "" %TARGET%\Start4T.exe
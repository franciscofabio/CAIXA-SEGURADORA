@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%"


robocopy "\\10.120.4.5\Users\Administrador\Documents\BackUp NUUO" "\\10.120.4.15\Users\Administrador\Documents\BackUP NUUO\CFTV2" *.sc *.cfg *.config *.lic *.BAT /COPY:DAT 
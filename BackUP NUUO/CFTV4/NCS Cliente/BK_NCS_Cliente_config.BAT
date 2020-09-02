@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%"


robocopy "\\10.120.4.17\c$\Program Files (x86)\NUUO\NCS_Client" "\\10.120.4.15\Users\Administrador\Documents\BackUP NUUO\CFTV4\NCS Cliente" *.sc *.cfg *.config *.lic /COPY:DAT 

robocopy "\\10.120.4.17\c$\Program Files (x86)\NUUO\NCS_Client" "\\10.120.4.16\BackUP Servidores NUUO\CFTV4\NCS Cliente" *.sc *.cfg *.config *.lic /COPY:DAT
robocopy "\\10.120.4.17\c$\Program Files (x86)\NUUO\NCS_Client" "\\10.120.4.17\BackUP Servidores NUUO\CFTV4\NCS Cliente" *.sc *.cfg *.config *.lic /COPY:DAT

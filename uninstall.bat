reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
taskkill /IM mitmdump.exe
certutil -delstore -f root mitmproxy
rd /S /Q %USERPROFILE%\.mitmproxy
pause

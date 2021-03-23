start mitmproxy/bin/mitmdump.exe -s mitmproxy-mock/moxy.py --set mock=genshin.json
timeout /T 3
taskkill /IM mitmdump.exe
xcopy %USERPROFILE%\.mitmproxy\ .mitmproxy\ /Y
rd /S /Q %USERPROFILE%\.mitmproxy
certutil -addstore -f root .mitmproxy/mitmproxy-ca-cert.pem
pause

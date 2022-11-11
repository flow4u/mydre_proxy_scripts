@echo off
echo.
echo ====================================
echo Configuring Git Proxy
echo ------------------------------------
git config --global http.proxy http://proxy.mydre.org:3128
echo Git proxy is successfully configured 
echo ====================================
timeout /T 15
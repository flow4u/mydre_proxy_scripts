@echo off
echo ==============================
echo Configuring Anaconda/Miniconda
echo ------------------------------

REM --------------------------------------------------
REM set the path where Anaconda / Miniconda is located
REM --------------------------------------------------
set PATH1=C:\ProgramData\Miniconda3\Scripts\
rem set PATH1=%USERPROFILE%"\Miniconda3\Scripts\
rem set PATH1=C:\ProgramData\Anaconda3\Scripts\
rem set PATH1=%USERPROFILE%\Anaconda3\Scripts\



set CHANNEL=conda-forge
set CHANNEL_PRIO=flexible
set PROXY_ANDREA=http://proxy.mydre.org:3128
set SSL_VERIFICATION=false
set PIP_INTEROP_ENABLED=true

echo.
echo Setting the channel  : %CHANNEL%
%PATH1%conda config --prepend channels %CHANNEL%
%PATH1%conda config --append channels defaults

echo.
echo channel_priority     : %CHANNEL_PRIO%
%PATH1%conda config --set channel_priority %CHANNEL_PRIO%

echo.
echo http and https proxy : %PROXY_ANDREA%
%PATH1%conda config --set proxy_servers.http %PROXY_ANDREA%
%PATH1%conda config --set proxy_servers.https %PROXY_ANDREA%

echo.
echo ssl_verification     : %SSL_VERIFICATION%
%PATH1%conda config --set ssl_verify %SSL_VERIFICATION%

echo.
echo pip interopabilty    : %PIP_INTEROP_ENABLED%
%PATH1%conda config --set pip_interop_enabled %PIP_INTEROP_ENABLED%


echo.
echo ------------------------------------
echo showing the proxy_servers
echo ------------------------------------
conda config --show proxy_servers
echo ====================================
echo When no errors occured, you should
echo be able to use conda channel
echo ====================================
echo.
timeout /T 15
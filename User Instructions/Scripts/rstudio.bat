@echo off
echo.
echo.
echo ======================================================
echo Configuring RStudio
echo ------------------------------------------------------

REM --------------------------------------------------
REM set the path for source and targets
REM --------------------------------------------------
set MYPATH=%cd%
set SOURCE1="%MYPATH%\Backup\.*"
set SOURCE2="%MYPATH%\Backup\Rprofile.site"
set TARGET1="%UserProfile%\My Documents\"
set TARGET2="%ProgramFiles%\R"

echo copying .Renviron to user documents
xcopy %SOURCE1% %TARGET1% /y /q
echo done

echo.

echo ------------------------------------------------------
echo copying .Rprofile.site to all R-directories
echo this requires ADMIN, otherwise it will give an error
echo ------------------------------------------------------
for /f "tokens=*" %%G in ('dir /b /a:d %TARGET2%') do (

set TARGET3="%MYPATH%\Backup\.*"
echo Copying to %%G
xcopy %SOURCE2% %TARGET2%\%%G\etc\ /y /q
)
echo.
echo.
echo ------------------------------------------------------
echo if you got errors, it means you need to ask your admin
echo this only affects R from command line
echo.
echo close this window before installing R packages via
echo command line
echo ======================================================
timeout /T 15
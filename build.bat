@echo off
setlocal ENABLEDELAYEDEXPANSION
set "SEPERATOR="
for /f "usebackq tokens=2* delims=: " %%i in (`mode con ^| findstr Columns`) do ( set CONSOLE_WIDTH=%%i )
for /l %%i in (1,1,%CONSOLE_WIDTH%) do (set SEPERATOR=!SEPERATOR!-)

set AJAXMIN_PATH="C:\Program Files\Microsoft\Microsoft Ajax Minifier\"

set CURL_EXE=curl.exe
set AJAX_MINIFIER_EXE=AjaxMinifier.exe

set GA_JSON_URL="https://garys-zone.appspot.com/query?id=agxzfmdhcnlzLXpvbmVyFQsSCEFwaVF1ZXJ5GICAgICAgIAKDA&format=json"
set GA_JSON_PATH="assets\json\"
set GA_JSON_FILE="pageviews.json"

set JS_PATH="assets\js\"
::Multiple files: a.js b.js c.js (In order)
set JS_FILES="jquery-2.1.4.min.js" "custom.js"
set JS_MIN_FILE="custom.min.js"

set CSS_PATH="assets\css"
set CSS_FILES="poole.css" "syntax.css" "hyde.css" "custom.css"
set CSS_MIN_FILE="custom.min.css"

:: m -> only minify
:: g -> only fetch

echo ================================
echo ^|^|  Gary's Zone build script  ^|^|
echo ================================

::Check for ajaxminifier
if not exist %AJAXMIN_PATH% (
	echo [!] Microsoft Ajax Minifier not found
	echo [-] Please download and install from http://ajaxmin.codeplex.com/
	echo [!] Quiting...
	goto :end
) else (
	echo [*] AjaxMinifier found
	echo [*] Extending PATH to include AjaxMinifier
	set path=%path%;%AJAXMIN_PATH%
)

::Check for curl
%CURL_EXE% >nul 2>nul
if %ERRORLEVEL% == 9009 (
	echo [!] curl not found
	echo [-] Please download from http://curl.haxx.se/download.html
	echo [-] Save curl to current directory
	echo [!] Quitting...
	goto :end
) else (
	echo [*] curl found
)

::Caching Google Analytics pageviews JSON data from appspot
echo.
echo [*] Trying to fetch Google Analytics pageviews data...
echo [*] Changing working directory to %GA_JSON_PATH%
pushd %GA_JSON_PATH%
echo %SEPERATOR%
%CURL_EXE% -o %GA_JSON_FILE% %GA_JSON_URL%
echo %SEPERATOR%
if not %ERRORLEVEL% == 0 (
	echo [!] Fetching Google Analytics pageviews data failed
	echo [-] Are you connected to the Internet?
	echo [!] %GA_JSON_FILE% is not updated
) else (
	echo [*] Fetched Google Analytics pageviews data
	echo [*] Saved to %GA_JSON_FILE%
)
echo [*] Changing back directory
popd

::Minifying JS
echo.
echo [*] Minifying js files
echo [*] Changing directory to %JS_PATH%
pushd %JS_PATH%
echo %SEPERATOR%
%AJAX_MINIFIER_EXE% %JS_FILES% -out %JS_MIN_FILE%
echo %SEPERATOR%
if not %ERRORLEVEL% == 0 (
	echo [!] Failed to minify js files
) else (
	echo [*] %JS_FILES% minified
	echo [*] Minified js files are saved as %JS_MIN_FILE%
)
echo [*] Changing back directory
popd

::Minifying CSS
echo.
echo [*] Minifying css files
echo [*] Changing directory to %%
pushd %CSS_PATH%
echo %SEPERATOR%
%AJAX_MINIFIER_EXE% %CSS_FILES% -out %CSS_MIN_FILE%
echo %SEPERATOR%
if not %ERRORLEVEL% == 0 (
	echo [!] Failed to minify css files
) else (
	echo [*] %CSS_FILES% minified
	echo [*] Minified css files are saved as %CSS_MIN_FILE%
)
echo [*] Changing back directory
popd

echo [*] Done

:end


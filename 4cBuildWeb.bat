xcopy assets web_build\assets /s /e /y /q
pushd web_build
CALL EmscriptenBuild.bat
if %ERRORLEVEL% EQU 0 start chrome http://localhost:8000

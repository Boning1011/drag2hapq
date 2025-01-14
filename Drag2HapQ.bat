@echo off
setlocal

REM Check if ffmpeg is in PATH
where ffmpeg >nul 2>&1
if %errorlevel% neq 0 (
    echo FFmpeg is not installed or not found in PATH.
    pause
    exit /b
)

REM Check if files were dragged and dropped
if "%~1"=="" (
    echo Please drag and drop one or more video files onto this script to convert them to Hap Q format.
    pause
    exit /b
)

REM Loop through all dragged files
:loop
if "%~1"=="" goto endloop

REM Get the input file path
set "inputFile=%~1"

REM Set the output file path
set "outputFile=%~dp1%~n1_hapq.mov"

REM Convert the file using FFmpeg with proper timescale for QuickTime
ffmpeg -i "%inputFile%" -vf "scale=iw-mod(iw\,4):ih-mod(ih\,4)" -c:v hap -format hap_alpha -video_track_timescale 60000 "%outputFile%"

shift
goto loop

:endloop
echo Conversion complete for all files.
pause
@echo off
setlocal

set "JAR=%~dp0Bloodveil-V1.0.jar"
if not exist "%JAR%" (
  echo Missing %JAR%
  pause
  exit /b 1
)

where java >nul 2>nul
if errorlevel 1 (
  echo Java not found. Install Java 11+ from https://adoptium.net/
  pause
  exit /b 1
)

start "" javaw -jar "%JAR%"

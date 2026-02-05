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

start "" javaw -Dsun.java2d.noddraw=true -Dsun.java2d.d3d=false -Dsun.java2d.opengl=false -Dsun.awt.disablegrab=true -Dsun.java2d.uiScale=1 -jar "%JAR%"

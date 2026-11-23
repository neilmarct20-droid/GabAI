@echo off
where gradle >nul 2>&1
if errorlevel 1 (
 echo Gradle not found. Install Gradle 8.9 or build with Android Studio or GitHub Actions.
 exit /b 1
)
gradle :app:assembleDebug
if errorlevel 1 exit /b 1
echo APK created: app\build\outputs\apk\debug\app-debug.apk

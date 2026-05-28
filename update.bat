@echo off
echo.
echo ========================================
echo    ARAHASOFT WEBSITE UPDATER
echo ========================================
echo.

cd /d "D:\Arahasoft Website"

echo Adding all changes...
git add .

echo.
set /p msg="Enter update description (or press Enter for 'Site update'): "
if "%msg%"=="" set msg=Site update

echo.
echo Committing: %msg%
git commit -m "%msg%"

echo.
echo Pushing to GitHub...
git push

echo.
echo ========================================
echo    DONE! Check arahasoft.com in 2 mins
echo ========================================
echo.
pause

@echo off
cd /d "%~dp0"

echo ============================================
echo   LABY-4K Screen Design - Git Upload
echo   Folder: %cd%
echo ============================================
echo.

git add .

echo.
echo [Committing changes...]
git commit -m "Update: %date% %time%"

if errorlevel 1 (
    echo.
    echo [Notice] Nothing to commit. Files are unchanged.
    goto end
)

echo.
echo [Pushing to GitHub...]
git push origin main

if errorlevel 1 (
    echo.
    echo [Error] Push failed. Please check:
    echo   - Internet connection
    echo   - GitHub login/authentication
    echo   - Whether this folder is a valid git repository
    goto end
)

echo.
echo ============================================
echo   Done! Vercel will update automatically
echo   in about 1 minute.
echo   https://laby4-kui-design.vercel.app
echo ============================================

:end
echo.
pause
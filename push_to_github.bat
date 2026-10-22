@echo off
title Push Stock Analysis Project to GitHub
echo ======================================================================
echo           Pushing Stock Analysis Project to GitHub Repository
echo ======================================================================
echo Target Remote: https://github.com/Kalilakshman/data-analysis-stock-.git
echo.

where git >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Git is not installed or not in system PATH.
    pause
    exit /b 1
)

if not exist ".git" (
    echo [*] Initializing new Git repository...
    git init
)

echo [*] Configuring remote origin...
git remote remove origin >nul 2>nul
git remote add origin https://github.com/Kalilakshman/data-analysis-stock-.git

echo [*] Staging all files...
git add .

echo [*] Creating commit...
git commit -m "feat: complete stock analysis dashboard, visual output index, and documentation"

echo [*] Pushing to branch main...
git branch -M main
git push -u origin main

if %ERRORLEVEL% neq 0 (
    echo.
    echo [*] Attempting force push to sync with remote...
    git push -u origin main --force
)

echo.
echo ======================================================================
echo  Done! Visit: https://github.com/Kalilakshman/data-analysis-stock-
echo ======================================================================
pause

# Automated Git Push Script for Stock Analysis Project
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "          Pushing Stock Analysis Project to GitHub Repository         " -ForegroundColor Yellow
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "Target Remote: https://github.com/Kalilakshman/data-analysis-stock-.git`n"

# Check if git is available
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is not installed or not in PATH. Please install Git for Windows."
    exit 1
}

# Initialize repository if needed
if (-not (Test-Path ".git")) {
    Write-Host "[*] Initializing local Git repository..." -ForegroundColor Green
    git init
}

# Setup remote
Write-Host "[*] Configuring remote origin..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin https://github.com/Kalilakshman/data-analysis-stock-.git

# Stage files
Write-Host "[*] Staging all files..." -ForegroundColor Green
git add .

# Commit
Write-Host "[*] Creating commit..." -ForegroundColor Green
git commit -m "feat: complete stock analysis dashboard, visual output index, and documentation"

# Push
Write-Host "[*] Pushing to main branch..." -ForegroundColor Green
git branch -M main
git push -u origin main

if ($LASTEXITCODE -ne 0) {
    Write-Host "[!] Initial push failed. Retrying with force push..." -ForegroundColor Yellow
    git push -u origin main --force
}

Write-Host "`n======================================================================" -ForegroundColor Cyan
Write-Host "  Success! Repository URL: https://github.com/Kalilakshman/data-analysis-stock-" -ForegroundColor Green
Write-Host "======================================================================" -ForegroundColor Cyan

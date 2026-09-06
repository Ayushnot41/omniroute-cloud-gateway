@echo off
title OmniRoute Cloudflare Tunnel Launcher
echo ========================================================
echo   Starting OmniRoute Cloudflare Live Edge Tunnel
echo ========================================================
echo.
cd /d "%~dp0"

if not exist "bin\cloudflared.exe" (
    echo Cloudflared binary not found in bin\. Downloading...
    curl.exe -L -o "bin\cloudflared.exe" "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe"
)

echo Starting tunnel on http://127.0.0.1:20128 with HTTP/2 fallback...
echo.
"bin\cloudflared.exe" tunnel --protocol http2 --url http://127.0.0.1:20128
pause

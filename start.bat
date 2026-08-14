@echo off
title PixelBatch AI Studio
echo Lancement du serveur PixelBatch AI Studio...
powershell -ExecutionPolicy Bypass -File "%~dp0serve.ps1"
pause

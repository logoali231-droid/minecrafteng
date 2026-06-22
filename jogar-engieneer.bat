@echo off
title Iniciando Engineers Life - Faculdade
echo =======================================================
echo   Iniciando Progressao por Eras (Nativo de Pouca RAM)
echo =======================================================

:: Nome exato da sua instancia do Engineer's Life
set "INSTANCE_ID=Engineer's Life"

:: Encontra o executavel do Prism Launcher nos locais comuns
set PRISM_EXE="C:\Program Files\Prism Launcher\PrismLauncher.exe"
if not exist %PRISM_EXE% set PRISM_EXE="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Prism Launcher.lnk"
if not exist %PRISM_EXE% set PRISM_EXE="C:\PrismLauncher\PrismLauncher.exe"

:: CONFIGURACAO DOS 2.5GB: Forca o Java de forma invisivel a rodar leve e ativa as travas da Intel
set _JAVA_OPTIONS=-Xms1024M -Xmx2560M -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35 -XX:G1ReservePercent=15 -Dsun.java2d.noddraw=true -Dsun.java2d.opengl=false

:: Dispara a instancia usando aspas duplas por causa do caractere especial ( ' )
start "" %PRISM_EXE% --launch "%INSTANCE_ID%"

echo Jogo disparado com sucesso usando os limites de 2.5GB de RAM!
echo Fechando janela...
timeout /t 3 >nul
exit

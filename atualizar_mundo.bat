@echo off
title Baixando Mundo do GitHub
echo Sincronizando arquivos da nuvem...
git remote set-url origin https://github.com/logoali231-droid/minecrafteras
git fetch --all
git reset --hard origin/master
git pull origin master
timeout /t 3
exit

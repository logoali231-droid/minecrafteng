@echo off
title Salvando Progresso no GitHub
echo Salvando seu mundo no Git...
git add jogartfc.bat
git add ../instance.cfg
git add saves/
git commit -m "Save automatico realizado pelo script salvar_mundo.bat"
git push origin master
timeout /t 3
exit

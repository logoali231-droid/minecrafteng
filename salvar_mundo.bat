@echo off
title Salvando Progresso no GitHub
echo Salvando seu mundo no Git...
git add jogar-engieneer.bat
git add atualizar_mundo.bat
git add salvar_mundo.bat
git add saves/
git commit -m "Save automatico realizado pelo script salvar_mundo.bat"
git push origin master
timeout /t 3
exit
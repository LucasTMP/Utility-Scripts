@echo off
color 2
@echo =================================================================
@echo                 Powered by Xrei
@echo =================================================================
@echo Iniciando a limpeza, pressione qualquer tecla para continuar
pause
DEL /S /Q /F %TEMP%\*.*
FOR /D %%d IN (%TEMP%\*.*) DO RD /S /Q %%d

DEL /S /Q /F C:\Windows\Temp\*.*
FOR /D %%d IN (C:\Windows\Temp\*.*) DO RD /S /Q %%d

DEL /S /Q /F C:\Windows\Prefetch\*.*
FOR /D %%d IN (C:\Windows\Prefetch\*.*) DO RD /S /Q %%d

DEL /S /Q /F C:\Windows\SoftwareDistribution\Download\*.*
FOR /D %%d IN (C:\Windows\SoftwareDistribution\Download\*.*) DO RD /S /Q %%d


ipconfig /flushdns
ipconfig /flushdns
ipconfig /flushdns
echo Limpeza concluida
pause
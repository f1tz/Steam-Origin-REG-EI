@echo off
title Steam/Origin REG EI By F1tz 
SET now=%date:~0,4%%date:~5,2%%date:~8,2%
mkdir %now%
echo ���ڵ���Steamע���
REG EXPORT HKEY_CLASSES_ROOT\steam %now%\SteamURL.reg
REG EXPORT HKEY_CURRENT_USER\Software\Classes\steam %now%\SteamURL_HCU.reg
REG EXPORT HKEY_CURRENT_USER\Software\Valve %now%\Valve_HCUS.reg
REG EXPORT HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve %now%\Valve_HLMSW64.reg
echo ���ڵ���Originע���
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Electronic Arts" %now%\EA.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\EA Games" %now%\EAGAMES.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\EA Games" %now%\EAGAMES64.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Origin" %now%\Origin.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Origin Games" %now%\OriginGames.reg
REG EXPORT "HKEY_CURRENT_USER\Software\Electronic Arts" %now%\EA_HCU.reg
echo @echo off>%now%\REG_IMPORTER.bat
echo for %%a in (%%~dp0*.reg) do REG IMPORT %%a>>%now%\REG_IMPORTER.bat
echo echo ע����Ѿ��������>>%now%\REG_IMPORTER.bat
echo pause>>%now%\REG_IMPORTER.bat
echo ����ע�����Ŀ�ѵ�����ɷ��ڡ�%~dp0%now%��Ŀ¼��
echo �Ժ��ʹ�á�REG_IMPORTER.bat�������µ���ע�����Ŀ
echo.
echo �������⣬���� https://github.com/f1tz/Steam-Origin-REG-EI ��ϵ����
pause

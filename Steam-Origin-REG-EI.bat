@echo off
title Steam/Origin REG EI By F1tz 
SET now=%date:~0,4%%date:~5,2%%date:~8,2%
mkdir %now%
echo 正在导出Steam注册表
REG EXPORT HKEY_CLASSES_ROOT\steam %now%\SteamURL.reg
REG EXPORT HKEY_CURRENT_USER\Software\Classes\steam %now%\SteamURL_HCU.reg
REG EXPORT HKEY_CURRENT_USER\Software\Valve %now%\Valve_HCUS.reg
REG EXPORT HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve %now%\Valve_HLMSW64.reg
echo 正在导出Origin注册表
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Electronic Arts" %now%\EA.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\EA Games" %now%\EAGAMES.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\EA Games" %now%\EAGAMES64.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Origin" %now%\Origin.reg
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Origin Games" %now%\OriginGames.reg
REG EXPORT "HKEY_CURRENT_USER\Software\Electronic Arts" %now%\EA_HCU.reg
echo @echo off>%now%\REG_IMPORTER.bat
echo for %%a in (%%~dp0*.reg) do REG IMPORT %%a>>%now%\REG_IMPORTER.bat
echo echo 注册表已经导入完成>>%now%\REG_IMPORTER.bat
echo pause>>%now%\REG_IMPORTER.bat
echo 所有注册表项目已导出完成放在“%~dp0%now%”目录下
echo 稍后可使用“REG_IMPORTER.bat”，重新导入注册表项目
echo.
echo 如有问题，请在 https://github.com/f1tz/Steam-Origin-REG-EI 联系到我
pause

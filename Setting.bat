@echo off
:ͨ�ù���ԱȨ�޼��ģ��
title ������Ȩ���С�
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
title �ȴ�����Ա��Ȩ�С�
echo �������ԱȨ��...
mode con cols=20 lines=1
goto UACPrompt
) else ( goto start )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:start
:ͨ�ù���ԱȨ�޼��ģ��-����
title RDPWarp���ó���
:menu
cls
echo ������������������������������������������������������������������������
echo �� �� RDPWarp����      ��           ��
echo �ǩ���������������������������������������������������������������������
echo �� 1.����ʱ�Զ����°汾             ��
echo �� 2.����ʱ���Զ����°汾           ��
echo �� 3.�ֶ����°汾                   ��
echo �� 4.���°�װ����������޸�����     ��
echo ������������������������������������������������������������������������
set/p "cho=[ѡ��]"
if %cho%==1 call "%~dp0autoupdate.bat" -taskadd
if %cho%==2 call "%~dp0autoupdate.bat"  -taskremove
if %cho%==3 call "%~dp0autoupdate.bat"
if %cho%==4 call "%~dp0install.bat"
goto menu
pause
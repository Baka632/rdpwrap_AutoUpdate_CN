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

title RDPWarp������װ
echo ���������ʹ��Apache-2.0���֤�Ŀ�Դ��Ŀ����������ͬ����ʽ�ַ���
echo ������ֿ⣺https://github.com/yige-yigeren/rdpwrap_AutoUpdate_CN
echo û�д�GitHubֱ�����صİ�װ�����ܰ���������Ϊ��Ϊ������豸��ȫ�������Github����ŵ�Github����Դ���ء�
echo ��ȷ�Ͻ�ѹѹ�����������ļ�����Ŀ¼���������ַ�
timeout /NOBREAK /t 3>nul
start https://github.com/yige-yigeren/rdpwrap_AutoUpdate_CN
echo ������ñ����������ȥ���star�ɣ�����
timeout /NOBREAK /t 5>nul
cls
echo .
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -i -o
echo ______________________________________________________________
echo.
echo RDPWarp������װ���
echo ������ʹ��RDPCheck������RDP���ܡ�
echo ������ʹ��RDPConf�������ø߼����á�
echo.
goto :anykey

:error
echo [-] ERROR��û���ҵ���װ�����ִ���ļ���
echo ���ѹ�����ļ��������ɱ������Ƿ������˲����ļ���

:anykey
echo ����رոô��ڣ�����5����Զ���װ
timeout /NOBREAK /t 5>nul
cls
echo ��װ�Զ����������...
Xcopy *.* "%windir:~0,3%\Program Files\RDP Wrapper" /Q /Y
set path="%windir:~0,3%\Program Files\RDP Wrapper"
cls
echo ������������������������������������������������������������������������
echo �� �� ��ѡ���Զ��������� ��         ��
echo �ǩ���������������������������������������������������������������������
echo �� 1.GitHub����Ĭ��ΪFastGit��    ��
echo �� 2.GitHubֱ��                     ��
::echo �� 3.GitHubֱ����DNS Fix�� ��
echo ������������������������������������������������������������������������
echo ����㲢��������Ϲ����������й��밴1�������й��밴2.
set/p "cho=[ѡ��]"
if %cho%==1 set sub=GFW
if %cho%==2 set sub=Nor
if %cho%==3 goto menu
echo [ �����޴�ѡ�� ]
goto menu

if %sub%=GFW (

)
if %sub%=Nor (
    echo set rdpwrap_ini_update_github_1="https://raw.githubusercontent.com/asmtron/rdpwrap/master/res/rdpwrap.ini">>%path%/subscription.bat
    echo set rdpwrap_ini_update_github_2="https://raw.githubusercontent.com/sebaxakerhtc/rdpwrap.ini/master/rdpwrap.ini"
    echo set rdpwrap_ini_update_github_3="https://raw.githubusercontent.com/affinityv/INI-RDPWRAP/master/rdpwrap.ini"
    echo set rdpwrap_ini_update_github_4="https://raw.githubusercontent.com/DrDrrae/rdpwrap/master/res/rdpwrap.ini"
    echo set rdpwrap_ini_update_github_5="https://raw.githubusercontent.com/saurav-biswas/rdpwrap-1/master/res/rdpwrap.ini"
)
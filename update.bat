@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -w
echo.
goto :anykey
:error
echo [-] û���ҵ���װ�����ִ���ļ���
echo ������ص�ѹ�����н�ѹ�����ļ���������ɱ�������
:anykey
pause

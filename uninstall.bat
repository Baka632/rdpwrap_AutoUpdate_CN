@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -u
echo.
goto :anykey
:error
echo [-] û���ҵ�ж�س����ִ���ļ���
echo ������ص�ѹ�����н�ѹ�����ļ���������ɱ�������
:anykey
pause

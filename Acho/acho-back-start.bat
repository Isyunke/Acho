@echo off
cmd /c "color 8e"

echo **********************************************
echo.
echo              �Զ���kafka�����ű�
echo.
echo              ����1������zookeeper
echo              ����2������kafka
echo              ����3������redis
echo              ����4���鿴topic
echo              ����5���˳�
echo ********************************************** 


cmd /c "cd /d D:\program\kafka\kafka"

:begin
choice /c:1234 /m:"�������������"
 if %errorlevel%==5 goto end
 if %errorlevel%==4 goto four
 if %errorlevel%==3 goto three
 if %errorlevel%==2 goto two
 if %errorlevel%==1 goto one



:one
start cmd /k "cd /d D:\program\kafka\kafka&&.\bin\windows\zookeeper-server-start.bat .\config\zookeeper.properties"
goto begin
:two
start cmd /k "cd /d D:\program\kafka\kafka&&.\bin\windows\kafka-server-start.bat .\config\server.properties"
goto begin


:three
start cmd /k "cd /d D:\program\redis&&redis-server.exe"
goto begin

:four
start cmd /k "cd /d D:\program\kafka\kafka&&.\bin\windows\kafka-topics.bat --list --bootstrap-server localhost:9092"
goto begin


:end
echo "�´μ���"
pause
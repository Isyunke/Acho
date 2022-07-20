@echo off
cmd /c "color 8e"

echo **********************************************
echo.
echo              自定义kafka启动脚本
echo.
echo              输入1，启动zookeeper
echo              输入2，启动kafka
echo              输入3，启动redis
echo              输入4，查看topic
echo              输入5，退出
echo ********************************************** 


cmd /c "cd /d D:\program\kafka\kafka"

:begin
choice /c:1234 /m:"请输入操作代码"
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
echo "下次见！"
pause
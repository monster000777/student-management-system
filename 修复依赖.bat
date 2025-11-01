@echo off
echo 正在清理并重新下载 Maven 依赖...
cd /d %~dp0
call mvnw.cmd clean install -U
echo.
echo 如果看到 BUILD SUCCESS，说明依赖已下载成功
echo 请在 IntelliJ IDEA 中刷新 Maven 项目
pause

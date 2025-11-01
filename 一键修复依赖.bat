@echo off
chcp 65001 >nul
echo ========================================
echo     MyBatis-Flex 依赖修复工具
echo ========================================
echo.
echo 正在清理并重新下载 Maven 依赖...
echo.
cd /d %~dp0

echo [步骤 1/3] 清理项目...
call mvnw.cmd clean
if %errorlevel% neq 0 (
    echo 清理失败！
    pause
    exit /b 1
)

echo.
echo [步骤 2/3] 强制更新依赖...
call mvnw.cmd dependency:resolve -U
if %errorlevel% neq 0 (
    echo 依赖下载失败！
    echo 请检查网络连接或使用代理设置
    pause
    exit /b 1
)

echo.
echo [步骤 3/3] 编译项目...
call mvnw.cmd compile
if %errorlevel% neq 0 (
    echo 编译失败！
    pause
    exit /b 1
)

echo.
echo ========================================
echo     ✅ 修复完成！
echo ========================================
echo.
echo 请在 IntelliJ IDEA 中执行：
echo 1. 右键项目 → Maven → Reload Project
echo 2. Build → Rebuild Project
echo.
pause

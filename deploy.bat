@echo off
chcp 65001 >nul
echo ========================================
echo   简历部署到 GitHub Pages
echo ========================================
echo.

REM 检查 Git 是否安装
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Git，请先安装 Git
    echo 下载地址：https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [1/6] 初始化 Git 仓库...
git init

echo [2/6] 添加所有文件...
git add .

echo [3/6] 提交文件...
git commit -m "Initial commit: 产品经理简历 - 胡汉生"

echo [4/6] 设置主分支...
git branch -M main

echo [5/6] 添加远程仓库...
git remote remove origin 2>nul
git remote add origin https://github.com/Huhans1013/resume.git

echo [6/6] 推送到 GitHub...
git push -u origin main

echo.
echo ========================================
echo   部署完成！
echo ========================================
echo.
echo 接下来请在浏览器中操作：
echo 1. 访问：https://github.com/Huhans1013/resume
echo 2. 进入 Settings - Pages
echo 3. Source 选择 "Deploy from a branch"
echo 4. Branch 选择 "main"，文件夹选 "/"
echo 5. 点击 Save
echo.
echo 等待 1-2 分钟后访问：
echo https://Huhans1013.github.io/resume/
echo.
pause

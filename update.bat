@echo off
setlocal

REM 设置 Git 仓库的本地路径
set "localRepoPath=C:\Users\wang\.dotfiles"

REM 切换到 Git 仓库目录
cd /d "%localRepoPath%" || exit /b

REM 设置 Git 安装路径
set "gitPath=C:\Users\wang\scoop\apps\git\current\cmd"

REM 设置日志文件路径
set "logFile=%localRepoPath%\update_log.txt"

REM 执行 Git 操作
echo "=====================" >> "%logFile%"
echo "Updating Git Repository at %DATE% %TIME%" >> "%logFile%"

"%gitPath%\git" add . >> "%logFile%" 2>&1
"%gitPath%\git" commit -m "Update" >> "%logFile%" 2>&1

REM 先执行 git push
"%gitPath%\git" push >> "%logFile%" 2>&1

REM 输出完成消息
echo "Git push operation completed." >> "%logFile%"

REM 输出完成消息
echo "Git Repository updated successfully."

endlocal

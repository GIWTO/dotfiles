@echo off
setlocal

REM 设置 Git 仓库的本地路径
set "localRepoPath=C:\Users\wang\.dotfiles"

REM 切换到 Git 仓库目录
cd /d "%localRepoPath%" || exit /b

REM 设置 Git 安装路径
set "gitPath=C:\Users\wang\scoop\apps\git\current\cmd"

REM 设置日志文件路径
set "scoopExportFile=%localRepoPath%\scoop_export.json"



REM 执行 Git 操作

"%gitPath%\git" add *
"%gitPath%\git" commit -m "Update"

REM 先执行 git push
"%gitPath%\git" push

echo "执行完毕

endlocal

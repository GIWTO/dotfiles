#!/bin/bash

# 设置 Git 仓库的本地路径
localRepoPath="/c/Users/wang/.dotfiles"

# 切换到 Git 仓库目录
cd "$localRepoPath" || exit

# 设置 Git 安装路径
gitPath="/d/scoop/apps/git/current/cmd"

# 设置日志文件路径
scoopExportFile="$localRepoPath/scoop_export.json"

# 备份 Scoop 软件列表
scoop export > "$scoopExportFile"

# 切换回 Git 仓库目录
cd "$localRepoPath" || exit

# 执行 Git 操作
"$gitPath/git" pull
"$gitPath/git" add *
"$gitPath/git" commit -m "Update"

# 先执行 git push
"$gitPath/git" push --force

echo "执行完毕"

#!/bin/bash

# 自动部署脚本，部署到个人的 github pages

# 判断参数个数是否正确
if [ $# -ne 1 ]; then
    echo "用法：$0 <branch_name>"
    exit 1
fi

BRANCH_NAME=$1

# 构建
echo '开始构建代码...'
npm run build
echo '代码构建成功'

# 跳转到构建输出目录
cd dist

git init
git add -A
git commit -m 'deploy'

# 推到你仓库的指定分支
echo '开始推送代码...'
git checkout -b $BRANCH_NAME
git push -f git@github.com:v-direwolf/v-direwolf.github.io.git $BRANCH_NAME
echo '代码推送成功'
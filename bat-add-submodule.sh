#!/bin/bash
 
# 执行 ssh-add ~/.ssh/id_rsa  先将密钥添加到ssh-agent中  可以免去ssh密码输入
# 使用 it submodule add -b master -f 检出子模块

# 循环添加子模块
for i in {1..54}; do

  #git submodule add -b master  "git@github.com:songjianzaina/juejin_p${i}.git"
  git submodule add  -b master -f "git@github.com:songjianzaina/juejin_p${i}.git" 
done
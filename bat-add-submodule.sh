#!/bin/bash
 
 
# 循环添加子模块
for i in {5..10}; do

  git submodule add -b master  "git@github.com:songjianzaina/juejin_p${i}.git"
done
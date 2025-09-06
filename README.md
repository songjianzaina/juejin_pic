---
title: 如果从本地git仓库中恢复已经删除的子模块
date: 2025-09-06 10:14:19
tags: 实用技巧
---

## 前言

先看看我的操作步骤

1. 第一步 使用`git init`创键本地仓库

2. 第二步 使用`git submodule add -b master xxx`添加子模块

3. 第三步 手动删除了该子模块

   此时`.git`目录下文件依然存在

4. 第四步 使用`git commit`提交并使用`git push`推送到远程仓库

这时, 需求来了 我想恢复子模块, 该如何操作?

假如我先进行`commit`再删除, 那么我直接使用`git submodule update --init --recursive`就能立马从`.git`本地仓库中检出恢复

可偏偏我是先删除后 再进行`commit`, 远程仓库肯定是不包含子模块的, 这时该怎么办呢?

## 问题解决

不用担心, 只要`.git`仓库中依然占用了存储空间, 意味着本地仓库还存在之前添加的子模块代码, 那我们就能从里面抓出来

只需要换个指令即可 如下:

```sh
git submodule add -b master -f git@github.com:xxx.git 
```

这个命令不是从远程仓库重新拉取子模块代码, 而是从本地检出, 关键一定要加上`-f`, 否则没有效果





**本文为作者原创 转载时请注明出处 谢谢**

![](https://gitee.com/songjianzaina/SavePicGoPic/raw/master/img/20191119095516.png)

*[乱码三千 – 点滴积累 ,欢迎来到乱码三千技术博客站](https://code.newban.cn/)*


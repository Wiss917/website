---
slug: git-rebase-vs-git-merge
title: git-rebase vs git-merge
authors: wisszeix
tags: [tool]
---

关于`git rebase`与`git merge`的一些思考

## 使用场景

### 基于master branch开发
假如团队开发的流程是基于一个主干分支然后本地开发完成推送到远端，这种场景下使用`git rebase`会让整个版本流程更清晰直观

### 新分支开发合并
如果是采用本地开发分支合并到主干分支的情况，推荐本地在一个需求开发完成后进行一次`git rebase`将commit记录进行合并，减少无关commit的对版本的影响
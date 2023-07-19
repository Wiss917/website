---
slug: update-to-vue2.7
title: 
authors: wisszeix
tags: [learning]
---

## recording update project from vue2.6 to vue2.7
1. dependency part
   1. update
      1. cli tool (still using vue-cli)
      2. vue、vue-router
   2. add
      1. vue-loader
      2. vue-demi 
   3. remove
      1. composition-api
      2. vue-template-compiler
2. config file
   1. vue.config (the vue cli 5 is using the webpack5 to build and dev service, so you need to check out the cli doc and upgrade the config with the serve terminal output)
   2. tsconfig.json (if using typescript,you will need more dependencies and config to make it work which is not done now)


### reference link
[migration to vue@2.7](https://v2.vuejs.org/v2/guide/migration-vue-2-7.html)

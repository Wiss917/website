---
title: Dictionary Handler
authors: wisszeix
tags: [thoughts]
---

## template 中事件参数的获取方式
在之前的开发过程中一般都是通过$event的方式获取事件参数。但是最近遇到了传了多个参数的情况，这时的$event仅能获取到第一个参数显然不符合需求。  
在文档中找到了新的获取方式，使用argument关键词来获取

## public 资源访问问题
在整理之前同事的代码中遇到了一个有趣的问题，主要的功能是从pc编辑一段html片段保存到数据库，然后在移动端中直接渲染。  
由于附件上传后附件的icon直接使用了网络资源，在移动端渲染时发现资源访问异常被要求修改。但是pc端与移动端使用的都是同一片段的html，在修改中要考虑两边的情况。于是采用vue-cli下的public文件夹进行相对路径访问。

### Link
<!-- https://stackoverflow.com/questions/49848849/vue-js-dont-render-attributes-if-value-is-empty-e-g-to-or-type -->


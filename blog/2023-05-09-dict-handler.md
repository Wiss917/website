---
title: Dictionary Handler
authors: wisszeix
tags: [thoughts]
---

业务中经常会有用到字典的场景，一般来讲主要用于两个方面  
1. 字典数据转化
2. 下拉选择选项绑定

返回值中字典的数据结构一般是对象数组的方式
```ts
Array<{key: string, val: unknown}>
```
但是这一结构在面对方面1时，会显得比较无力。如果面对大数据量的转化时，使用*find*查找效率比较低，且要注意容错的问题。

目前考虑的方案是将原始字典再派生出一个*Map*，依靠该数据结构完成查找


---
slug: nodejs-learning
title: nodejs learning
authors: wisszeix
tags: [nodejs]
---

记录下nodejs的操作片段

### download fetch data
```js
const res = await fetch(url);
const reader = res.body.getReader();
const { value, done } = await reader.read();

fs.writeFile(`${folderName}${fileName}`, value, (err) => {
  if (err) throw err;
});
```

### create json file

## TODO
1. [ ] nodejs文件后缀省略
2. [ ] nodejs引入ts

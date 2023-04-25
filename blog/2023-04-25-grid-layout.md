---
slug: grid-layout
title: grid layout
authors: wisszeix
tags: [css]
---

弹性布局中用到高度与宽度的时候，可以使用grid来实现多轴布局

## 布局特点

### 横纵多轴
使用flex布局时，往往照顾到项目的宽度和高度其中一个。如果需要同时对宽高进行弹性布局，就可以考虑grid布局下的`grid-template-rows`和`grid-template-columns`来定义项目的弹性宽高

```css
.grid {
  grid-template-rows: auto 1fr auto; 
  grid-template-columns: repeat(4, calc(25% - (var(--gap) * 3 / 4)));
}
```

上述的布局就会生成一个 4 * 3 的弹性容器，其中可以使用auto属性来实现宽度或者高度的自适应，`repeat`函数来重复尺寸模版

### 自定义子项顺序
类似于给`flex item`改变顺序一样，可以指定`grid item`在布局中的顺序或者说占位

```css
/* eg */
.grid-item {
  grid-row: 1 / 3;
}
```
上述代码会让`element.grid-item`在布局中从原来默认x,y各占一个格子，变成y轴占两个格子

## link

[阮一峰老师的grid教程](http://ruanyifeng.com/blog/2019/03/grid-layout-tutorial.html)


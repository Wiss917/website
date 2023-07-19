---
slug: rust-learning
title: 
authors: wisszeix
tags: [rust, learning]
---

## Marco
宏，对于接触的编程语言较少的人来说是一个比较新奇的概念。

## 数字字面量
可以添加[前缀](../2023-07-05-hex-learning.md)来表示进制,可以在数字中添加下划线增加可读性

## String
在rust中有以下多种字符串类型的存在，涉及到`ownership`的理解
1. `String` dynamic allocate,区别于js中所使用的`string`,在rust中`String`是在堆上申请的一块动态缓存,包括每一个char,len等属性
2. `&String` 是对上一步生成的动态对象的引用也就是`borrow`,不直接操作`String`的`ownership`
3. `&str` `String`的切片指针,指向`String`的一部分内容

```rust
let s = String::from("hello world");
let s_reference = &s; // &String
let hello = &s[..5]; // &str "hello"
```



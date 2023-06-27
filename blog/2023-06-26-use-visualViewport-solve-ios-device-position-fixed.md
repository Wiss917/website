---
slug: use-visualViewport-solve-ios-device-position-fixed
title: Use VisualViewport solve iOS webview scroll 
authors: wisszeix
tags: [css]
---

## keyboard behavior

### android
收缩`webview`的整体高度，不影响`position: fixed`的使用

### iOS
webview会往上滚动一小部分以聚焦输入框，由于不存在`webview`高度的改变。可能导致页面上的元素被遮挡的问题

## solution

### iOS
利用`window.visualViewport`来监听可视区域的变化，事件触发后调整对应的元素位置
---
slug: axios-error-handler
title: Axios interceptors usages
authors: wisszeix
tags: [js]
---

axios在前端项目中是一个使用频率很高的库，除了基本的异步请求之外下也提供了许多的可定制化的配置。

## axios valid status code
根据http code值用来告知axios该请求是否应该抛出异常，进入*response interceptor*的*error*钩子函数

## response interceptor
```ts
axios.interceptor.response.use((res) => {
  return Promise.resolve(res)
}, (err) => {
  return Promise.reject(err)
})
```

在上一步被判断为异常的情况下就会进入该钩子函数中的第二个回调之中，在这里需要通过`err.response`属性才能正确获取到服务器返回的内容



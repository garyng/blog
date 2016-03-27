---
layout: post
title: '[原创][C#] gITEBooksGrabber —— it-ebooks.info电子书下载神器'
tags:
  - 原创
  - 教程
  - 'C#'
description: 抽空写出的小工具， 方便下载it-ebooks.info上的电子书
image: 'https://lh3.googleusercontent.com/-cfryl4ahKcU/VvgQogdNleI/AAAAAAAAJUM/w_upEU4gpoE5AfL4Bba4GTWwSVMkSe37QCHM/s1600/28-03-2016_004518.png'
author: GaryNg
---

C# 荒废了好久...  
最近看到了这个GitHub 上的repo ： [https://github.com/xtream1101/scrape-itebooks](https://github.com/xtream1101/scrape-itebooks)  
基本上就是把 [http://it-ebooks.info/](http://it-ebooks.info/) 的电子书一个一个download 下来  
Clone了然后看了看source code （Python的）， 基本上摸清了作者是怎么implement后，就自己动手写了一个..  

基本原理就是直接parse HTML然后获取电子书的各种info，没有很难很难的那种。  
解析HTML的部分用了[HTMLAgilityPack](https://www.nuget.org/packages/HtmlAgilityPack)，倒是学了些XPath 的syntax  

PS: Console 排版是个难度活...  （但是还是比GUI简单多了 xDD）  
PPS: `\r` 字符可以让Console的光标跳到该行的最前端（突然想念起N年前玩批处理时用一堆`backspace`来实现动画的日子 xDD）

直接上图吧（~~排版有时候还是渣渣的~~ 排版的问题最新的commit已经解决掉了 xDDD）：

[![image](https://lh3.googleusercontent.com/-cfryl4ahKcU/VvgQogdNleI/AAAAAAAAJUM/w_upEU4gpoE5AfL4Bba4GTWwSVMkSe37QCHM/s800/28-03-2016_004518.png "image")](https://lh3.googleusercontent.com/-cfryl4ahKcU/VvgQogdNleI/AAAAAAAAJUM/w_upEU4gpoE5AfL4Bba4GTWwSVMkSe37QCHM/s1600/28-03-2016_004518.png)

源代码开放，已经push 到Github上了 ： [gITEBooksGrabber](https://github.com/garyng/gITEBooksGrabber)

EXE可以直接在Release那儿下载：[https://github.com/garyng/gITEBooksGrabber/releases/tag/v1.0](https://github.com/garyng/gITEBooksGrabber/releases/tag/v1.0)

记得要装.net 4.5  

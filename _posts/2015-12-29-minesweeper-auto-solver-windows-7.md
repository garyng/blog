---
layout: post
title: '[C#][原创] Minesweeper Auto Solver （Windows 7 版本）'
tags: ['C#','原创']
image: 'https://lh3.googleusercontent.com/-4pFjlpaNz-k/VoGG933m6xI/AAAAAAAAIak/dqJXdOXixV0/s1600/29-12-2015_024830.png'
description: 'C# 实现Windows 7 自动扫雷'
author: 'Gary Ng'
---

很久很久很久很久以前，我写了个[[原创][开源][C#] Minesweeper 外挂（Windows XP）]({% post_url 2013-01-06-cminesweeper-windows-xp %})

很久很久很久很久之后，我就写了这篇（PS:看回去之前的代码完全惨不忍睹啊）

#原理解析

因为自己对逆向分析没有很了解，所以这个自动扫雷是参考别人逆向的成果和代码的：

> 参考文献 ：
> 
> - [关于Win7扫雷逆向分析及外挂编写](http://www.0xaa55.com/thread-1380-1-1.html)
> - [Win7AutoMineSweeper.cpp (Github)](https://github.com/xfgryujk/Win7AutoMineSweeper/blob/master/Win7AutoMineSweeper.cpp)

Windows 7 版本的扫雷有一些比较重要的struct（Windows 7 版本的是C++写的）：
> - Game
> - Board
> - 和其他几个struct

<!-- More -->

## `Game` 类

在`程序的base address + .data 段的virtual address + 0x88B4` 处储存的是一个指针，这个指针指向扫雷的全局`Game`类（或者直接是`base address + 0x868B4`）

就是这样（Cheat Engine 的 base address 就直接是minesweeper.exe）：

[![image](https://lh3.googleusercontent.com/-_yL1gubXDMc/VoGGzw5cpJI/AAAAAAAAIZw/R3DLfAjBxlM/s800/29-12-2015_015451.png "image")](https://lh3.googleusercontent.com/-_yL1gubXDMc/VoGGzw5cpJI/AAAAAAAAIZw/R3DLfAjBxlM/s1600/29-12-2015_015451.png)


而这个`Game`的结构如下（摘自[关于Win7扫雷逆向分析及外挂编写](http://www.0xaa55.com/thread-1380-1-1.html)）：

{% highlight text %}

+8		DWORD
+12		UIBoardCanvas *
+16		Board* 
+24		bool
+25		bool
+26		bool
+27		bool
+28		bool
+29		bool
+30		bool
+32		int
+36		int
+40		int state
+48		DWORD
+52		DWORD
+56		Array<UITile *>*
+72		Array<UITile *>*
+88		Array<UITile *>*
+104	Array<UITile *>*
+120	Array<UITile *>*
+136	Array<UITile *>*
+152	CSQMTimeRecorder*
+188	DWORD
+192	bool
+193	bool
+194	bool
+195	bool
+196	bool
+197	bool

+200	Difficulty	
+204	Width 		
+208	Height		
+212	MineCount	
+216	bool
+217	bool
+218	bool IsTimerEnabled

{% endhighlight %}

所以`Game`类的`+16`（偏移`0x10`，如果你比较喜欢HEX的话）处是一个指向`Board`类的指针

## `Board`

`Board`的结构如下：

{% highlight text %}
+4		MineCount
+8		Height
+12		Width
+24		
+28		float 
+32		Difficulty	
+36		HitX
+40		HitY
+44
+68		MineArrayPointer
{% endhighlight %}

找到了`Board`大概就可以拿到很多信息了
比如说，`MineCount`：

[![image](https://lh3.googleusercontent.com/-w6XygySV6og/VoGG0Q3bwOI/AAAAAAAAIZ8/xQ_zK3AhuTM/s800/29-12-2015_020410.png "image")](https://lh3.googleusercontent.com/-w6XygySV6og/VoGG0Q3bwOI/AAAAAAAAIZ8/xQ_zK3AhuTM/s1600/29-12-2015_020410.png)

或者`Height`：

[![image](https://lh3.googleusercontent.com/-XipewSluhng/VoGG3TflPNI/AAAAAAAAIaE/O3jIpFAjvt0/s800/29-12-2015_020448.png "image")](https://lh3.googleusercontent.com/-XipewSluhng/VoGG3TflPNI/AAAAAAAAIaE/O3jIpFAjvt0/s1600/29-12-2015_020448.png)

或者`Width`(十进制12=十六进制C)：

[![image](https://lh3.googleusercontent.com/-9Scr0Y9QuTY/VoGG4PQwroI/AAAAAAAAIaM/HkEuQsCQBBo/s800/29-12-2015_020612.png "image")](https://lh3.googleusercontent.com/-9Scr0Y9QuTY/VoGG4PQwroI/AAAAAAAAIaM/HkEuQsCQBBo/s1600/29-12-2015_020612.png)

还有`Difficulty`(Beginner, Intermediate, Advanced 分别对应1, 2, 3)：

[![image](https://lh3.googleusercontent.com/-hRVPE9DYp78/VoGG7MQY6QI/AAAAAAAAIaQ/3hFSqyq2yew/s800/29-12-2015_020821.png "image")](https://lh3.googleusercontent.com/-hRVPE9DYp78/VoGG7MQY6QI/AAAAAAAAIaQ/3hFSqyq2yew/s1600/29-12-2015_020821.png)

当然偏移`68`（`0x44`）处指向的另一个类，索性就叫做ArrayA吧（代码中我是这样写的xDD）

## `ArrayA`

`ArrayA`的结构是这样的：

{% highlight text %}
+0
+4
+8
+12 ArrayBPointer[]
{% endhighlight %}



`+12`处是一个指向类型为ArrayB的指针数组，长度为`Height`

## `ArrayB`

`ArrayB`的结构跟`ArrayA`大同小异：

{% highlight text %}
+0
+4
+8
+12 ByteArrayPointer[]
{% endhighlight %}

`+12`处是一个指向一个类型为byte的指针数组，长度为`Width`

而这里就是储存地雷的地方，`0` 是没有雷，`1`是有雷

##所以是要怎么看(x,y)是不是雷？

给定坐标(x,y)，是不是雷就read 这个address（偏移量全部转为Hex了）：

`[[[[[[[minesweeper.exe + 0x868B4]+0x10]+0x44]+0x0C]+X*4]+0x0C]+Y]`

（众表示这是啥？）
额..就像multi level pointer那样吧

储存地雷的变量的指针的指针的指针.....的指针...的指针...

（可以去翻翻我的CE教程来看看xDD）

如果搬到CE中呢，就是这样的（想上手CE看看这里的教程吧：[[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #1]({% post_url 2014-12-09-cheat-engine-tutorial-1 %})）

我们取(1,0)处为例子，很显然那是个雷（为什么我知道？因为Auto Solver 已经帮我截出来了 xDD）：

[![image](https://lh3.googleusercontent.com/-m8W654095hA/VoGG8ACKn5I/AAAAAAAAIaY/J9YmZUOTEEI/s800/29-12-2015_024021.png "image")](https://lh3.googleusercontent.com/-m8W654095hA/VoGG8ACKn5I/AAAAAAAAIac/mfcHdbXsIK8/s1600/29-12-2015_024021.png)

所以大概知道怎么判断哪里是雷哪里不是雷了吧？

是不是很简单呢？

只要遍历x和y就行啦！（当然程序内的实现比较复杂一点点）


# 主程序

要解扫雷当然是得打开扫雷先嘛~~

然后run solver

然后就tada!

[![image](https://lh3.googleusercontent.com/-rTqqZGVfDGA/VoGHAgwRdAI/AAAAAAAAIas/QXOyDAoRKRY/s800/29-12-2015_024944.png "image")](https://lh3.googleusercontent.com/-rTqqZGVfDGA/VoGHAgwRdAI/AAAAAAAAIas/QXOyDAoRKRY/s1600/29-12-2015_024944.png)

[![image](https://lh3.googleusercontent.com/-UZkXLFNWpY4/VoGHEqX5xeI/AAAAAAAAIbE/083kcYYmSlQ/s800/29-12-2015_025200.png "image")](https://lh3.googleusercontent.com/-UZkXLFNWpY4/VoGHEqX5xeI/AAAAAAAAIbE/083kcYYmSlQ/s1600/29-12-2015_025200.png)

[![image](https://lh3.googleusercontent.com/-4pFjlpaNz-k/VoGG933m6xI/AAAAAAAAIak/dqJXdOXixV0/s800/29-12-2015_024830.png "image")](https://lh3.googleusercontent.com/-4pFjlpaNz-k/VoGG933m6xI/AAAAAAAAIak/dqJXdOXixV0/s1600/29-12-2015_024830.png)

# BUG

不过有时候还是会少点的...

[![image](https://lh3.googleusercontent.com/-xH5r5efw5CQ/VoGHBgJ2GNI/AAAAAAAAIa0/BtiOFjjiVfQ/s800/29-12-2015_025029.png "image")](https://lh3.googleusercontent.com/-xH5r5efw5CQ/VoGHBgJ2GNI/AAAAAAAAIa0/BtiOFjjiVfQ/s1600/29-12-2015_025029.png)

或者是点错...

[![image](https://lh3.googleusercontent.com/-VBlwnGjhVek/VoGHDn6jQkI/AAAAAAAAIa8/Fzozx9UhNTk/s800/29-12-2015_025120.png "image")](https://lh3.googleusercontent.com/-VBlwnGjhVek/VoGHDn6jQkI/AAAAAAAAIa8/Fzozx9UhNTk/s1600/29-12-2015_025120.png)


# 下载地址

## 需要先安装.net 4.0！

还在等什么呢？

赶快下载去跟小伙伴们炫耀啊~ xDD

Github 地址：[https://github.com/garyng/gMinesweeperSolver7/releases/tag/v1.0](https://github.com/garyng/gMinesweeperSolver7/releases/tag/v1.0)

EXE 下载地址：[https://github.com/garyng/gMinesweeperSolver7/releases/download/v1.0/gMinesweeperSolver7.exe](https://github.com/garyng/gMinesweeperSolver7/releases/download/v1.0/gMinesweeperSolver7.exe)
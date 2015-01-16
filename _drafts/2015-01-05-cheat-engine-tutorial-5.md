---
layout: post
title: '[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #4'
tags: ['教程','原创','Cheat Engine']
author: 'Gary Ng'
description: 'Cheat Engine Tutorial 闯关教程'
---

教程 #1： [[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #1]({% post_url 2014-12-09-cheat-engine-tutorial-1 %})

教程 #2： [[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #2]({% post_url 2014-12-12-cheat-engine-tutorial-2 %})

教程 #3：[[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #3]({% post_url 2014-12-17-cheat-engine-tutorial-3 %})

教程 #4：[[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #4]({% post_url 2015-01-05-cheat-engine-tutorial-4 %})

表示写到这里，笔者我都要吐血了...

<hr/>

> Step 8: Multilevel pointers: **(PW=525927)**
> This step will explain how to use multi-level pointers.
> In step 6 you had a simple level-1 pointer, with the first address found already being the real base address.
> This step however is a level-4 pointer. It has a pointer to a pointer to a pointer to a pointer to a pointer to the health.
> 
> You basicly do the same as in step 6. Find out what accesses the value, look at the instruction and what probably is the base pointer value, and what is the offset, and already fill that in or write it down. But in this case the address you'll find will also be a pointer. You just have to find out the pointer to that pointer exactly the same way as you did with the value. Find out what accesses that address you found, look at the assembler instruction, note the probable instruction and offset, and use that.
> and continue till you can't get any further (usually when the base address is a static address, shown up as green)
> 
> Click Change Value to let the tutorial access the health.
> If you think you've found the pointer path click Change Register. The pointers and value will then change and you'll have 3 seconds to freeze the address to 5000
> 
> Extra: This problem can also be solved using a auto assembler script, or using the pointer scanner
> Extra2: In some situations it is recommended to change ce's codefinder settings to Access violations when 
> Encountering instructions like mov eax,[eax] since debugregisters show it AFTER it was changed, making it hard to find out the the value of the pointer
> 
> 
> Extra3: If you're still reading. You might notice that when looking at the assembler instructions that the pointer is being read and filled out in the same codeblock (same routine, if you know assembler, look up till the start of the routine). This doesn't always happen, but can be really useful in finding a pointer when debugging is troublesome


还记得[Step 6]({% post_url 2014-12-17-cheat-engine-tutorial-3 %})之中我写到了那个让人头昏脑胀的pointer 吧？ （指针）

在Step 6 之中的pointer 其实只是一个level-1 pointer

就是说，指针是直接指向value的地址的

就是这样：

[![image](https://lh6.googleusercontent.com/-RnFCie_5q5U/VKqGzSAW1sI/AAAAAAAAH5c/1zuSo7DH7fc/s800/05-01-2015_204107.png "image")](https://lh6.googleusercontent.com/-RnFCie_5q5U/VKqGzSAW1sI/AAAAAAAAH5g/EqKxoINNXDw/s1600/05-01-2015_204107.png)

（就用`P->`来表示一个pointer，还有就没有把那stick man 放进去了 xD ）

但是呢，Step 8 是一个多重指针（这里似乎是有4层），就是类似这样（好多层，这里画出来有5层，可是CE Tutorial 写只有4层，不太清楚……）

[![image](https://lh3.googleusercontent.com/-iKKISUSIl8c/VKvPoIFTHEI/AAAAAAAAH5w/9bDL6j9B50k/s800/06-01-2015_200521.png "image")](https://lh3.googleusercontent.com/-iKKISUSIl8c/VKvPoIFTHEI/AAAAAAAAH5s/C9klFUOfcn8/s1600/06-01-2015_200521.png)

那要解决这一关呢

非常简单，就是一直重复找（就像Step 6那样，找出access那个address的address），一直重复下去直到找到一个**static pointer**（等下就会看到这是啥了）

<hr/>





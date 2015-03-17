---
layout: post
title: '[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #4'
tags: ['教程','原创','Cheat Engine']
author: 'Gary Ng'
description: 'Cheat Engine Tutorial 第7关闯关教程 + CE Code Injection 基础教程'
image: 'https://lh6.googleusercontent.com/-1QZm1GUdO94/VKoewRSiDZI/AAAAAAAAH3U/kiRiek2rXB8/s1600/05-01-2015_131854.png'
---

教程 #1： [[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #1]({% post_url 2014-12-09-cheat-engine-tutorial-1 %})

教程 #2： [[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #2]({% post_url 2014-12-12-cheat-engine-tutorial-2 %})

教程 #3：[[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #3]({% post_url 2014-12-17-cheat-engine-tutorial-3 %})

看完教程#1到#3再来继续哦

<hr/>

[![image](https://lh4.googleusercontent.com/-O3ac1eTakak/VJWQG0SnB8I/AAAAAAAAHy0/QL2g0sA4jFI/s800/20-12-2014_230418.png "image")](https://lh4.googleusercontent.com/-O3ac1eTakak/VJWQG0SnB8I/AAAAAAAAHy0/QL2g0sA4jFI/s1600/20-12-2014_230418.png)

[![image](https://lh6.googleusercontent.com/-yWqSoboR8PA/VKoegiY9dAI/AAAAAAAAH3M/kMCANSptIX4/s800/05-01-2015_131719.png "image")](https://lh6.googleusercontent.com/-yWqSoboR8PA/VKoegiY9dAI/AAAAAAAAH3M/kMCANSptIX4/s1600/05-01-2015_131719.png)

<hr/>

## Step 7

> Step 7: Code Injection: **(PW=013370)**
> Code injection is a technique where one injects a piece of code into the target process, and then reroute the execution of code to go through your own written code
> 
> In this tutorial you'll have a health value and a button that will decrease your health with 1 each time you click it.
> Your task is to use code injection to increase the value of your health with 2 every time it is clicked
> 
> Start with finding the address and then find what writes to it.
> then when you've found the code that decreases it browse to that address in the disassembler, and open the auto assembler window (ctrl+a)
> There click on template and then code injection, and give it the address that decreases health (If it isn't already filled in correctly)
> That will generate a basic auto assembler injection framework you can use for your code.
> 
> Notice the alloc, that will allocate a block of memory for your code cave, in the past, in the pre windows 2000 systems, people had to find code caves in the memory(regions of memory unused by the game), but that's luckily a thing of the past since windows 2000, and will these days cause errors when trying to be used, due to SP2 of XP and the NX bit of new CPU's
> 
> Also notice the line newmem: and originalcode: and the text "Place your code here"
> As you guessed it, write your code here that will increase the  health with 2.
> An usefull assembler instruction in this case is the "ADD instruction"
> here are a few examples:
> "ADD [00901234],9" to increase the address at 00901234 with 9
> "ADD [ESP+4],9" to increase the address pointed to by ESP+4 with 9
> In this case, you'll have to use the same thing between the brackets as the original code has that decreases your health
> 
> Notice:
> It is recommended to delete the line that decreases your health from the original code section, else you'll have to increase your health with 3 (you increase with 3, the original code decreases with 1, so the end result is increase with 2), which might become confusing. But it's all up to you and your programming.
> 
> Notice 2:
> In some games the original code can exist out of multiple instructions, and sometimes, not always, it might happen that a code at another place jumps into your jump instruction end will then cause unknown behavior. If that happens, you should usually look near that instruction and see the jumps and fix it, or perhaps even choose to use a different address to do the code injection from. As long as you're able to figure out the address to change from inside your injected code.

主界面：

[![image](https://lh6.googleusercontent.com/-1QZm1GUdO94/VKoewRSiDZI/AAAAAAAAH3U/kiRiek2rXB8/s800/05-01-2015_131854.png "image")](https://lh6.googleusercontent.com/-1QZm1GUdO94/VKoewRSiDZI/AAAAAAAAH3U/kiRiek2rXB8/s1600/05-01-2015_131854.png)

之前呢我们只是涉及如何找出数据的位置、更改数据、或者是冻结数据

可是现在……更加好玩的东西来啦——我们可以往程序注入自己的代码！

但是前提是：你得要懂得汇编（ASM）

因为Code injection都是用ASM 写的哦

<hr/>

<span style="color:red">这篇笔者我会说得比较快哦</span>

<hr/>

想看看Step 7 的 objective吧：

> Your task is to use code injection to **increase** the value of your health with 2 every time it is clicked

就是每一次点击Hit 的时候，Health 的值会增加2

所以还等啥呢

直接找出Health的地址吧！

[![image](https://lh6.googleusercontent.com/-AlaiYhZYLx8/VKpS7ib5SwI/AAAAAAAAH3k/TYZByuN7gRc/s800/05-01-2015_170125.png "image")](https://lh6.googleusercontent.com/-AlaiYhZYLx8/VKpS7ib5SwI/AAAAAAAAH3k/TYZByuN7gRc/s1600/05-01-2015_170125.png)

[![image](https://lh4.googleusercontent.com/-9Ijwn8-I368/VKpvVc8M-CI/AAAAAAAAH38/cFz0yfCfxbE/s800/05-01-2015_170237.png "image")](https://lh4.googleusercontent.com/-9Ijwn8-I368/VKpvVc8M-CI/AAAAAAAAH38/cFz0yfCfxbE/s1600/05-01-2015_170237.png)

然后找出什么code writes to this address （用access的也可以哦，但是在这个情况write的话会更加容易一些）

[![image](https://lh3.googleusercontent.com/-u3ZJoYz2oSo/VKpvVg6Ge2I/AAAAAAAAH4A/M4Vh3UXiUqc/s800/05-01-2015_170501.png "image")](https://lh3.googleusercontent.com/-u3ZJoYz2oSo/VKpvVg6Ge2I/AAAAAAAAH4A/M4Vh3UXiUqc/s1600/05-01-2015_170501.png)

[![image](https://lh4.googleusercontent.com/-MTd4b-QuOrs/VKpvWpALIxI/AAAAAAAAH4Q/T6Gv6XtasG0/s800/05-01-2015_170540.png "image")](https://lh4.googleusercontent.com/-MTd4b-QuOrs/VKpvWpALIxI/AAAAAAAAH4Q/T6Gv6XtasG0/s1600/05-01-2015_170540.png)

`dec [ebx+00000478]` 这样的代码不难猜到他的功能吧？

decrement 呗，就是将值减1

其实如果不知道特定的opcode 代表的是什么的话，Extra Info 旁边会显示他的功能的：

[![image](https://lh5.googleusercontent.com/-lJbwfmXvm-g/VKpvWeyZusI/AAAAAAAAH4M/P85OV34Hg4s/s800/05-01-2015_171121.png "image")](https://lh5.googleusercontent.com/-lJbwfmXvm-g/VKpvWeyZusI/AAAAAAAAH4M/P85OV34Hg4s/s1600/05-01-2015_171121.png)

点击 Show disassembler，就会跳出一个Memory Viewer

当前高亮的那一行就是将Health 减1的代码了

[![image](https://lh6.googleusercontent.com/-6Drk1tvAEt8/VKpvYcdCS-I/AAAAAAAAH4k/oWz_3INgE-M/s800/05-01-2015_171142.png "image")](https://lh6.googleusercontent.com/-6Drk1tvAEt8/VKpvYcdCS-I/AAAAAAAAH4k/oWz_3INgE-M/s1600/05-01-2015_171142.png)

然后点击Tools > Auto Assemble <kbd>Ctrl</kbd><kbd>A</kbd>

[![image](https://lh3.googleusercontent.com/-95gGEfQMqCc/VKpvXkv-L3I/AAAAAAAAH4c/Bsmd3mWyf78/s800/05-01-2015_171332.png "image")](https://lh3.googleusercontent.com/-95gGEfQMqCc/VKpvXkv-L3I/AAAAAAAAH4c/Bsmd3mWyf78/s1600/05-01-2015_171332.png)

点击Template > Code injection <kbd>Ctrl</kbd><kbd>I</kbd>

[![image](https://lh4.googleusercontent.com/-9wPkFMZhr1Y/VKpvZchoinI/AAAAAAAAH4w/mIcbwthrgbU/s800/05-01-2015_171626.png "image")](https://lh4.googleusercontent.com/-9wPkFMZhr1Y/VKpvZchoinI/AAAAAAAAH4w/mIcbwthrgbU/s1600/05-01-2015_171626.png)

点击OK

[![image](https://lh3.googleusercontent.com/-kAPPNvhGK08/VKpvZWeD5QI/AAAAAAAAH4s/vDr74NjVGVw/s800/05-01-2015_172238.png "image")](https://lh3.googleusercontent.com/-kAPPNvhGK08/VKpvZWeD5QI/AAAAAAAAH4s/vDr74NjVGVw/s1600/05-01-2015_172238.png)

现在呢我们就有一个可以用来注入代码的模板了

{% highlight asm %}

alloc(newmem,2048)
label(returnhere)
label(originalcode)
label(exit)

newmem: //this is allocated memory, you have read,write,execute access
//place your code here

originalcode:
dec [ebx+00000478]

exit:
jmp returnhere

"Tutorial-i386.exe"+26C40:
jmp newmem
nop
returnhere:

{% endhighlight %}

<hr/>

先来解释模板里面的代码吧

先看看：

{% highlight asm %}

label(returnhere)
label(originalcode)
label(exit)

{% endhighlight %}

`label`应该都懂啥意思吧？

`label(labelname)`呢，就是将一个地址取名字，那么你就可以直接用`labelname`来读取/写入/跳转到那个地址了（就像IP 和 域名那样）

接下来呢：

`alloc(newmem,2048)`

`alloc` 就是 "allocate"的简写，华文叫做“分配”

> `ALLOC(allocname,sizeinbytes, preferedregion OPTIONAL)`
>> 摘自Cheat Engine Help 文件

因为你要注入的代码需要有地方可以“住”，但是内存里面不是每一个地方都可以随便乱闯的

所以`alloc`的功能就是在一个可用的地方“开辟”一个可用的内存空间，就拿`alloc(newmem,2048)`来说，就是开辟一个大小为**2048 bytes**的空间，然后将其取名为`newmem` （就有一点类似`label`，但是`alloc`是一个有自己空间的label）

`newmem:` 一个label的名称后面追加一个冒号就表示接下来的代码是属于`newmem`的，就类似一个function那样……

<hr/>

现在呢，就是写代码的时候啦！

因为之前的代码呢是将Health的值减1

{% highlight asm %}
originalcode:
dec [ebx+00000478]
{% endhighlight %}

不难看出，Health 储存的地方就是在`[ebx+00000478]`内

所以，我们要将Health 的值加2的代码就灰常简单了：`add [ebx+00000478],2`

完整的代码就是这样：

{% highlight asm %}
alloc(newmem,2048)
label(returnhere)
label(originalcode)
label(exit)

newmem: //this is allocated memory, you have read,write,execute access
//place your code here

add [ebx+00000478],2
jmp exit

originalcode:
dec [ebx+00000478]

exit:
jmp returnhere

"Tutorial-i386.exe"+26C40:
jmp newmem
nop
returnhere:
{% endhighlight %}

[![image](https://lh6.googleusercontent.com/-yImDy8Oin8Q/VKpva72gyCI/AAAAAAAAH5A/9PSkMDNRsUQ/s800/05-01-2015_175503.png "image")](https://lh6.googleusercontent.com/-yImDy8Oin8Q/VKpva72gyCI/AAAAAAAAH5A/9PSkMDNRsUQ/s1600/05-01-2015_175503.png)

有没有发现到额外的`jmp exit`

`jmp` 是无条件跳转，为什么呢要有一个`jmp`呢？

因为如果没有`jmp`的话 `dec [ebx+00000478]` 执行完之后就会直接执行`originalcode`的代码（就是一行一行往下执行的，label只是一个名称，不能阻止code flow）

点击 Execute，然后在点击Yes

[![image](https://lh5.googleusercontent.com/-8wfpLMj3v3Y/VKpvb3uL29I/AAAAAAAAH5Q/MvIV004WfEg/s800/05-01-2015_180018.png "image")](https://lh5.googleusercontent.com/-8wfpLMj3v3Y/VKpvb3uL29I/AAAAAAAAH5Q/MvIV004WfEg/s1600/05-01-2015_180018.png)

CE就会跳出一个窗口，里面就会显示newmem分配到的地址，点击OK：

[![image](https://lh3.googleusercontent.com/-aJap6-k2MlE/VKpvamcW8FI/AAAAAAAAH48/mhOKizBFcK8/s800/05-01-2015_175633.png "image")](https://lh3.googleusercontent.com/-aJap6-k2MlE/VKpvamcW8FI/AAAAAAAAH48/mhOKizBFcK8/s1600/05-01-2015_175633.png)

回到CE Tutorial，点击Hit Me

如果一切正常，狠狠地按下Next吧：

[![image](https://lh3.googleusercontent.com/-gI5Q6QtYCjM/VKpvb7NZ6jI/AAAAAAAAH5M/pku7G41n0LA/s800/05-01-2015_180237.png "image")](https://lh3.googleusercontent.com/-gI5Q6QtYCjM/VKpvb7NZ6jI/AAAAAAAAH5M/pku7G41n0LA/s1600/05-01-2015_180237.png)
---
layout: post
title: '[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #2'
tags: ['教程','原创','Cheat Engine']
author: 'Gary Ng'
description: 'Cheat Engine Tutorial 闯关教程 + ASM 基础入门教程！'
---

如果还没看完和掌握 ['[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程#1']({% post_url 2014-12-09-cheat-engine-tutorial-1 %}) 的话，赶快去看看吧

## Step 5

> Step 5: Code finder **(PW=888899)**
> Sometimes the location something is stored at changes when you restart the game, or even while you're playing.. In that case you can use 2 things to still make a table that works.
> In this step I'll try to describe how to use the Code Finder function.
> 
> The value down here will be at a different location each time you start the tutorial, so a normal entry in the address list wouldn't work.
> First try to find the address. (you've got to this point so I assume you know how to)
> When you've found the address, right-click the address in Cheat Engine and choose "Find out what writes to this address". A window will pop up with an empty list.
> Then click on the Change value button in this tutorial, and go back to Cheat Engine. If everything went right there should be an address with assembler code there now.
> Click it and choose the replace option to replace it with code that does nothing. That will also add the code address to the code list in the advanced options window. (Which gets saved if you save your table)
> 
> Click on stop, so the game will start running normal again, and close to close the window.
> Now, click on Change value, and if everything went right the Next button should become enabled.
> 
> Note: When you're freezing the address with a high enough speed it may happen that next becomes visible anyhow

主界面：

[![image](https://lh6.googleusercontent.com/-CRzFHs9surc/VI2HFr5yTEI/AAAAAAAAHo8/5OPDeokIfuM/s800/14-12-2014_191702.png "image")](https://lh6.googleusercontent.com/-CRzFHs9surc/VI2HFr5yTEI/AAAAAAAAHo8/5OPDeokIfuM/s1600/14-12-2014_191702.png)

现在这个**Code finder**的功能是找出什么**代码**读取或者更改某一个值

什么？

云里雾里？

没关系，接着看吧

ASM AHEAD！

[![image](https://lh4.googleusercontent.com/-O3ac1eTakak/VJWQG0SnB8I/AAAAAAAAHy0/QL2g0sA4jFI/s800/20-12-2014_230418.png "image")](https://lh4.googleusercontent.com/-O3ac1eTakak/VJWQG0SnB8I/AAAAAAAAHy0/QL2g0sA4jFI/s1600/20-12-2014_230418.png)

首先要做的就是找出value 的address了（不解释了哈）：

[![image](https://lh3.googleusercontent.com/-DAHziHvSuUE/VI2N9nNTkxI/AAAAAAAAHqA/5erIPVA44tE/s800/14-12-2014_192306.png "image")](https://lh3.googleusercontent.com/-DAHziHvSuUE/VI2N9nNTkxI/AAAAAAAAHqA/5erIPVA44tE/s1600/14-12-2014_192306.png)

[![image](https://lh3.googleusercontent.com/-bPj0nDgbljs/VI2N9NF1oyI/AAAAAAAAHp4/gsE9swO39d8/s800/14-12-2014_192251.png "image")](https://lh3.googleusercontent.com/-bPj0nDgbljs/VI2N9NF1oyI/AAAAAAAAHp4/gsE9swO39d8/s1600/14-12-2014_192251.png)

[![image](https://lh5.googleusercontent.com/-73ARk0A_4kg/VI2OCUgyk-I/AAAAAAAAHqQ/1A0yA_Cixx8/s800/14-12-2014_192320.png "image")](https://lh5.googleusercontent.com/-73ARk0A_4kg/VI2OCUgyk-I/AAAAAAAAHqQ/1A0yA_Cixx8/s1600/14-12-2014_192320.png)

[![image](https://lh4.googleusercontent.com/-l_TGIIXGE4Y/VI2OApxsGBI/AAAAAAAAHqI/k7D8Lpp_4C4/s800/14-12-2014_192339.png "image")](https://lh4.googleusercontent.com/-l_TGIIXGE4Y/VI2OApxsGBI/AAAAAAAAHqI/k7D8Lpp_4C4/s1600/14-12-2014_192339.png)

现在要做的就是：

> Click it and choose the replace option to **replace it with code that does nothing**. That will also add the code address to the code list in the advanced options window. (Which gets saved if you save your table)

你可能会问：

> 什么？Replace it with code that does nothing？
> 我们有他的代码么？
> 搞什么鬼啊你

这里的code 呢，就是那ASM Code 了，汇编！

Code finder 的功能就是找出哪里的asm 代码读取/修改那个值

然后你就可以更改那个代码了！

首先，右键点击entry

然后选择Find out what writes to this address（或者直接按下<kbd>F6</kbd>）：

[![image](https://lh5.googleusercontent.com/-6ksiiAWHoQQ/VI2Rfg45REI/AAAAAAAAHrk/Bvhq_FVIUSk/s800/14-12-2014_193043.png "image")](https://lh5.googleusercontent.com/-6ksiiAWHoQQ/VI2Rfg45REI/AAAAAAAAHrk/Bvhq_FVIUSk/s1600/14-12-2014_193043.png)

点击YES：

[![image](https://lh3.googleusercontent.com/-jgPvQQrk-00/VI2OEZWwDEI/AAAAAAAAHqY/C9nALR3CWDg/s800/14-12-2014_193231.png "image")](https://lh3.googleusercontent.com/-jgPvQQrk-00/VI2OEZWwDEI/AAAAAAAAHqY/C9nALR3CWDg/s1600/14-12-2014_193231.png)

然后你就会看到这个窗口：

[![image](https://lh3.googleusercontent.com/-WRnHYWUk2C8/VI2RfSRcsNI/AAAAAAAAHrg/s3s-HivLOtg/s800/14-12-2014_194129.png "image")](https://lh3.googleusercontent.com/-WRnHYWUk2C8/VI2RfSRcsNI/AAAAAAAAHrg/s3s-HivLOtg/s1600/14-12-2014_194129.png)

回到CE Tutorial 

点击Change Value

[![image](https://lh3.googleusercontent.com/-E_HBMJwm83g/VI2OGfhgByI/AAAAAAAAHqg/2losV6YXnJY/s800/14-12-2014_194242.png "image")](https://lh3.googleusercontent.com/-E_HBMJwm83g/VI2OGfhgByI/AAAAAAAAHqg/2losV6YXnJY/s1600/14-12-2014_194242.png)

然后在回到刚才的那个窗口

你就会看到列表中多了一行代码：

[![image](https://lh4.googleusercontent.com/-EtSUp3264CE/VI2RgayxcDI/AAAAAAAAHrw/ok7GDk7XqwQ/s800/14-12-2014_194309.png "image")](https://lh4.googleusercontent.com/-EtSUp3264CE/VI2RgayxcDI/AAAAAAAAHrw/ok7GDk7XqwQ/s1600/14-12-2014_194309.png)

这一行就是更改CE Tutorial 上面的值的代码了

所以我们要做的就是让这一样代码失效

最简单的就是：

把它替换成**什么都不做**

右键点击那一行

然后点击 Replace with code that does nothing (NOP)：

[![image](https://lh3.googleusercontent.com/-Sc63V0aaFc4/VI2OM5L6FFI/AAAAAAAAHqw/oN3jwvPtyqo/s800/14-12-2014_194725.png "image")](https://lh3.googleusercontent.com/-Sc63V0aaFc4/VI2OM5L6FFI/AAAAAAAAHqw/oN3jwvPtyqo/s1600/14-12-2014_194725.png)

然后点击OK

[![image](https://lh5.googleusercontent.com/-Pbx-Tjzjx4U/VI2OKq-pbCI/AAAAAAAAHqo/-989vwL-qgM/s800/14-12-2014_194811.png "image")](https://lh5.googleusercontent.com/-Pbx-Tjzjx4U/VI2OKq-pbCI/AAAAAAAAHqo/-989vwL-qgM/s1600/14-12-2014_194811.png)

就好啦！

点击Stop

[![image](https://lh6.googleusercontent.com/-z6OYi-m9z8g/VI2OeLCQrjI/AAAAAAAAHrQ/N-XwDL8tdpI/s800/14-12-2014_194842.png "image")](https://lh6.googleusercontent.com/-z6OYi-m9z8g/VI2OeLCQrjI/AAAAAAAAHrQ/N-XwDL8tdpI/s1600/14-12-2014_194842.png)

然后Close

[![image](https://lh5.googleusercontent.com/-dUGX2mOMzQ0/VI2OShx99QI/AAAAAAAAHq4/brz63xfxADs/s800/14-12-2014_194900.png "image")](https://lh5.googleusercontent.com/-dUGX2mOMzQ0/VI2OShx99QI/AAAAAAAAHq4/brz63xfxADs/s1600/14-12-2014_194900.png)

回到CE Tutorial

点击Change Value 

你会发现到 Value 根本没有改变到：

[![image](https://lh3.googleusercontent.com/-c3rIpFBBeNQ/VI2RgoQD_6I/AAAAAAAAHr0/AmJj9pKP3EE/s800/14-12-2014_194942.png "image")](https://lh3.googleusercontent.com/-c3rIpFBBeNQ/VI2RgoQD_6I/AAAAAAAAHr0/AmJj9pKP3EE/s1600/14-12-2014_194942.png)

然后就可以点击Next 啦！

[![image](https://lh5.googleusercontent.com/-PUt87j9sfYQ/VI2OUxlwk-I/AAAAAAAAHrA/Hnmuto2mOhQ/s800/14-12-2014_195006.png "image")](https://lh5.googleusercontent.com/-PUt87j9sfYQ/VI2OUxlwk-I/AAAAAAAAHrA/Hnmuto2mOhQ/s1600/14-12-2014_195006.png)

<hr/>

你可能会问：

> 这功能到底啥用？

比如最简单的说：

> 你的游戏有一个Health 值
> 但是你在CE里freeze 着他的值却没有用
>> 如何Freeze 一个Address 的值？
>> 很简单
>> 在那个Address 上按下<kbd>Space</kbd>就好了
>> 或者按下Active 栏下的checkbox：
>>> 
[![image](https://lh6.googleusercontent.com/-cZy9w6noMAI/VI2RhAxY6uI/AAAAAAAAHr8/7MCO1Ghw15w/s800/14-12-2014_195344.png "image")](https://lh6.googleusercontent.com/-cZy9w6noMAI/VI2RhAxY6uI/AAAAAAAAHr8/7MCO1Ghw15w/s1600/14-12-2014_195344.png)

> 所以Code finder 就起了很大的作用了
> 最简单的就是把更改你的health值的代码全部替换成NOP（就是什么都不做的ASM代码——发呆）
> 你的Health 不管怎么样都不会更改啦

<hr/>

你可能还会问：

> mov [eax],edx 又是什么东东？

一个一个拆出来看看吧

## eax, edx？

好，eax 和edx 呢

就是叫做寄存器 （Register）

有点类似高级语言中的变量

可以拿来储存东西的

现在这些比较现代的x86 processors 有 8 个general purpose 的寄存器， 两个有特定作用的register

[![image](https://lh3.googleusercontent.com/-ZFLEUknCT94/VJQe2uAIglI/AAAAAAAAHyk/U7xwur4fhOQ/s800/17-12-2014_113648.png "image")](https://lh3.googleusercontent.com/-ZFLEUknCT94/VJQe2uAIglI/AAAAAAAAHyk/U7xwur4fhOQ/s1600/17-12-2014_113648.png)

其实在很久很久以前，这些general purpose 的register 都有自己的功用的

但是现在已经是现代了，x86的instruction set 几乎都不用他们了

所以他们就用来储存东西了 xD

`EAX`,`EBX`,`ECX`,`EDX` 这些register 都有对应的16bit 和 8bit 的register，如图片说写的

其中的`EBP` 是base pointer，临时保存`ESP`的

而`ESP`呢，就是保存栈(Stack)的地址

想要知道更多？

Google去吧（或者看看zypeh 大大的 [Register 的那些事](http://zypeh.github.io/articles/all-about-register/)）

## mov？

`mov` 是拿来干嘛的很容易猜吧？

就是move 的缩写呗

将数据从一个地方copy到另一个地方（尽管他叫move，但是他不是**移动**数据，而是**拷贝**）

`mov` 有一下的5种形式：

{% highlight asm %}
mov reg,reg
mov reg,mem
mov mem,reg
mov reg,const
mov mem,const
{% endhighlight %}

其中

`reg` 代表任何一种register（`EAX`,`EBX`,`ECX`,`AX`,`BX`,`CX`,`AH`,`BH`等等...）

`mem` 代表一个地址，比如说`[eax]`之类的

`const` 指的是一个constant（`1`,`2`,`3`,`4` 什么之类的）

一些例子：

{% highlight asm %}
mov eax,ebx
{% endhighlight %}

就是将`ebx`中的value copy 到 `eax`中

{% highlight asm %}
mov eax,5
{% endhighlight %}

就是将 5 储存到`eax`中

{% highlight asm %}
mov ebx,[eax]
{% endhighlight %}

就是将地址为`eax`的value copy 到 `ebx`中

如果有方括号的(square bracket)就表示那是一个地址

比如说`eax`的值是`00228D68`

然后地址`00228D68`中储存的值是100的话

那么`mov ebx,[eax]` 简单来说就是将100~~移到~~拷贝到ebx去 

{% highlight asm %}
mov [eax],ebx
{% endhighlight %}

这就不难理解了吧

就是将ebx 中的值~~移到~~拷贝地址为`eax`那里去

如果`ebx` 储存的值是100

而`eax` 是 `00228D68`

那么这段指令就是将100拷贝到 `00228D68` 中去

你可能会想

为什么没有这样的形式呢？

{% highlight asm %}
mov reg,reg
{% endhighlight %}

这是不可以的...

直接 memory-memory move 是不能的

我重复

**是不可以的**

但是间接的就可以，但不是本篇幅的范围了 哈哈


## NOP ？

`nop` 又是啥？

很简单

就是 **No Operation**

什么都不做就是了

`nop` 占了1 byte

所以大多数的时候

它是用来凑数的 (padding)

参考资料 ：[Guide to x86 Assembly](http://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
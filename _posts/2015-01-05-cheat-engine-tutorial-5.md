---
layout: post
title: '[教程][原创] Cheat Engine 6.4 Tutorial —— 闯关教程 #4'
tags: ['教程','原创','Cheat Engine']
author: 'Gary Ng'
description: 'Cheat Engine Tutorial 第8关闯关教程 + Pointer Scanner教程'
image: 'https://lh6.googleusercontent.com/-RnFCie_5q5U/VKqGzSAW1sI/AAAAAAAAH5g/EqKxoINNXDw/s1600/05-01-2015_204107.png'
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

这一关有两种方法可以解决，一个是手动找出地址，另一个呢就是使用pointer scanner。

<hr/>

### 方法一：手动找出地址

现在就开始啦！

主界面：

[![image](https://lh3.googleusercontent.com/-m2ryyDdSF-0/VLkDqbWUcWI/AAAAAAAAH6U/LjApKGwEZ7M/s800/16-01-2015_094601.png "image")](https://lh3.googleusercontent.com/-m2ryyDdSF-0/VLkDqbWUcWI/AAAAAAAAH6U/LjApKGwEZ7M/s1600/16-01-2015_094601.png)

界面上还是一样的有一个Change Value 和 Change Pointer 的按钮

功能就不用解释了哈，很直接了

现在第一步骤就是找出Value 的地址：

[![image](https://lh6.googleusercontent.com/-Cdczal2hHqM/VLkDqnayOfI/AAAAAAAAH6Y/g4o7xCiVV8o/s800/16-01-2015_131951.png "image")](https://lh6.googleusercontent.com/-Cdczal2hHqM/VLkDqnayOfI/AAAAAAAAH6Y/g4o7xCiVV8o/s1600/16-01-2015_131951.png)

然后呢，找出什么access to this address：

[![image](https://lh5.googleusercontent.com/-_E8nNTlPSnE/VLkDrfSCPqI/AAAAAAAAH6g/mbsuPfhVzd8/s800/16-01-2015_132029.png "image")](https://lh5.googleusercontent.com/-_E8nNTlPSnE/VLkDrfSCPqI/AAAAAAAAH6g/mbsuPfhVzd8/s1600/16-01-2015_132029.png)

然后我们就看到了两行代码，double click 进入，就能找到pointer 了；

[![image](https://lh6.googleusercontent.com/-ugXnSgr3ZmQ/VLkDsNFk7yI/AAAAAAAAH6o/UP9XPGNX7eI/s800/16-01-2015_183626.png "image")](https://lh6.googleusercontent.com/-ugXnSgr3ZmQ/VLkDsNFk7yI/AAAAAAAAH6o/UP9XPGNX7eI/s1600/16-01-2015_183626.png)

右键点击，copy easy guess：

[![image](https://lh4.googleusercontent.com/-56wh6Bhdrkw/VLkDsy13rpI/AAAAAAAAH64/IeZ53LLkkCg/s800/16-01-2015_183708.png "image")](https://lh4.googleusercontent.com/-56wh6Bhdrkw/VLkDsy13rpI/AAAAAAAAH64/IeZ53LLkkCg/s1600/16-01-2015_183708.png)

注意，在这里你有木有发现到有一点点不同？

[![image](https://lh3.googleusercontent.com/-glkigNiBzt0/VLkDs0ZmlWI/AAAAAAAAH60/WR0Oe-B-AG8/s800/16-01-2015_184000.png "image")](https://lh3.googleusercontent.com/-glkigNiBzt0/VLkDs0ZmlWI/AAAAAAAAH60/WR0Oe-B-AG8/s1600/16-01-2015_184000.png)

这里的代码是

{% highlight asm %}
mov [esi+18],eax
{% endhighlight %}

`[esi+18]`其中的`18`就是偏移量（Offset），怎么解释呢？

<span style="color:red">注意：这里的`18`是16进制的，也就是10进制的`24`（不过图片里的是10进制的）</span>

[![image](https://lh4.googleusercontent.com/-oRb2LgLapVU/VLkDtk_cTbI/AAAAAAAAH7A/6IKvtVENbY4/s800/16-01-2015_190004.png "image")](https://lh4.googleusercontent.com/-oRb2LgLapVU/VLkDtk_cTbI/AAAAAAAAH7A/6IKvtVENbY4/s1600/16-01-2015_190004.png)

这里呢，`esi`里面保存的是一个地址，但是这个地址不是真正的要指向的地址，`18`就是的偏移量，只有`esi + 18`过后才是pointer指向的地址

你要记得，`esi`是可变的，但是`18`是一个定量，就是不变的。

现在呢，找出pointer 的地址（paste入刚才copy的地址）：

[![image](https://lh4.googleusercontent.com/-KhxSi3SxMbo/VLkDuuEoxhI/AAAAAAAAH7Q/s17PM4ZhPpg/s800/16-01-2015_190550.png "image")](https://lh4.googleusercontent.com/-KhxSi3SxMbo/VLkDuuEoxhI/AAAAAAAAH7Q/s17PM4ZhPpg/s1600/16-01-2015_190550.png)

然后点击下方的Add Address Manually

勾选Pointer

输入找到的地址

然后填入之前记起来的**Pointer Offset** （这里就是18）

点击OK

[![image](https://lh5.googleusercontent.com/-9_zDZgI0NJY/VLkDuErb_4I/AAAAAAAAH7M/GtBlwlHX5Uw/s800/16-01-2015_190725.png "image")](https://lh5.googleusercontent.com/-9_zDZgI0NJY/VLkDuErb_4I/AAAAAAAAH7M/GtBlwlHX5Uw/s1600/16-01-2015_190725.png)

只要你看到你的value是跟之前的value是一样的，那你就找对了：

[![image](https://lh6.googleusercontent.com/-C_47I8tGOj4/VLkDvAW8SnI/AAAAAAAAH7c/_fdtS0fUvcc/s800/16-01-2015_191011.png "image")](https://lh6.googleusercontent.com/-C_47I8tGOj4/VLkDvAW8SnI/AAAAAAAAH7c/_fdtS0fUvcc/s1600/16-01-2015_191011.png)

现在就是要找出what access this **pointer**：

[![image](https://lh6.googleusercontent.com/-r5trVJkIexE/VLkDvgqWZ6I/AAAAAAAAH7g/pV40YhfCycQ/s800/16-01-2015_191055.png "image")](https://lh6.googleusercontent.com/-r5trVJkIexE/VLkDvgqWZ6I/AAAAAAAAH7g/pV40YhfCycQ/s1600/16-01-2015_191055.png)

点击Find out what accesses this pointer：

[![image](https://lh5.googleusercontent.com/-JGUghjZZKxY/VLkDwB1_2MI/AAAAAAAAH7o/sY3mWSGXvDY/s800/16-01-2015_191115.png "image")](https://lh5.googleusercontent.com/-JGUghjZZKxY/VLkDwB1_2MI/AAAAAAAAH7o/sY3mWSGXvDY/s1600/16-01-2015_191115.png)

点击Change value之后就会看到多了几个列表项目

双击进入，记下Offset，然后在copy easy guess （在这里`Offset = 0`）：

[![image](https://lh4.googleusercontent.com/-ItyYUVRYcxg/VLkDw-PXRpI/AAAAAAAAH70/dMDT-Z8QIiI/s800/16-01-2015_191302.png "image")](https://lh4.googleusercontent.com/-ItyYUVRYcxg/VLkDw-PXRpI/AAAAAAAAH70/dMDT-Z8QIiI/s1600/16-01-2015_191302.png)

然后回到CE主界面，再次重复之前的动作：

[![image](https://lh4.googleusercontent.com/-Cn-QFK0JsJg/VLkDyKvyIwI/AAAAAAAAH8E/TDUYSr6lqD8/s800/16-01-2015_191831.png "image")](https://lh4.googleusercontent.com/-Cn-QFK0JsJg/VLkDyKvyIwI/AAAAAAAAH8E/TDUYSr6lqD8/s1600/16-01-2015_191831.png)

这里搜索到的有两个，但是通常都选那个地址比较小的（也就是上面那个）

然后就照常Add Address Manually：

[![image](https://lh5.googleusercontent.com/-Oo2OnO02fNU/VLkDxZoOLSI/AAAAAAAAH74/CmpEUsehSE0/s800/16-01-2015_192115.png "image")](https://lh5.googleusercontent.com/-Oo2OnO02fNU/VLkDxZoOLSI/AAAAAAAAH74/CmpEUsehSE0/s1600/16-01-2015_192115.png)

<span style="color:red">注意：这里的value不一样了注意到了吗？这是正常的因为现在value指向的是一个**地址**</span>

现在再次重复一样的动作：

[![image](https://lh6.googleusercontent.com/-RmWaNJTUMWM/VLkDyYGnFfI/AAAAAAAAH8I/Jj4s-pjvIH0/s800/16-01-2015_192347.png "image")](https://lh6.googleusercontent.com/-RmWaNJTUMWM/VLkDyYGnFfI/AAAAAAAAH8I/Jj4s-pjvIH0/s1600/16-01-2015_192347.png)

[![image](https://lh4.googleusercontent.com/-bGXR5AxOn5o/VLkDza3dx6I/AAAAAAAAH8U/umlnuTa1CjE/s800/16-01-2015_192410.png "image")](https://lh4.googleusercontent.com/-bGXR5AxOn5o/VLkDza3dx6I/AAAAAAAAH8U/umlnuTa1CjE/s1600/16-01-2015_192410.png)

[![image](https://lh5.googleusercontent.com/-xeCKzUvuPzM/VLkDzsWhvaI/AAAAAAAAH8g/L8IUjf-agOI/s800/16-01-2015_192431.png "image")](https://lh5.googleusercontent.com/-xeCKzUvuPzM/VLkDzsWhvaI/AAAAAAAAH8g/L8IUjf-agOI/s1600/16-01-2015_192431.png)

[![image](https://lh4.googleusercontent.com/-EvxJPb61tGc/VLkD06zDCCI/AAAAAAAAH8k/G99CVjntHa4/s800/16-01-2015_192534.png "image")](https://lh4.googleusercontent.com/-EvxJPb61tGc/VLkD06zDCCI/AAAAAAAAH8k/G99CVjntHa4/s1600/16-01-2015_192534.png)

[![image](https://lh4.googleusercontent.com/-6q6orAmIJNU/VLkD0zWXHFI/AAAAAAAAH8o/7HjWlPRmKwg/s800/16-01-2015_192610.png "image")](https://lh4.googleusercontent.com/-6q6orAmIJNU/VLkD0zWXHFI/AAAAAAAAH8o/7HjWlPRmKwg/s1600/16-01-2015_192610.png)

[![image](https://lh6.googleusercontent.com/-C7dmx22r9ds/VLkD2hyKL_I/AAAAAAAAH84/sr3OMoUewIU/s800/16-01-2015_192938.png "image")](https://lh6.googleusercontent.com/-C7dmx22r9ds/VLkD2hyKL_I/AAAAAAAAH84/sr3OMoUewIU/s1600/16-01-2015_192938.png)

继续下去，不需要理由 xD （《甜甜的》周杰伦）

[![image](https://lh4.googleusercontent.com/-cOmz4tqJFYc/VLkD2h-81JI/AAAAAAAAH80/I57jMdgeqU0/s800/16-01-2015_193048.png "image")](https://lh4.googleusercontent.com/-cOmz4tqJFYc/VLkD2h-81JI/AAAAAAAAH80/I57jMdgeqU0/s1600/16-01-2015_193048.png)

[![image](https://lh4.googleusercontent.com/-YpteeV-wteM/VLkD4Ua1nuI/AAAAAAAAH9E/hpXIra_MsuI/s800/16-01-2015_193108.png "image")](https://lh4.googleusercontent.com/-YpteeV-wteM/VLkD4Ua1nuI/AAAAAAAAH9E/hpXIra_MsuI/s1600/16-01-2015_193108.png)

[![image](https://lh5.googleusercontent.com/-sfBEWWXrPlY/VLkD6DlPmTI/AAAAAAAAH9Y/ZhL7oPRwdlY/s800/16-01-2015_193123.png "image")](https://lh5.googleusercontent.com/-sfBEWWXrPlY/VLkD6DlPmTI/AAAAAAAAH9Y/ZhL7oPRwdlY/s1600/16-01-2015_193123.png)

[![image](https://lh5.googleusercontent.com/-anvfxVgon-8/VLkD4YESEHI/AAAAAAAAH9I/fqJN743rLso/s800/16-01-2015_193209.png "image")](https://lh5.googleusercontent.com/-anvfxVgon-8/VLkD4YESEHI/AAAAAAAAH9I/fqJN743rLso/s1600/16-01-2015_193209.png)

现在列表之中有两个，要选哪个呢？特殊状况，解释下先。

有没有发现到列表之中有一个是**青色**的？

[![image](https://lh4.googleusercontent.com/-k_YM4FXfIcI/VLkD6tVI2EI/AAAAAAAAH9c/f3mqT74I8Zk/s800/16-01-2015_193851.png "image")](https://lh4.googleusercontent.com/-k_YM4FXfIcI/VLkD6tVI2EI/AAAAAAAAH9c/f3mqT74I8Zk/s1600/16-01-2015_193851.png)

这个就是base address（或者static address，就代表我们找pointer address 到这里就差不多可以停了）

这里呢，直接选择base address的address就能啦（大多数的状况是这样的，但是也有可能有时候不是）

要怎么看你选择的address是正确的呢？

很简单，就是Add Address Manually之后找what accesses this pointer的框框之中没有任何项目就是啦！

比如说我现在选用第一行的项目：

[![image](https://lh4.googleusercontent.com/-8RjLpMbUQC0/VLkD6dNR0gI/AAAAAAAAH9g/P5pleP8fAOE/s800/16-01-2015_194446.png "image")](https://lh4.googleusercontent.com/-8RjLpMbUQC0/VLkD6dNR0gI/AAAAAAAAH9g/P5pleP8fAOE/s1600/16-01-2015_194446.png)

[![image](https://lh6.googleusercontent.com/-w45Aplr8RjQ/VLkD7qem5bI/AAAAAAAAH9o/sb0eWKzNGHg/s800/16-01-2015_194507.png "image")](https://lh6.googleusercontent.com/-w45Aplr8RjQ/VLkD7qem5bI/AAAAAAAAH9o/sb0eWKzNGHg/s1600/16-01-2015_194507.png)

[![image](https://lh4.googleusercontent.com/-5w9waiCAE6k/VLkD8fPZYGI/AAAAAAAAH9w/_dvH-u-TRwU/s800/16-01-2015_194525.png "image")](https://lh4.googleusercontent.com/-5w9waiCAE6k/VLkD8fPZYGI/AAAAAAAAH9w/_dvH-u-TRwU/s1600/16-01-2015_194525.png)

可是就算怎么点击Change Value，列表之中都没有新的项目出现，就代表刚刚的Address是错的：

[![image](https://lh3.googleusercontent.com/-i4SQfH4DBUk/VLkD9nnbgDI/AAAAAAAAH-A/icTkEjRwdZA/s800/16-01-2015_194623.png "image")](https://lh3.googleusercontent.com/-i4SQfH4DBUk/VLkD9nnbgDI/AAAAAAAAH-A/icTkEjRwdZA/s1600/16-01-2015_194623.png)

所以呢，就是用base address了：

[![image](https://lh4.googleusercontent.com/-WmylGOrbnqA/VLkD8-wPOGI/AAAAAAAAH-E/dEGQbHGB4zs/s800/16-01-2015_194758.png "image")](https://lh4.googleusercontent.com/-WmylGOrbnqA/VLkD8-wPOGI/AAAAAAAAH-E/dEGQbHGB4zs/s1600/16-01-2015_194758.png)

到这里呢，就可以停了（只要看到base address，也就是青色的项目列表）

现在我们要做的就是将所有的Offset 都串起来，直接从base address 一直到真正的value

记得我们之前找到的Offset value吧？

依次是`c`，然后`14`，然后是`0`，然后呢就是`18`

现在呢，点击Add Address Manually，然后pointer address 输入刚刚找到的base address

[![image](https://lh4.googleusercontent.com/-yiiplMnslW4/VLkD_LRuIbI/AAAAAAAAH-k/ZqP9L2CT_IQ/s800/16-01-2015_195212.png "image")](https://lh4.googleusercontent.com/-yiiplMnslW4/VLkD_LRuIbI/AAAAAAAAH-k/ZqP9L2CT_IQ/s1600/16-01-2015_195212.png)

在上面的框框呢输入`c`：

[![image](https://lh3.googleusercontent.com/-DDwzBXOG8Pw/VLkD-NmZ9KI/AAAAAAAAH-I/2JUGE8N-L6M/s800/16-01-2015_195245.png "image")](https://lh3.googleusercontent.com/-DDwzBXOG8Pw/VLkD-NmZ9KI/AAAAAAAAH-I/2JUGE8N-L6M/s1600/16-01-2015_195245.png)

然后点击下方的Add Offset，输入`14`：

[![image](https://lh3.googleusercontent.com/-Hr7q_WcvEfY/VLkD-_XWJGI/AAAAAAAAH-Y/SJj2W02VcIw/s800/16-01-2015_195327.png "image")](https://lh3.googleusercontent.com/-Hr7q_WcvEfY/VLkD-_XWJGI/AAAAAAAAH-Y/SJj2W02VcIw/s1600/16-01-2015_195327.png)

然后再点击Add Offset，值保留`0`：

[![image](https://lh3.googleusercontent.com/-2cWueiMsxsM/VLkD_g7zIyI/AAAAAAAAH-o/BjVPMnGUk78/s800/16-01-2015_195410.png "image")](https://lh3.googleusercontent.com/-2cWueiMsxsM/VLkD_g7zIyI/AAAAAAAAH-o/BjVPMnGUk78/s1600/16-01-2015_195410.png)

再点击Add Offset，输入`18`：

[![image](https://lh3.googleusercontent.com/-CZU-1Y9-EBo/VLkD_W10xvI/AAAAAAAAH-g/oPbHeheNfGk/s800/16-01-2015_195448.png "image")](https://lh3.googleusercontent.com/-CZU-1Y9-EBo/VLkD_W10xvI/AAAAAAAAH-g/oPbHeheNfGk/s1600/16-01-2015_195448.png)

点击OK之后，有木有发现到他的Value跟第一个的项目是一样的？

[![image](https://lh4.googleusercontent.com/-qd2rGqbn-uk/VLkEAwA3DOI/AAAAAAAAH-4/MW37G0s2xic/s800/16-01-2015_195557.png "image")](https://lh4.googleusercontent.com/-qd2rGqbn-uk/VLkEAwA3DOI/AAAAAAAAH-4/MW37G0s2xic/s1600/16-01-2015_195557.png)

看回Step 8 的Objective：

> If you think you've found the pointer path click Change Register. The pointers and value will then change and you'll have 3 seconds to freeze the address to 5000

直接把他改成`5000`，然后Freeze：

[![image](https://lh5.googleusercontent.com/-f8xeOgOUp5M/VLkECMN7CpI/AAAAAAAAH_E/8p8PSFCjLVw/s800/16-01-2015_195721.png "image")](https://lh5.googleusercontent.com/-f8xeOgOUp5M/VLkECMN7CpI/AAAAAAAAH_E/8p8PSFCjLVw/s1600/16-01-2015_195721.png)

点击Change Pointer：

[![image](https://lh4.googleusercontent.com/-kJpfNMjZnLg/VLkEAv4YBxI/AAAAAAAAH-0/6ubsQJhuX4k/s800/16-01-2015_195744.png "image")](https://lh4.googleusercontent.com/-kJpfNMjZnLg/VLkEAv4YBxI/AAAAAAAAH-0/6ubsQJhuX4k/s1600/16-01-2015_195744.png)

然后就点击Next 吧：

[![image](https://lh5.googleusercontent.com/-dTehDIacsQI/VLkEC8GIyYI/AAAAAAAAH_U/2FyU3R4kY-0/s800/16-01-2015_195825.png "image")](https://lh5.googleusercontent.com/-dTehDIacsQI/VLkEC8GIyYI/AAAAAAAAH_U/2FyU3R4kY-0/s1600/16-01-2015_195825.png)

<hr/>

### 方法二：Pointer Scanner

这个方法就灰常灰常简单了

首先就是找出Value的地址：

[![image](https://lh4.googleusercontent.com/--agYDbPRsOg/VLkECPZuiXI/AAAAAAAAH_I/spILnD-Lydk/s800/16-01-2015_200911.png "image")](https://lh4.googleusercontent.com/--agYDbPRsOg/VLkECPZuiXI/AAAAAAAAH_I/spILnD-Lydk/s1600/16-01-2015_200911.png)

然后右键点击，选择Pointer scan for this address：

[![image](https://lh3.googleusercontent.com/-NaHW47kAoyw/VLkEDBox_eI/AAAAAAAAH_g/I7YQtvASFqs/s800/16-01-2015_201004.png "image")](https://lh3.googleusercontent.com/-NaHW47kAoyw/VLkEDBox_eI/AAAAAAAAH_g/I7YQtvASFqs/s1600/16-01-2015_201004.png)

点击OK：

[![image](https://lh5.googleusercontent.com/-EZuOJVHXD8Q/VLkEDrTZEpI/AAAAAAAAH_o/NF3N9W3Lmxo/s800/16-01-2015_201050.png "image")](https://lh5.googleusercontent.com/-EZuOJVHXD8Q/VLkEDrTZEpI/AAAAAAAAH_o/NF3N9W3Lmxo/s1600/16-01-2015_201050.png)

点击Save：

[![image](https://lh6.googleusercontent.com/-6R2NCHDTTVQ/VLkEFH6EesI/AAAAAAAAIAA/zkEWc89cPsI/s800/16-01-2015_201154.png "image")](https://lh6.googleusercontent.com/-6R2NCHDTTVQ/VLkEFH6EesI/AAAAAAAAIAA/zkEWc89cPsI/s1600/16-01-2015_201154.png)

然后CE开始搜索：

[![image](https://lh3.googleusercontent.com/-sEcQzoOeMW8/VLkEDyhWjVI/AAAAAAAAH_k/O_U-_8_ha24/s800/16-01-2015_201345.png "image")](https://lh3.googleusercontent.com/-sEcQzoOeMW8/VLkEDyhWjVI/AAAAAAAAH_k/O_U-_8_ha24/s1600/16-01-2015_201345.png)

结果：

[![image](https://lh3.googleusercontent.com/-F_R7aC5rsFY/VLkEGbgk-rI/AAAAAAAAIAM/BIspkzox9JQ/s800/16-01-2015_201404.png "image")](https://lh3.googleusercontent.com/-F_R7aC5rsFY/VLkEGbgk-rI/AAAAAAAAIAM/BIspkzox9JQ/s1600/16-01-2015_201404.png)

回到CE Tutorial，点击Change Pointer：

[![image](https://lh5.googleusercontent.com/-8G0rrAUF0cc/VLkEFFcT7-I/AAAAAAAAH_0/TEhFoSqJmto/s800/16-01-2015_201437.png "image")](https://lh5.googleusercontent.com/-8G0rrAUF0cc/VLkEFFcT7-I/AAAAAAAAH_0/TEhFoSqJmto/s1600/16-01-2015_201437.png)

然后回到CE 的 Pointer Scan

点击Pointer Scanner > Rescan memory - removes pointers not pointing to the right address

[![image](https://lh3.googleusercontent.com/-Re2P-22UxXg/VLkEGDhZD9I/AAAAAAAAIAE/qEhB6H9YyoY/s800/16-01-2015_201552.png "image")](https://lh3.googleusercontent.com/-Re2P-22UxXg/VLkEGDhZD9I/AAAAAAAAIAE/qEhB6H9YyoY/s1600/16-01-2015_201552.png)

选择Value to find

然后输入新的值

点击OK：

[![image](https://lh6.googleusercontent.com/-s3cZhgPbRNk/VLkFbf9HYtI/AAAAAAAAIAo/vDK7HKu77ME/s800/16-01-2015_202412.png "image")](https://lh6.googleusercontent.com/-s3cZhgPbRNk/VLkFbf9HYtI/AAAAAAAAIAo/vDK7HKu77ME/s1600/16-01-2015_202412.png)

点击Save：

[![image](https://lh4.googleusercontent.com/-Qs-idebMLtY/VLkFbyPHX0I/AAAAAAAAIAs/9KvFlKm7qE4/s800/16-01-2015_202032.png "image")](https://lh4.googleusercontent.com/-Qs-idebMLtY/VLkFbyPHX0I/AAAAAAAAIAs/9KvFlKm7qE4/s1600/16-01-2015_202032.png)

稍微的耐心等待之后你就会看到只剩下唯一一个：

[![image](https://lh5.googleusercontent.com/-vanVJrppKaA/VLkEGhm50_I/AAAAAAAAIAU/BlFx7ggJ_eA/s800/16-01-2015_202517.png "image")](https://lh5.googleusercontent.com/-vanVJrppKaA/VLkEGhm50_I/AAAAAAAAIAU/BlFx7ggJ_eA/s1600/16-01-2015_202517.png)

双击就会加入到CE的列表之中：

[![image](https://lh3.googleusercontent.com/-w7NBQS7Vrys/VLkFcuVffZI/AAAAAAAAIA8/a3mzJDcgLow/s800/16-01-2015_202620.png "image")](https://lh3.googleusercontent.com/-w7NBQS7Vrys/VLkFcuVffZI/AAAAAAAAIA8/a3mzJDcgLow/s1600/16-01-2015_202620.png)

将它改成`5000`，然后Freeze就好啦！

[![image](https://lh6.googleusercontent.com/-jyqOPsn2Sqc/VLkFc-z5DmI/AAAAAAAAIBE/qZVUvsjnLdY/s800/16-01-2015_202651.png "image")](https://lh6.googleusercontent.com/-jyqOPsn2Sqc/VLkFc-z5DmI/AAAAAAAAIBE/qZVUvsjnLdY/s1600/16-01-2015_202651.png)

[![image](https://lh4.googleusercontent.com/-XAMXQ82ZgIA/VLkFdHE-6BI/AAAAAAAAIA0/WMw1f6nnKIU/s800/16-01-2015_202705.png "image")](https://lh4.googleusercontent.com/-XAMXQ82ZgIA/VLkFdHE-6BI/AAAAAAAAIA0/WMw1f6nnKIU/s1600/16-01-2015_202705.png)


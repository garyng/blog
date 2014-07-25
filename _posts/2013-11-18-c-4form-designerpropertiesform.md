---
layout: post
title: '[教程][C#] 新手入门教程#4——初识Form Designer、更改Properties、更改Form大小'
author: 'Gary Ng'
tags: ['C#','入门','原创','教程','新手']
---

#  【Form Designer是啥？】

首先打开VS，创建一个新的Solution：

默认看到的窗口就是这个：

![image](http://lh5.ggpht.com/-GMyazQTS8xA/UhnWtCLvVpI/AAAAAAAAEDQ/fwGdJx3Hw1o/image_thumb.png?imgmax=800)

  
这个就是Form Designer！它的功能就是给你添加、删除控件，编辑“可视化”的部分。在这里添加的控件等等就是编译过后“看得到”的部分，看不到的部分就是代码啦！  
如何分辨Form Designer？  
看上方TAB的内容，如果有“Design”的就是了！  
![image](http://lh4.ggpht.com/-MyAMFkVARrg/UhnWuXRBzBI/AAAAAAAAEDg/sDVsA-qGRho/image_thumb%25255B1%25255D.png?imgmax=800)  
如果你不小心关掉Form Designer 了，可以到Solution Explorer 双击form 就可以打开了  
![image](http://lh3.ggpht.com/-Z98A9uEkvq8/UhnWvoEj2oI/AAAAAAAAEDw/uprvizgAJ_w/image_thumb%25255B2%25255D.png?imgmax=800)  
  


#  【更改Form大小】

如果要更改Form大小，拖着Form框边的小正方形：

![image](http://lh6.ggpht.com/-Tq4ehITycG0/UhnWwgGGVxI/AAAAAAAAEEA/iV9VbSWUlc4/image_thumb%25255B3%25255D.png?imgmax=800)

然后拖拉就可以更改Form 大小

  


#  【添加控件】

打开Toolbox，然后点击需要添加的控件（比如说button）

![image](http://lh6.ggpht.com/-zZKW241yVJE/UhnWx0mN1rI/AAAAAAAAEEQ/X8bIqlB37qc/image_thumb%25255B5%25255D.png?imgmax=800)

  


你会发现到你的cursor 变成了：![image](http://lh4.ggpht.com/-PWC2zRP0Rbs/UhnWymGIF4I/AAAAAAAAEEg/JABvf_DLCiw/image_thumb%25255B6%25255D.png?imgmax=800)

然后点击Form 就可以添加button：

![image](http://lh6.ggpht.com/-QINeIQqwQdw/UhnWzr5y9FI/AAAAAAAAEEw/xbTRp4ZyaIY/image_thumb%25255B7%25255D.png?imgmax=800)

  


#  【更改控件大小】

注意到空间周围的白色小框框了没？就像更改form的大小一样，拖着他们就可以直接更改大小了！  
![image](http://lh3.ggpht.com/-X7Tog-kxXCQ/UhnW0lvrzsI/AAAAAAAAEFA/2dNjf-lkNI4/image_thumb%25255B8%25255D.png?imgmax=800)  
注：如果一些控件没有该白色框，那就代表该控件不能改变大小！  
注2：你可能会注意到groupbox有一个额外的小按钮：![image](http://lh3.ggpht.com/-kqpXdhMgGTg/UhnW1ihz-3I/AAAAAAAAEFQ/UuUTo7LlaJ0/image_thumb%25255B9%25255D.png?imgmax=800)  
那个是给你拖越控件用的：  
![image](http://lh6.ggpht.com/-QYhch0bUfrc/UhnW2gBWISI/AAAAAAAAEFg/MhVSnXDzFIk/image_thumb%25255B10%25255D.png?imgmax=800)  
  


#  【对齐控件】

当你在移动控件的时候，你会发现到那些蓝线：  
![image](http://lh4.ggpht.com/-cPyTuiByxBY/UhnW3u0ImgI/AAAAAAAAEFw/BtihVmjlVo0/image_thumb%25255B11%25255D.png?imgmax=800)  
那个是用来对齐控件的，很好用对吧？  


#  【更改显示的文字】

Button 默认显示的文字是“buttonX”，其中X是1,2,3,4,5…等等，看上去很boring对吧？  
如果你要更改button的text（或者其他控件显示的文字）  
先点击需要更改Text的 button > 然后点击Properties （或者按下F4）>  然后找到"text"属性：  
![image](http://lh3.ggpht.com/-PJfQHKw0VoI/UhnW4uxDAyI/AAAAAAAAEGA/WjAxOc7dq5g/image_thumb%25255B12%25255D.png?imgmax=800)  
在这边就可以直接更改button的text了  
![image](http://lh6.ggpht.com/-VRXsMHV77pk/UhnW5lfWpbI/AAAAAAAAEGQ/p4_2O57KOX0/image_thumb%25255B13%25255D.png?imgmax=800)

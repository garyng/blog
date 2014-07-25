---
layout: post
title: '[教程][C#] 新手入门教程#3——查看代码、编译程序、Solution Explorer'
author: 'Gary Ng'
tags: ['C#','入门','原创','教程','新手']
---

# 

#  【Solution Explorer里面的东西都是啥？】

这里先解释下Solution Explorer里面的东西代表什么：

1、Properties 就是整个solution （也就是project）的属性

![image](http://lh3.ggpht.com/-2i48vU1Upic/Ugsx-zv8AFI/AAAAAAAAD1c/7g2vGMqeN_4/image_thumb%25255B1%25255D.png?imgmax=800)

双击过后就会看到这个页面，这里就是整个solution的属性：

![image](http://lh5.ggpht.com/-yrGpLR7SH_k/UgsyAL55ElI/AAAAAAAAD1s/2URTNDwu6MY/image_thumb%25255B2%25255D.png?imgmax=800)

  


2、References

这里包含了整个solution的references，至于什么是references呢，恩..先别管..

![image](http://lh5.ggpht.com/-I1My78fnyIU/UgsyBI7tOtI/AAAAAAAAD18/G9lAralxalo/image_thumb%25255B3%25255D.png?imgmax=800)

  


3、余下的就是程序所需的文件

![image](http://lh5.ggpht.com/-07SRSwMs0bM/UgsyCZSAT6I/AAAAAAAAD2M/CDxM7FB7UlM/image_thumb%25255B4%25255D.png?imgmax=800)

Program.cs 包含了程序的入口，这是几乎每个solution都必须的

Form1.cs 就是你的程序了

Form1.Designer.cs 是VS用来给你编辑程序界面的，这个文件不必去管它，因为都是由VS来控制的

  


#  【如何查看程序代码？】

之前我们了解了基本的VS界面操作，那要怎么编写代码呢？  
如果要查看代码，可以在Solution Explorer > 右键需要显示代码的文件 > 点击View Code，或者你可以直接按下F7  
![image](http://lh3.ggpht.com/-poh1Gm5o5LU/UgsyDns16eI/AAAAAAAAD2c/f7rMYflvcP4/image_thumb.png?imgmax=800)  
  
过后就会看到这个窗口（你的窗口可能跟我的不一样，不用紧的，功能是一样的），这个就是用来编辑代码的窗口了：  
![image](http://lh4.ggpht.com/-PM-QCvV2VJo/UgsyEtnuOUI/AAAAAAAAD2s/2T2ovoaWPsc/image_thumb%25255B5%25255D.png?imgmax=800)  
  


#  【我的Project储存在哪儿？】

如果你的Create New Project的页面是这样的：  
![image](http://lh6.ggpht.com/-xMQELLc66DQ/UgsyGMoeBtI/AAAAAAAAD28/zheU8grjNzg/image_thumb%25255B6%25255D.png?imgmax=800)  
  
这是代表你创建的Project是临时的，你必须储存Project，你才会看到你的Project文件夹。按下Ctrl + Shift + S，然后选择储存project的路径就可以了：  
![image](http://lh4.ggpht.com/-SFNbQRhaNQI/UgsyHjLO6II/AAAAAAAAD3M/eAgrqWn26Do/image_thumb%25255B9%25255D.png?imgmax=800)  
  
如果你的Create New Project 的对话框是这样的话：  
![image](http://lh4.ggpht.com/-pL67hLo8t1g/UgsyI9XZACI/AAAAAAAAD3c/zdqBvy8yaFI/image_thumb%25255B8%25255D.png?imgmax=800)  
  
这代表创建Project的时候已经储存的project，那你可以直接到储存的路径来找到project files（比如我把我的project储存在f:\users\garyng\documents\visual studio 2010\projects里面）  


#  【如何调试程序？】

要编译程序的话，可以点击上方的类似start按钮，或者你可以直接按下F5：  
![image](http://lh4.ggpht.com/-K0U_m-eIilo/UgsyJ4Utq2I/AAAAAAAAD3s/7sOtztd0ac4/image_thumb%25255B13%25255D.png?imgmax=800)  
  
如果你找不到这个按钮，你可以到View > Toolbars > Standard显示它：  
![image](http://lh6.ggpht.com/-uDfVRzgwg3U/UgsyLCqWSII/AAAAAAAAD38/ig4R1JqUZw4/image_thumb%25255B14%25255D.png?imgmax=800)  
  


#  【Project文件里面都是些什么？】

打开你的project文件夹，你会看到这些东西：  
![image](http://lh5.ggpht.com/-VT2KSr67TyU/UgsyMehYRnI/AAAAAAAAD4M/ID-8noKJz_s/image_thumb%25255B10%25255D.png?imgmax=800)  
  
*.sln 是你的solution文件，点击他就可以直接以VS打开文件  
*.suo 这我不确定..  
  
打开WindowsFormsApplication2的文件夹（你的可能跟我的不一样），你会看到：  
![image](http://lh4.ggpht.com/-ySI9oNpoRlE/UgsyNVubJUI/AAAAAAAAD4c/SYb5WHk-n6Y/image_thumb%25255B11%25255D.png?imgmax=800)  
  
*.cs 是储存代码的文件  
*.csproj 这个类似*.sln文件  
*.user 这个似乎类似*.sln文件  
  
bin 文件夹包含：  
![image](http://lh4.ggpht.com/-6fJi6AGE3Bc/UgsyOZoLRXI/AAAAAAAAD4s/lHHXlsuf9sY/image_thumb%25255B12%25255D.png?imgmax=800)  
Debug 和 Release 都大同小异，里面都包含你的exe程序  
![image](http://lh6.ggpht.com/-BilnpPJtcwc/UgsyPtvwbFI/AAAAAAAAD48/U3aTkp9sz6g/image_thumb%25255B15%25255D.png?imgmax=800)  
Properties 文件包含project的属性文件：  
![image](http://lh3.ggpht.com/-vzZJ9urJCnc/UgsyQsGxecI/AAAAAAAAD5M/TmPPzXIICvw/image_thumb%25255B16%25255D.png?imgmax=800)

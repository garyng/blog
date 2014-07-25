---
layout: post
title: '[原创][教程] 如何让KeePass 以 plugin 和 trigger 与 Dropbox 同步密码库'
author: 'Gary Ng'
tags: ['dropbox','KeeCloud','KeePass','原创','教程']
---

KeePass 是一个**开源免费**的密码储存工具，市面上有很多类似的工具比如：收费的[1Password](https://agilebits.com/onepassword)、[LastPass](https://lastpass.com/) 等等，但是我还是比较喜欢KeePass..  


#  【工具】

1、KeePass Professional  
目前版本：2.23  
下载地址：<http://keepass.info/download.html>  
建议下载Portable Edition的  
  
2、Plugin – KeeCloud  
下载地址：<https://bitbucket.org/devinmartin/keecloud/downloads>  
  
3、一个Dropbox 账户  
申请地址：[https://www.dropbox.com](https://www.dropbox.com/)  
  


#  【系统需求】

1、需要安装.net 2.0  
  


#  【基本介绍】

1、打开KeePass，你会看到这个很简单的UI  
![image](http://lh3.ggpht.com/-F3fxAc_YQpQ/UlDvtgBQBzI/AAAAAAAAEoU/rYVEkVdZsoA/image_thumb.png?imgmax=800)   
  
2、创建一个新的Database  
![image](http://lh4.ggpht.com/-OnHhMBrI7fY/UlDvumc5czI/AAAAAAAAEok/s1JVmEJNrC4/image_thumb%25255B2%25255D.png?imgmax=800)   
  
3、选择储存路径  
![image](http://lh4.ggpht.com/-kwvRIIOopBI/UlDvvxu4scI/AAAAAAAAEo0/XtzMbjulhRo/image_thumb%25255B3%25255D.png?imgmax=800)   
  
4、设置主密码  
这里设置的密码是以后开启密码库的密码..  
![image](http://lh5.ggpht.com/-o8MUwk6k7Ms/UlDvxXu_VNI/AAAAAAAAEpE/yKws7m0-7MQ/image_thumb%25255B4%25255D.png?imgmax=800)   
  
5、设置Database的属性  
设置完毕就可以点击OK  
![image](http://lh4.ggpht.com/-DCGArvustw0/UlDvyky1OVI/AAAAAAAAEpU/RvINmppPxN4/image_thumb%25255B5%25255D.png?imgmax=800)   
  
6、右键>Add Entry  
可增加新的entry  
![image](http://lh4.ggpht.com/-arDbvJeqXJk/UlDvzxTgMII/AAAAAAAAEpk/SlfP2ivxz8s/image_thumb%25255B6%25255D.png?imgmax=800)   
  
7、填写密码、用户名  
点击OK  
![image](http://lh4.ggpht.com/-bF-SjxS9Zrc/UlDv1AATuvI/AAAAAAAAEp0/8bHb59lECxY/image_thumb%25255B7%25255D.png?imgmax=800)   
  
8、你就有一个新的entry了  
![image](http://lh3.ggpht.com/-pp_E1uW9elA/UlDv2uNQXBI/AAAAAAAAEqE/OTB5mPrRxbI/image_thumb%25255B8%25255D.png?imgmax=800)   
  
9、右键点击该entry 就可以copy password、copy username 等等  
![image](http://lh5.ggpht.com/-lTP_atmJYvg/UlDv3lUmTXI/AAAAAAAAEqU/bYdD8uc48Dk/image_thumb%25255B9%25255D.png?imgmax=800)   
  
10、Copy password 之后你就会看到这个：  
![image](http://lh4.ggpht.com/-M72RK-Yr3IQ/UlDv48To4bI/AAAAAAAAEqk/mX-daZWy7ow/image_thumb%25255B11%25255D.png?imgmax=800)   
代表12秒后，密码就会从剪贴板上清除  
  


#  【安装插件】

1、如果你已经开启KeePass的话，请关闭。  
2、到<https://bitbucket.org/devinmartin/keecloud/downloads>下载KeeCloud  
目前版本是1.0.37  
3、解压压缩包，找到KeeCloud.plgx  
![image](http://lh3.ggpht.com/-LozANL7VN-w/UlDv6EzuVcI/AAAAAAAAEq0/-Vvk36tvalU/image_thumb%25255B12%25255D.png?imgmax=800)   
  
4、复制 KeeCloud.plgx 到 KeePass 的目录下：  
![image](http://lh6.ggpht.com/-WxRVsmBOqEk/UlDv7IbNXgI/AAAAAAAAErE/lJtaS9U7rXQ/image_thumb%25255B13%25255D.png?imgmax=800)   
  
5、启动KeePass.exe  
6、输入密码，点击OK  
![image](http://lh4.ggpht.com/-nLsOTqlbwZE/UlDv8QX6QEI/AAAAAAAAErU/C6JlMz5umb0/image_thumb%25255B14%25255D.png?imgmax=800)   
  
  


#  【设置URL Sync】

  
1、打开浏览器，登录Dropbox  
![image](http://lh3.ggpht.com/-FpA2bugGkUg/UlDv92ND3xI/AAAAAAAAErk/CkKn1QWWhuY/image_thumb%25255B15%25255D.png?imgmax=800)   
  
2、先创建一个新的folder，名字中最好不要有 空格等等  
![image](http://lh3.ggpht.com/-MwbuKYdohco/UlDv_erpqGI/AAAAAAAAEr0/zBBDC-cLoCA/image_thumb%25255B16%25255D.png?imgmax=800)   
  
3、然后进入那个Folder，upload 之前save 起来的 password database  
![image](http://lh4.ggpht.com/-Yv9ZCe_5r_U/UlDwAs6RRPI/AAAAAAAAEsE/AwMuRReJ_qM/image_thumb%25255B17%25255D.png?imgmax=800)   
  
![image](http://lh4.ggpht.com/-HMFUMDyzo44/UlDwB-xgULI/AAAAAAAAEsU/LqYJawSfXnI/image_thumb%25255B18%25255D.png?imgmax=800)   
3、回到KeePass，点击 Tools > URL Credential Wizard  
![image](http://lh5.ggpht.com/-TiXYiP6VJ2c/UlDwDDAQkUI/AAAAAAAAEsk/oJ6BZWeHXpw/image_thumb%25255B19%25255D.png?imgmax=800)   
  
4、选择Dropbox，点击Next  
![image](http://lh5.ggpht.com/-92qd3bbPE4E/UlDwEQYzdzI/AAAAAAAAEs0/O3YVFY54nGI/image_thumb%25255B20%25255D.png?imgmax=800)   
  
5、你的浏览器会打开一个Dropbox OAuth的页面  
点击Allow  
![image](http://lh4.ggpht.com/-Epyl381sTDw/UlDwFtnRQWI/AAAAAAAAEtE/WFMRQLazeW8/image_thumb%25255B22%25255D.png?imgmax=800)   
![image](http://lh4.ggpht.com/-HMCIuNpOTlc/UlDwHMXT0KI/AAAAAAAAEtU/MZz2muWaDJU/image_thumb%25255B23%25255D.png?imgmax=800)   
  
6、回到KeePass，点击Next  
![image](http://lh4.ggpht.com/-ev_8mrSh0dQ/UlDwIY72b5I/AAAAAAAAEtk/qFpbBQMc-n4/image_thumb%25255B24%25255D.png?imgmax=800)   
  
7、点击Save As Entry  
然后点击Done  
![image](http://lh5.ggpht.com/-wncGO6qzozo/UlDwJxw1EXI/AAAAAAAAEt0/WxaSW7VSusI/image_thumb%25255B25%25255D.png?imgmax=800)   
  


#  【设置Triggers】

现在我们要做的是：  


> 每一次 save 密码库时  
我们要与储存在dropbox 上的 密码库 同步

0、找到KeeCloud Dropbox credentials 的 entry  
复制Username 和 password  
![image](http://lh6.ggpht.com/-7eWpWFEgZwY/UlDwK8U-VLI/AAAAAAAAEuE/IhGZcD0feQY/image_thumb%25255B40%25255D.png?imgmax=800)   
  
1、点击Tools>Triggres…  
![image](http://lh4.ggpht.com/-AEiJYwiOwbc/UlDwMLDXk0I/AAAAAAAAEuU/G2YzOD7dgME/image_thumb%25255B27%25255D.png?imgmax=800)   
  
2、点击Add  
![image](http://lh3.ggpht.com/-a1f1015rubE/UlDwNUdBpMI/AAAAAAAAEuk/5TfQfj-zAHw/image_thumb%25255B28%25255D.png?imgmax=800)   
  
3、在Name 为 triggers 取一个名字  
这里为 Sync  
然后点击Next  
![image](http://lh4.ggpht.com/-UfZ6WglveBE/UlDwOoCVZcI/AAAAAAAAEu0/zCVSlJYDvkU/image_thumb%25255B29%25255D.png?imgmax=800)   
  
4、点击Add  
![image](http://lh6.ggpht.com/-a7ugNArLOJ4/UlDwP-oaHMI/AAAAAAAAEvE/oEOdWVfI7R4/image_thumb%25255B30%25255D.png?imgmax=800)   
  
5、选择Saved database file  
点击OK  
![image](http://lh4.ggpht.com/-IYwCXTrtwCs/UlDwQyUQB_I/AAAAAAAAEvU/erYuUipRiF4/image_thumb%25255B31%25255D.png?imgmax=800)   
  
6、点击Next  
![image](http://lh5.ggpht.com/-5nRysDHNTks/UlDwSR03LtI/AAAAAAAAEvk/8GItZAUmz20/image_thumb%25255B32%25255D.png?imgmax=800)   
  
8、点击Next  
![image](http://lh5.ggpht.com/-b9D_JaCBuQE/UlDwTgsKIBI/AAAAAAAAEv0/58-iLR8zm7A/image_thumb%25255B48%25255D.png?imgmax=800)   
  
9、点击Add  
![image](http://lh3.ggpht.com/-GVrN-bg-500/UlDwU8cnYsI/AAAAAAAAEwE/q67d4ZUVZd4/image_thumb%25255B37%25255D.png?imgmax=800)   
  
10、选择Change trigger on/off state  
在 Trigger name 输入为trigger取的名字 （这里是Sync）  
New state 输入off  
点击OK  
![image](http://lh5.ggpht.com/-0qeVyP1HB4c/UlDwWFvM6bI/AAAAAAAAEwU/36iRF_gkPJI/image_thumb%25255B38%25255D.png?imgmax=800)   
  
11、再点击Add  
![image](http://lh4.ggpht.com/-wxhxhUJ-Ss4/UlDwXa--qmI/AAAAAAAAEwk/BM_gc-INS3E/image_thumb%25255B39%25255D.png?imgmax=800)   
  
12、选择Synchronize active database with a file/URL  
File/URL 填入 dropbox:///**{FolderName}/{DatabaseName}**  
其中的{FolderName}是之前在Dropbox 创建的 folder 名字，这里是“KeePassSync”  
{DatabaseName}就是密码库的名称，这里是“Testing.kdbx”  
  
IO Connection – User Name 填入之前复制下来的 username  
IO Connection – Password 也是填入之前复制的 password  
  
点击 OK  
![image](http://lh4.ggpht.com/-E_q2khQezsI/UlDwYbgO29I/AAAAAAAAEw0/TAoiSuUzr64/image_thumb%25255B42%25255D.png?imgmax=800)   
  
13、再点击Add  
![image](http://lh5.ggpht.com/-nl38ZieMcb0/UlDwZlFSJWI/AAAAAAAAExE/GWkr8L6_kdM/image_thumb%25255B43%25255D.png?imgmax=800)   
  
14、选择Change trigger on/off state  
Trigger Name 填入trigger name，这里是Sync  
New State 是选择 On  
点击OK  
![image](http://lh5.ggpht.com/-8wNE61d--mo/UlDwaumOstI/AAAAAAAAExU/Bbop_rMzkxg/image_thumb%25255B44%25255D.png?imgmax=800)   
  
15、点击Finish  
![image](http://lh5.ggpht.com/-1TSOc93UWrk/UlDwbxypBXI/AAAAAAAAExk/hFOo1K-1DO4/image_thumb%25255B45%25255D.png?imgmax=800)   
  
16、点击OK，返回主界面  
![image](http://lh3.ggpht.com/-TxKcXXm2wmQ/UlDwdMCe4pI/AAAAAAAAEx0/r6iPuNyqdIE/image_thumb%25255B46%25255D.png?imgmax=800)   
  
17、现在添加一个新的entry  
然后点击save （或 Ctrl + S）  
试试看 triggers 是否生效  
  
![image](http://lh3.ggpht.com/-EV6DVOFAJgQ/UlDweRmZMnI/AAAAAAAAEyE/GwE3Tn1K5Jw/image_thumb%25255B49%25255D.png?imgmax=800)   
![image](http://lh4.ggpht.com/-T0ejqKrxf1g/UlDwflERpII/AAAAAAAAEyU/oIWqALDLrmo/image_thumb%25255B50%25255D.png?imgmax=800)   
  
  


#  【后记】

为了让KeeCloud 生效，我几乎花了5个小时  
原因是：KeeCloud的作者没有写关于如何获取Dropbox的路径名（步骤12）！  
KeeCloud的Wiki写着：  


> 
>     dropbox://{full path to file within dropbox}
    
    
    于是我到dropbox上直接获取share link，然后直接放进去
    
    
    ![image](http://lh5.ggpht.com/-mf1OcfXx55U/UlDwgqdqTNI/AAAAAAAAEyk/G7lnq4hzf4w/image_thumb%25255B51%25255D.png?imgmax=800) 
    
    
    ![image](http://lh4.ggpht.com/-1FS4jlB4xbo/UlDwh-kEKCI/AAAAAAAAEy0/6PEm5Q1PmWk/image_thumb%25255B52%25255D.png?imgmax=800) 
    
    
    结果你知道的..
    
    
    一直出错！

  
  
![image](http://lh5.ggpht.com/-ks5qcVHXoCA/UlDwjOoE5EI/AAAAAAAAEzE/ijhTDmM5-gY/image_thumb%25255B53%25255D.png?imgmax=800)   
  
  
  
然后我非常非常不爽了..  
  
下载了KeeCloud的源码  
  
然后一点一点的调试..  
  
尽然@#$%的不给我编译成功..  
  
Delete file 的func 一直出错..  
  
直到我看到了DropNet（给.net 用的 Dropbox API）那超级简单的manual 后  
  
![image](http://lh3.ggpht.com/-afcsajtE3BQ/UlDwkf9tt0I/AAAAAAAAEzU/MreWhgLOvyI/image_thumb%25255B54%25255D.png?imgmax=800)   
  
  
  
你2#$%^ 坑爹啊！  
  
full path 啊！full path 啊！  
  
不是share link啊！

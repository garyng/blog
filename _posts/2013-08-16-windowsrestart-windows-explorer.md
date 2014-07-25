---
layout: post
title: '[教程][Windows] 如何正确Restart Windows Explorer？'
author: 'Gary Ng'
tags: ['Explorer','windows','Windows Explorer','教程']
---

有时候如果你的电脑的Windows Explorer不响应了，而且你又懒惰重启电脑的话，你可以试试看这些方法来重启你的Windows Explorer（正确的..）  
注：Windows 8 还未测试  


#  【Windows Vista 、Windows 7】

如果你只是想restart windows explorer 的话（就是你的Windows Explorer 并不是没有响应），而且你的Start Menu弹的出来：  
1、按下Start Button，在Start Menu 空白的地方Ctrl + Shift + Mouse Left Button，点击Exit Explorer  
![image](http://lh3.ggpht.com/-18s-YR90aZA/Ug2w0ra_S7I/AAAAAAAAD88/nwlHRSFT8BY/image_thumb.png?imgmax=800)  
  
2、然后按下Ctrl + Shift + Esc开启Windows Task Manager（比Ctrl + Alt + Del容易按多了），点击File > New Task (Run…)，输入explorer.exe，点击OK，就好了！  
  
![image](http://lh3.ggpht.com/-Vp5P6443dnI/Ug2w1wzylcI/AAAAAAAAD9M/q0VtR8iG64s/image_thumb%25255B1%25255D.png?imgmax=800)  
  
  
如果你的Windows Explorer已经crash了，连Start menu 都开不了，但是你还能呼叫你的救命武器——Windows Task Manager  
1、叫出Windows Task Manager > 点击Process 的选项卡 >  然后点击上方的View > 选择Select Columns  
![image](http://lh6.ggpht.com/-v5b4AWcl_FE/Ug2w3Dj4dcI/AAAAAAAAD9c/nyDQtM34ydw/image_thumb%25255B2%25255D.png?imgmax=800)  
  
2、确定 Command Line 已经勾选  
![image](http://lh4.ggpht.com/-lxlcpOfYXME/Ug2w4PxS_8I/AAAAAAAAD9s/34Nb2ZMx1TY/image_thumb%25255B3%25255D.png?imgmax=800)  
  
3、然后会到Process tab，找到Explorer.exe（可以看到我目前有两个Explorer.exe）  
![image](http://lh4.ggpht.com/-8gudTtHPYMA/Ug2w5M2iJTI/AAAAAAAAD98/qrgO2ZWKMAI/image_thumb%25255B4%25255D.png?imgmax=800)  
  
4、然后找到那个Command Line 只有c:\windows\explorer.exe的 （后面有/factory 或者有其他参数的process 不要选）  
然后右键 >  End Process  
![image](http://lh6.ggpht.com/-tsH8n3eMwZA/Ug2w6F9EvYI/AAAAAAAAD-M/7gMQIO_ZQnA/image_thumb%25255B5%25255D.png?imgmax=800)  
  
5、如果不成功的话，就把所有的explorer.exe 的process 都End process 吧  
6、然后重启explorer（跟着上面说过的）  
  


#  【Windows XP】

*用虚拟机跑到Windows XP 里面测试了*  
前提是你能开启start menu，不然你得用Windows Task Manager 一个一个把End 掉Explorer.exe 的 process了  
1、点击start menu > 点击 Turn Off Computer  
![image](http://lh6.ggpht.com/-tgYTSEkQKug/Ug2w7fEjQXI/AAAAAAAAD-c/AwIQ2O6Bl18/image_thumb%25255B6%25255D.png?imgmax=800)  
  
2、然后按下 Ctrl + Shift + Alt 左键点击Cancel  
![image](http://lh3.ggpht.com/-SkuFZsItff8/Ug2w85PKuLI/AAAAAAAAD-s/Hqs2sW2TTKQ/image_thumb%25255B7%25255D.png?imgmax=800)  
  
3、然后你会发现到你的桌面空空了，现在呼叫Windows Task Manager > 点击 File > New Task(Run…) 输入explorer.exe  
![image](http://lh6.ggpht.com/-Wym3IFINTp8/Ug2w9899EXI/AAAAAAAAD-8/XoElYhPZueQ/image_thumb%25255B8%25255D.png?imgmax=800)  
  
大功告成！

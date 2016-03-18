---
layout: post
title: '[原创][教程] Windows 下搭建Jekyll离线部落格环境'
tags:
  - 原创
  - 教程
  - Jekyll
  - Windows
description: 在Windows 下搭建起一个可以离线编辑和build Jekyll部落格的环境。
image: 'https://lh3.googleusercontent.com/-jJjINZwJOhk/VutuDy8pGFI/AAAAAAAAJTg/6uBjz5k_25Y6F99lD1pmQOn1aodxwluCwCHM/s1600/18-03-2016_104303.png'
author: GaryNg
---

# 需求
当然是一个Jekyll部落格！

# github-pages
写这个教程的目的是为了那些要把Jekyll搭建在GitHub上的读者们看的。而GitHub使用的Jekyll版本以及Dependency的版本在[这里能看得到。](https://pages.github.com/versions/)  
目前笔者写着这个教程时github-pages的版本以及dependency的版本如下：

[![image](https://lh3.googleusercontent.com/-VTQf_PaBKPE/VusA0R0JXrI/AAAAAAAAJSI/KhnMbyQ5PKEPaIKwo4iI6bvW30dgMK4QACHM/s800/17-03-2016_235542.png "image")](https://lh3.googleusercontent.com/-VTQf_PaBKPE/VusA0R0JXrI/AAAAAAAAJSI/KhnMbyQ5PKEPaIKwo4iI6bvW30dgMK4QACHM/s1600/17-03-2016_235542.png)

笔者的机子是跑着Windows 7 Ultimate x86 (Virtual Box 虚拟机上的)  

<!-- More -->

# Ruby
1、先到[RubyInstaller](http://rubyinstaller.org/downloads/)的官方网站下载适合的RubyInstaller  
这里下载的是Ruby2.2.4  
[![image](https://lh3.googleusercontent.com/-UppKUDFRs40/VusAz8hTA2I/AAAAAAAAJSE/tf5NBj37V3YGzwVUeEpQK9Q6fyK9ika5QCHM/s800/17-03-2016_235732.png "image")](https://lh3.googleusercontent.com/-UppKUDFRs40/VusAz8hTA2I/AAAAAAAAJSE/tf5NBj37V3YGzwVUeEpQK9Q6fyK9ika5QCHM/s1600/17-03-2016_235732.png)

2、然后就是安装啦！  
[![image](https://lh3.googleusercontent.com/-c4Wdbr7_dpg/VusA187x0XI/AAAAAAAAJSQ/UEXI0Jiqjek6CaFJedS9eFnecIjhBYigQCHM/s800/18-03-2016_020215.png "image")](https://lh3.googleusercontent.com/-c4Wdbr7_dpg/VusA187x0XI/AAAAAAAAJSQ/UEXI0Jiqjek6CaFJedS9eFnecIjhBYigQCHM/s1600/18-03-2016_020215.png)

[![image](https://lh3.googleusercontent.com/-Vw_BjAxBJbI/VusA7C265RI/AAAAAAAAJSg/1izI3LsM5sEiOny5yXvhZNVW9opZ4MvzQCHM/s800/18-03-2016_020425.png "image")](https://lh3.googleusercontent.com/-Vw_BjAxBJbI/VusA7C265RI/AAAAAAAAJSg/1izI3LsM5sEiOny5yXvhZNVW9opZ4MvzQCHM/s1600/18-03-2016_020425.png)

[![image](https://lh3.googleusercontent.com/-1A9YTE8s_po/VusA4RBW2OI/AAAAAAAAJSY/YP0gOQR8IhUEl5t85GB8nPvpCqvEv7m4QCHM/s800/18-03-2016_020444.png "image")](https://lh3.googleusercontent.com/-1A9YTE8s_po/VusA4RBW2OI/AAAAAAAAJSY/YP0gOQR8IhUEl5t85GB8nPvpCqvEv7m4QCHM/s1600/18-03-2016_020444.png)

[![image](https://lh3.googleusercontent.com/-k79XIFTCUG4/VusA9Wm9hEI/AAAAAAAAJSs/S6Xxyf4nDYAypYPdQF9JO6iYe15-jHEVwCHM/s800/18-03-2016_020456.png "image")](https://lh3.googleusercontent.com/-k79XIFTCUG4/VusA9Wm9hEI/AAAAAAAAJSs/S6Xxyf4nDYAypYPdQF9JO6iYe15-jHEVwCHM/s1600/18-03-2016_020456.png)

[![image](https://lh3.googleusercontent.com/-_rHxutRaSzI/VusA64kaKuI/AAAAAAAAJSc/pvPWONIgl0ctewJMmEz8GMbmKRgX4fhKgCHM/s800/18-03-2016_020624.png "image")](https://lh3.googleusercontent.com/-_rHxutRaSzI/VusA64kaKuI/AAAAAAAAJSc/pvPWONIgl0ctewJMmEz8GMbmKRgX4fhKgCHM/s1600/18-03-2016_020624.png)

# RubyDevKit
1、同样的， 到[RubyInstaller](http://rubyinstaller.org/downloads/)这里下载DevKit   
笔者下载Ruby2.2.4 x86的，所以DevKit就下载这个：`DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe`   
[![image](https://lh3.googleusercontent.com/-7mGvbc-ATBY/VusA1ytiVSI/AAAAAAAAJSU/lP57y7H24HIy-B_VimuIyhnw-nfyHVPgACHM/s800/18-03-2016_011516.png "image")](https://lh3.googleusercontent.com/-7mGvbc-ATBY/VusA1ytiVSI/AAAAAAAAJSU/lP57y7H24HIy-B_VimuIyhnw-nfyHVPgACHM/s1600/18-03-2016_011516.png)

2、然后就是安装了  
因为这是一个自解压包，所以我们就解压到C槽下的`RubyDevKit`的folder下  

[![image](https://lh3.googleusercontent.com/-bPSgHAoJiAI/VusA_rOAs-I/AAAAAAAAJS0/bRdThKE2LWwvuGgZXSF-LVBmIuaEX_SwACHM/s800/18-03-2016_020847.png "image")](https://lh3.googleusercontent.com/-bPSgHAoJiAI/VusA_rOAs-I/AAAAAAAAJS0/bRdThKE2LWwvuGgZXSF-LVBmIuaEX_SwACHM/s1600/18-03-2016_020847.png)

[![image](https://lh3.googleusercontent.com/-uHzrW-zyAcM/VusA7lnn0OI/AAAAAAAAJSk/VNTtbYavoH4AiyMkZjIBgJjZxBSJR8k3ACHM/s800/18-03-2016_020925.png "image")](https://lh3.googleusercontent.com/-uHzrW-zyAcM/VusA7lnn0OI/AAAAAAAAJSk/VNTtbYavoH4AiyMkZjIBgJjZxBSJR8k3ACHM/s1600/18-03-2016_020925.png)

[![image](https://lh3.googleusercontent.com/-Qz3fdyTY1g4/VusBBComepI/AAAAAAAAJS8/82jsYdLrbikzkWJmcFPtj3uRkFsOjwqfwCHM/s800/18-03-2016_021241.png "image")](https://lh3.googleusercontent.com/-Qz3fdyTY1g4/VusBBComepI/AAAAAAAAJS8/82jsYdLrbikzkWJmcFPtj3uRkFsOjwqfwCHM/s1600/18-03-2016_021241.png)

3、解压完成后，现在来设置DevKit  
打开cmd  
[![image](https://lh3.googleusercontent.com/-8T_S9TMVXos/VusA9Gt6TEI/AAAAAAAAJSo/8WbEdNB3sK08zB3-W2OrbUOP3u2EjMCywCHM/s800/18-03-2016_021303.png "image")](https://lh3.googleusercontent.com/-8T_S9TMVXos/VusA9Gt6TEI/AAAAAAAAJSo/8WbEdNB3sK08zB3-W2OrbUOP3u2EjMCywCHM/s1600/18-03-2016_021303.png)  
输入  

{% highlight bash %}
pushd C:\RubyDevKit
{% endhighlight %}


然后输入：  

{% highlight bash %}
ruby dk.rb init
{% endhighlight %}


[![image](https://lh3.googleusercontent.com/-UoC-t9PImV0/VusBCjhNnbI/AAAAAAAAJTA/Cz55KiGOp3oFEcyjjl1WUAwBEpMceuSsgCHM/s800/18-03-2016_021750.png "image")](https://lh3.googleusercontent.com/-UoC-t9PImV0/VusBCjhNnbI/AAAAAAAAJTA/Cz55KiGOp3oFEcyjjl1WUAwBEpMceuSsgCHM/s1600/18-03-2016_021750.png)

接下来是：  

{% highlight bash %}
ruby dk.rb install
{% endhighlight %}


[![image](https://lh3.googleusercontent.com/-lKfimr1B0mQ/VusA_FmQqYI/AAAAAAAAJSw/hKWnHWfqyAURqXOjjH3CnF-Ho7oNNUgcgCHM/s800/18-03-2016_021939.png "image")](https://lh3.googleusercontent.com/-lKfimr1B0mQ/VusA_FmQqYI/AAAAAAAAJSw/hKWnHWfqyAURqXOjjH3CnF-Ho7oNNUgcgCHM/s1600/18-03-2016_021939.png)

就好了！

# Gems : github-pages
现在就是安装github-pages的gem了  
1、同样在cmd，输入：  

{% highlight bash %}
gem install github-pages
{% endhighlight %}


[![image](https://lh3.googleusercontent.com/-THqXeeKKqBI/VusBBErCtVI/AAAAAAAAJS4/35FuT862tPE7APHKh-LgbK78LzRCKalrACHM/s800/18-03-2016_024245.png "image")](https://lh3.googleusercontent.com/-THqXeeKKqBI/VusBBErCtVI/AAAAAAAAJS4/35FuT862tPE7APHKh-LgbK78LzRCKalrACHM/s1600/18-03-2016_024245.png)

2、然后就是漫长的等待，以及等待，还有等待  

[![image](https://lh3.googleusercontent.com/-TbDB8UWqYM0/Vutt_Tbu0nI/AAAAAAAAJTU/SzqnILVJUiwItCcpLyptAGNclluy4k5LACHM/s800/18-03-2016_095955.png "image")](https://lh3.googleusercontent.com/-TbDB8UWqYM0/Vutt_Tbu0nI/AAAAAAAAJTU/SzqnILVJUiwItCcpLyptAGNclluy4k5LACHM/s1600/18-03-2016_095955.png)

[![image](https://lh3.googleusercontent.com/-hhaQYWHDTDM/Vutt9Q64iCI/AAAAAAAAJTQ/EZtYG305YcA4GD5q2TzPr4tACoA0ZY2cgCHM/s800/18-03-2016_101845.png "image")](https://lh3.googleusercontent.com/-hhaQYWHDTDM/Vutt9Q64iCI/AAAAAAAAJTQ/EZtYG305YcA4GD5q2TzPr4tACoA0ZY2cgCHM/s1600/18-03-2016_101845.png)

3、安装完后看看Jekyll 的版本号是啥（目前github-pages兼容的是3.0.3）
[![image](https://lh3.googleusercontent.com/-wpobtAhpdXY/VutuCgRZ-yI/AAAAAAAAJTc/A14kj6yaOtEHauMK2C6caOsCWEct6f4DACHM/s800/18-03-2016_101940.png "image")](https://lh3.googleusercontent.com/-wpobtAhpdXY/VutuCgRZ-yI/AAAAAAAAJTc/A14kj6yaOtEHauMK2C6caOsCWEct6f4DACHM/s1600/18-03-2016_101940.png)

# 测试
1、找个Jekyll site 来试试看吧！  
[![image](https://lh3.googleusercontent.com/-yrP3lo2dEoo/Vutt_jx9W6I/AAAAAAAAJTY/jGjI97c3RRkbiqj5jYbob_y-Iw7If86LwCHM/s800/18-03-2016_102506.png "image")](https://lh3.googleusercontent.com/-yrP3lo2dEoo/Vutt_jx9W6I/AAAAAAAAJTY/jGjI97c3RRkbiqj5jYbob_y-Iw7If86LwCHM/s1600/18-03-2016_102506.png)

[![image](https://lh3.googleusercontent.com/-CgY_PwheXWc/VutuEwKKyTI/AAAAAAAAJTk/L2NTpscoeaQVXGOLggJSyNcx-sydtOMVgCHM/s800/18-03-2016_102627.png "image")](https://lh3.googleusercontent.com/-CgY_PwheXWc/VutuEwKKyTI/AAAAAAAAJTk/L2NTpscoeaQVXGOLggJSyNcx-sydtOMVgCHM/s1600/18-03-2016_102627.png)

[![image](https://lh3.googleusercontent.com/-jJjINZwJOhk/VutuDy8pGFI/AAAAAAAAJTg/6uBjz5k_25Y6F99lD1pmQOn1aodxwluCwCHM/s800/18-03-2016_104303.png "image")](https://lh3.googleusercontent.com/-jJjINZwJOhk/VutuDy8pGFI/AAAAAAAAJTg/6uBjz5k_25Y6F99lD1pmQOn1aodxwluCwCHM/s1600/18-03-2016_104303.png)

完成啦！

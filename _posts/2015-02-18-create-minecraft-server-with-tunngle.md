---
layout: post
title: '[教程][Minecraft] 以Tunggle 创建Minecraft Server'
tags: ['原创','教程','Minecraft']
author: 'Gary Ng'
description: '图文教程详解Tunngle(Hamachi代替品)来创建Minecraft Server'
---

## 工具

1、 [Minecraft Server](https://minecraft.net/download)

版本：1.8.1

下载地址：[minecraft_server.1.8.1.exe](https://s3.amazonaws.com/Minecraft.Download/versions/1.8.1/minecraft_server.1.8.1.exe)

[![image](https://lh3.googleusercontent.com/-pIk7aIJQScw/VORhnoQIr_I/AAAAAAAAIBs/uXUXGJapOaA/s800/18-02-2015_150842.png "image")](https://lh3.googleusercontent.com/-pIk7aIJQScw/VORhnoQIr_I/AAAAAAAAIBs/uXUXGJapOaA/s1600/18-02-2015_150842.png)

2、 [Mineshafter](http://mineshafter.info/downloads)

下载地址：[Mineshafter-launcher.jar](http://mineshafter.info/s/Mineshafter-launcher.jar)

[![image](https://lh5.googleusercontent.com/-BvxvCB6bBOs/VORhrLtUK_I/AAAAAAAAIB8/nfSHvhZ4cok/s800/18-02-2015_151421.png "image")](https://lh5.googleusercontent.com/-BvxvCB6bBOs/VORhrLtUK_I/AAAAAAAAIB8/nfSHvhZ4cok/s1600/18-02-2015_151421.png)

3、 [Java](http://www.java.com/en/download/manual.jsp)

<span style="color:red">还未安装/未更新的请下载安装</span>

下载地址（选择对应操作系统版本的Java下载）：[http://www.java.com/en/download/manual.jsp](http://www.java.com/en/download/manual.jsp)

4、 JarFix

注：修复.jar的文件关联，直接点击即可运行，而不是解压缩。

下载地址：[http://www.softpedia.com/get/Others/Miscellaneous/Jarfix.shtml](http://www.softpedia.com/get/Others/Miscellaneous/Jarfix.shtml)

5、 [Tunngle](http://www.tunngle.net/en/download)

版本：v5.1

下载地址：[http://downloads.tunngle.us/software/Tunngle_Setup_v5.1.exe](http://downloads.tunngle.us/software/Tunngle_Setup_v5.1.exe)

[![image](https://lh3.googleusercontent.com/-fAFySFzgdLg/VORhuQsF9HI/AAAAAAAAICI/m4-qCMyN-r8/s800/18-02-2015_152800.png "image")](https://lh3.googleusercontent.com/-fAFySFzgdLg/VORhuQsF9HI/AAAAAAAAICI/m4-qCMyN-r8/s1600/18-02-2015_152800.png)
<!-- More -->  
## 准备步骤
### Tunngle 帐号
1、 先到Tunngle网站注册一个新的账户：[http://www.tunngle.net/en/user/register](http://www.tunngle.net/en/user/register)

[![image](https://lh4.googleusercontent.com/-fjWDcb1b4wE/VORhqad6DNI/AAAAAAAAIB0/ocePZXGLwWo/s800/18-02-2015_152153.png "image")](https://lh4.googleusercontent.com/-fjWDcb1b4wE/VORhqad6DNI/AAAAAAAAIB0/ocePZXGLwWo/s1600/18-02-2015_152153.png)

2、 然后到邮件箱内activate Tunggle 账户

[![image](https://lh5.googleusercontent.com/-ROwEgxnDUeQ/VORhwT9D9BI/AAAAAAAAICc/qkDoPQJ1hBE/s800/18-02-2015_152853.png "image")](https://lh5.googleusercontent.com/-ROwEgxnDUeQ/VORhwT9D9BI/AAAAAAAAICc/qkDoPQJ1hBE/s1600/18-02-2015_152853.png)

### 安装Tunngle
1、 以**管理员**身份运行下载回来的Tunngle安装文件

[![image](https://lh4.googleusercontent.com/-FkM_DoKRFWU/VORhuWaGpUI/AAAAAAAAICM/ZjBkgAuWTzo/s800/18-02-2015_152618.png "image")](https://lh4.googleusercontent.com/-FkM_DoKRFWU/VORhuWaGpUI/AAAAAAAAICM/ZjBkgAuWTzo/s1600/18-02-2015_152618.png)

2、 然后跟着指示安装即可

[![image](https://lh6.googleusercontent.com/-UWbMn6B-nus/VORhwPDhUUI/AAAAAAAAICY/ARIzbZT-Sac/s800/18-02-2015_152924.png "image")](https://lh6.googleusercontent.com/-UWbMn6B-nus/VORhwPDhUUI/AAAAAAAAICY/ARIzbZT-Sac/s1600/18-02-2015_152924.png)

3、 安装后记得重启电脑

### 设置Minecraft server
1、 点击运行下载回来的minecraft server，程序会自动退出，留下两个文件和一个文件夹：

[![image](https://lh6.googleusercontent.com/-yE3Nl0-CvJI/VORhxEgVThI/AAAAAAAAICo/AgFS8N4V2z0/s800/18-02-2015_153112.png "image")](https://lh6.googleusercontent.com/-yE3Nl0-CvJI/VORhxEgVThI/AAAAAAAAICo/AgFS8N4V2z0/s1600/18-02-2015_153112.png)

2、 打开`eula.txt`

将`eula=false`该为`eula=true`

**然后Ctrl+S 保存文件**

[![image](https://lh5.googleusercontent.com/-ralxpalqDDg/VORhxNLIT2I/AAAAAAAAICs/wkZSUcm9myI/s800/18-02-2015_153149.png "image")](https://lh5.googleusercontent.com/-ralxpalqDDg/VORhxNLIT2I/AAAAAAAAICs/wkZSUcm9myI/s1600/18-02-2015_153149.png)

3、 再次打开minecraft server，然后可以关闭

[![image](https://lh6.googleusercontent.com/--yG21ls0W6s/VORhzBM9BII/AAAAAAAAIC0/DTS0QNOvAVI/s800/18-02-2015_153504.png "image")](https://lh6.googleusercontent.com/--yG21ls0W6s/VORhzBM9BII/AAAAAAAAIC0/DTS0QNOvAVI/s1600/18-02-2015_153504.png)

4、 右键点击`server.properties`，选择Edit（或可以拖入Notepad之中打开）

[![image](https://lh4.googleusercontent.com/-DAjICe7EjqY/VORhztR1s-I/AAAAAAAAIC8/V_LE8OXYhYs/s800/18-02-2015_153658.png "image")](https://lh4.googleusercontent.com/-DAjICe7EjqY/VORhztR1s-I/AAAAAAAAIC8/V_LE8OXYhYs/s1600/18-02-2015_153658.png)

将`online_mode=true`改为`online_mode=false`

[![image](https://lh3.googleusercontent.com/-JZPPlw0QATU/VORh1kScHAI/AAAAAAAAIDI/Swb1XHsM9dk/s800/18-02-2015_153801.png "image")](https://lh3.googleusercontent.com/-JZPPlw0QATU/VORh1kScHAI/AAAAAAAAIDI/Swb1XHsM9dk/s1600/18-02-2015_153801.png)

你也可以在这里更换server 的名称：

[![image](https://lh6.googleusercontent.com/-TodNVm5FirM/VORh1iwjFmI/AAAAAAAAIDM/jbvwpJzMiQA/s800/18-02-2015_153842.png "image")](https://lh6.googleusercontent.com/-TodNVm5FirM/VORh1iwjFmI/AAAAAAAAIDM/jbvwpJzMiQA/s1600/18-02-2015_153842.png)

**然后Ctrl+S 保存文件**

### Tunngle 创建Private Network
1、 打开安装好的Tunngle

[![image](https://lh3.googleusercontent.com/-dbF__aQueZc/VORkVNka71I/AAAAAAAAIEw/BP1iBk36CSY/s800/18-02-2015_154351.png "image")](https://lh3.googleusercontent.com/-dbF__aQueZc/VORkVNka71I/AAAAAAAAIEw/BP1iBk36CSY/s1600/18-02-2015_154351.png)

2、 在下方填入之前申请的帐号和密码

点击Login

<span style="color:red">若Windows 跳出Firewall的对话框，记得选择Home 和 Public</span>

[![image](https://lh4.googleusercontent.com/-4AvB4bl6IoY/VORh3wqou8I/AAAAAAAAIDU/PT1Ml6Cn334/s800/18-02-2015_154527.png "image")](https://lh4.googleusercontent.com/-4AvB4bl6IoY/VORh3wqou8I/AAAAAAAAIDU/PT1Ml6Cn334/s1600/18-02-2015_154527.png)

3.点击Private Networks > Create

[![image](https://lh6.googleusercontent.com/-KsdMXKI3V_A/VORkE3dK2WI/AAAAAAAAIEA/AqdL4od9Hoo/s800/18-02-2015_154843.png "image")](https://lh6.googleusercontent.com/-KsdMXKI3V_A/VORkE3dK2WI/AAAAAAAAIEA/AqdL4od9Hoo/s1600/18-02-2015_154843.png)

4、 然后创建一个新的Private Network

Network Type 保留为Basic

Network Name 取个名字

Network Password 就放个密码吧

Network Range 可以选择10.x.x.\* (Server Emu)

然后点击Create

[![image](https://lh6.googleusercontent.com/-UsSORdTFFFM/VORh5mIjvCI/AAAAAAAAIDc/5rRk8UFGU-A/s800/18-02-2015_155358.png "image")](https://lh6.googleusercontent.com/-UsSORdTFFFM/VORh5mIjvCI/AAAAAAAAIDc/5rRk8UFGU-A/s1600/18-02-2015_155358.png)

5、 第一次使用Private Network 需要 Activate

点击Yes

[![image](https://lh6.googleusercontent.com/-2xGTmntH_dg/VORkX7f6wII/AAAAAAAAIE4/EifVn399wng/s800/18-02-2015_155619.png "image")](https://lh6.googleusercontent.com/-2xGTmntH_dg/VORkX7f6wII/AAAAAAAAIE4/EifVn399wng/s1600/18-02-2015_155619.png)

6、 填入验证码，点击Activate

[![image](https://lh4.googleusercontent.com/-AMoLGRm0-Ik/VORh9VMKKHI/AAAAAAAAIDk/cjdyJsfm_4g/s800/18-02-2015_155830.png "image")](https://lh4.googleusercontent.com/-AMoLGRm0-Ik/VORh9VMKKHI/AAAAAAAAIDk/cjdyJsfm_4g/s1600/18-02-2015_155830.png)

[![image](https://lh5.googleusercontent.com/-L9QSIrKna2o/VORkHq62KfI/AAAAAAAAIEI/BE4sdYb5p_4/s800/18-02-2015_155934.png "image")](https://lh5.googleusercontent.com/-L9QSIrKna2o/VORkHq62KfI/AAAAAAAAIEI/BE4sdYb5p_4/s1600/18-02-2015_155934.png)

7、 回到界面，点击OK

[![image](https://lh3.googleusercontent.com/-HE9FzTr0Q3o/VORh-2_Dc1I/AAAAAAAAIDs/4VDkocPYxxU/s800/18-02-2015_160008.png "image")](https://lh3.googleusercontent.com/-HE9FzTr0Q3o/VORh-2_Dc1I/AAAAAAAAIDs/4VDkocPYxxU/s1600/18-02-2015_160008.png)

8、 点击Yes，退出Tunngle

[![image](https://lh6.googleusercontent.com/-gsmr4ZcTV0Q/VORlSiEHB8I/AAAAAAAAIFE/ym2KeSgJdUU/s800/18-02-2015_160026.png "image")](https://lh6.googleusercontent.com/-gsmr4ZcTV0Q/VORlSiEHB8I/AAAAAAAAIFE/ym2KeSgJdUU/s1600/18-02-2015_160026.png)

9、 重新启动Tunngle

10、 登录Tunngle

11、 重复创建Private Network 的步骤，这一次不必Activate 了

[![image](https://lh4.googleusercontent.com/-_bE-CXVw_Y0/VORjW-AUR8I/AAAAAAAAID4/19jvuxWJXJw/s800/18-02-2015_160628.png "image")](https://lh4.googleusercontent.com/-_bE-CXVw_Y0/VORjW-AUR8I/AAAAAAAAID4/19jvuxWJXJw/s1600/18-02-2015_160628.png)

12、 创建成功

[![image](https://lh4.googleusercontent.com/-cTYpYgn33P8/VORkI0zYIGI/AAAAAAAAIEQ/i2l5lXPiIVk/s800/18-02-2015_160732.png "image")](https://lh4.googleusercontent.com/-cTYpYgn33P8/VORkI0zYIGI/AAAAAAAAIEQ/i2l5lXPiIVk/s1600/18-02-2015_160732.png)


### 继续设置Minecraft Server
1、 在Tunngle 的界面左下角有一个`Virtual IP`栏目：

这个便是Server IP

[![image](https://lh5.googleusercontent.com/-f_H-5nFn5T8/VORlan9OOsI/AAAAAAAAIFU/Co1n_bDw5SU/s800/18-02-2015_160938.png "image")](https://lh5.googleusercontent.com/-f_H-5nFn5T8/VORlan9OOsI/AAAAAAAAIFU/Co1n_bDw5SU/s1600/18-02-2015_160938.png)

2、 打开`server.properties`

填入server IP

[![image](https://lh3.googleusercontent.com/-FFsi2NviY4s/VORkMqF8iCI/AAAAAAAAIEY/3DD3a-oTd-4/s800/18-02-2015_161117.png "image")](https://lh3.googleusercontent.com/-FFsi2NviY4s/VORkMqF8iCI/AAAAAAAAIEY/3DD3a-oTd-4/s1600/18-02-2015_161117.png)

**Ctrl + S 保存文件**

3、 启动Minecraft Server

[![image](https://lh3.googleusercontent.com/-MFoQjDmHwks/VORlYxxHA-I/AAAAAAAAIFM/KwPjWqUNIbo/s800/18-02-2015_161248.png "image")](https://lh3.googleusercontent.com/-MFoQjDmHwks/VORlYxxHA-I/AAAAAAAAIFM/KwPjWqUNIbo/s1600/18-02-2015_161248.png)


### 让朋友链接到Minecraft Server
1、 首先也必须安装Tunngle 和 登录Tunngle 帐号

2、点击Private Network > Join

[![image](https://lh4.googleusercontent.com/-7uWGrKWPs2g/VORkTOC_mgI/AAAAAAAAIEg/oNoX1OoEAds/s800/18-02-2015_170152.png "image")](https://lh4.googleusercontent.com/-7uWGrKWPs2g/VORkTOC_mgI/AAAAAAAAIEg/oNoX1OoEAds/s1600/18-02-2015_170152.png)

3、输入Network Name 和 Network Password 即可

[![image](https://lh3.googleusercontent.com/-TmvEgwUrFmg/VORlg1wjCrI/AAAAAAAAIFc/00GjADWC1U0/s800/18-02-2015_170234.png "image")](https://lh3.googleusercontent.com/-TmvEgwUrFmg/VORlg1wjCrI/AAAAAAAAIFc/00GjADWC1U0/s1600/18-02-2015_170234.png)

[![image](https://lh4.googleusercontent.com/-Z5Ta7iZl15c/VORkUxKUcAI/AAAAAAAAIEo/WBcfbs0clb8/s800/18-02-2015_170354.png "image")](https://lh4.googleusercontent.com/-Z5Ta7iZl15c/VORkUxKUcAI/AAAAAAAAIEo/WBcfbs0clb8/s1600/18-02-2015_170354.png)

### Minecraft Multiplayer
1、打开Mineshafter

随便输入Username 和 Password

[![image](https://lh4.googleusercontent.com/-0NfVHhnDNzk/VORmWPZbQwI/AAAAAAAAIFk/qg-5v8KW6q8/s800/18-02-2015_170533.png "image")](https://lh4.googleusercontent.com/-0NfVHhnDNzk/VORmWPZbQwI/AAAAAAAAIFk/qg-5v8KW6q8/s1600/18-02-2015_170533.png)

2、点击Play

[![image](https://lh3.googleusercontent.com/-91qmOnLDh4U/VORmbE92QhI/AAAAAAAAIFs/rDAHYS_7pgI/s800/18-02-2015_170606.png "image")](https://lh3.googleusercontent.com/-91qmOnLDh4U/VORmbE92QhI/AAAAAAAAIFs/rDAHYS_7pgI/s1600/18-02-2015_170606.png)

3、等待下载完毕

[![image](https://lh3.googleusercontent.com/-rhPl98DRQYc/VORmcmzUmcI/AAAAAAAAIF0/sxPlqd09Uq0/s800/18-02-2015_170628.png "image")](https://lh3.googleusercontent.com/-rhPl98DRQYc/VORmcmzUmcI/AAAAAAAAIF0/sxPlqd09Uq0/s1600/18-02-2015_170628.png)

4、点击Multiplayer

[![image](https://lh6.googleusercontent.com/-JPQx9Dh9-aw/VORmnNj5RiI/AAAAAAAAIGM/Vl9IyhxdlhM/s800/18-02-2015_170712.png "image")](https://lh6.googleusercontent.com/-JPQx9Dh9-aw/VORmnNj5RiI/AAAAAAAAIGM/Vl9IyhxdlhM/s1600/18-02-2015_170712.png)

5、点击Add Server
输入 **Server IP** （不是自己的Virtual IP）
点击Done 即可

[![image](https://lh3.googleusercontent.com/-vo5Xr0U4S-I/VORmg5tv3VI/AAAAAAAAIF8/TQ1h45jg_58/s800/18-02-2015_170736.png "image")](https://lh3.googleusercontent.com/-vo5Xr0U4S-I/VORmg5tv3VI/AAAAAAAAIF8/TQ1h45jg_58/s1600/18-02-2015_170736.png)

[![image](https://lh5.googleusercontent.com/-SXGYNfXe7ac/VORmyG0olqI/AAAAAAAAIGY/Np3-GbgdD2I/s800/18-02-2015_173946.png "image")](https://lh5.googleusercontent.com/-SXGYNfXe7ac/VORmyG0olqI/AAAAAAAAIGY/Np3-GbgdD2I/s1600/18-02-2015_173946.png)

6、Join Server 即可

[![image](https://lh6.googleusercontent.com/-bW0ZI1lA5pk/VORmk1Rq5pI/AAAAAAAAIGE/hasP2zs2OC0/s800/18-02-2015_174029.png "image")](https://lh6.googleusercontent.com/-bW0ZI1lA5pk/VORmk1Rq5pI/AAAAAAAAIGE/hasP2zs2OC0/s1600/18-02-2015_174029.png)

## Sistemfehler. Code 126 ..
如果一直出现错误126，请到这里：
[[Fix] Can't Download installer_package.zip - Systemfehler 126](http://www.tunngle.net/community/topic/71951-fix-cant-download-installer-packagezip-systemfehler-126/)

> 下载这个文件：[http://specials.tunngle.tv/minstall/sf126_fix.zip](http://specials.tunngle.tv/minstall/sf126_fix.zip)
> 解压后放到Tunngle 的安装目录下即可解决
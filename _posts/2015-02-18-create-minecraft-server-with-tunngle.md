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

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_150842.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_150842.png)

2、 [Mineshafter](http://mineshafter.info/downloads)

下载地址：[Mineshafter-launcher.jar](http://mineshafter.info/s/Mineshafter-launcher.jar)

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_151421.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_151421.png)

3、 [Java](http://www.java.com/en/download/manual.jsp)

<span style="color:red">还未安装/未更新的请下载安装</span>

下载地址（选择对应操作系统版本的Java下载）：[http://www.java.com/en/download/manual.jsp](http://www.java.com/en/download/manual.jsp)

4、 JarFix

注：修复.jar的文件关联，直接点击即可运行，而不是解压缩。

下载地址：[http://www.softpedia.com/get/Others/Miscellaneous/Jarfix.shtml](http://www.softpedia.com/get/Others/Miscellaneous/Jarfix.shtml)

5、 [Tunngle](http://www.tunngle.net/en/download)

版本：v5.1

下载地址：[http://downloads.tunngle.us/software/Tunngle_Setup_v5.1.exe](http://downloads.tunngle.us/software/Tunngle_Setup_v5.1.exe)

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152800.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152800.png)

## 准备步骤
### Tunngle 帐号
1、 先到Tunngle网站注册一个新的账户：[http://www.tunngle.net/en/user/register](http://www.tunngle.net/en/user/register)

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152153.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152153.png)

2、 然后到邮件箱内activate Tunggle 账户

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152853.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152853.png)

### 安装Tunngle
1、 以**管理员**身份运行下载回来的Tunngle安装文件

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152618.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152618.png)

2、 然后跟着指示安装即可

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152924.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_152924.png)

3、 安装后记得重启电脑

### 设置Minecraft server
1、 点击运行下载回来的minecraft server，程序会自动退出，留下两个文件和一个文件夹：

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153112.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153112.png)

2、 打开`eula.txt`

将`eula=false`该为`eula=true`

**然后Ctrl+S 保存文件**

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153149.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153149.png)

3、 再次打开minecraft server，然后可以关闭

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153504.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153504.png)

4、 右键点击`server.properties`，选择Edit（或可以拖入Notepad之中打开）

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153658.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153658.png)

将`online_mode=true`改为`online_mode=false`

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153801.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153801.png)

你也可以在这里更换server 的名称：

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153842.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_153842.png)

**然后Ctrl+S 保存文件**

### Tunngle 创建Private Network
1、 打开安装好的Tunngle

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_154351.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_154351.png)

2、 在下方填入之前申请的帐号和密码

点击Login

<span style="color:red">若Windows 跳出Firewall的对话框，记得选择Home 和 Public</span>

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_154527.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_154527.png)

3.点击Private Networks > Create

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_154843.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_154843.png)

4、 然后创建一个新的Private Network

Network Type 保留为Basic

Network Name 取个名字

Network Password 就放个密码吧

Network Range 可以选择10.x.x.\* (Server Emu)

然后点击Create

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155358.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155358.png)

5、 第一次使用Private Network 需要 Activate

点击Yes

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155619.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155619.png)

6、 填入验证码，点击Activate

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155830.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155830.png)

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155934.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_155934.png)

7、 回到界面，点击OK

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160008.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160008.png)

8、 点击Yes，退出Tunngle

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160026.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160026.png)

9、 重新启动Tunngle

10、 登录Tunngle

11、 重复创建Private Network 的步骤，这一次不必Activate 了

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160628.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160628.png)

12、 创建成功

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160732.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160732.png)


### 继续设置Minecraft Server
1、 在Tunngle 的界面左下角有一个`Virtual IP`栏目：

这个便是Server IP

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160938.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_160938.png)

2、 打开`server.properties`

填入server IP

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_161117.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_161117.png)

**Ctrl + S 保存文件**

3、 启动Minecraft Server

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_161248.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_161248.png)


### 让朋友链接到Minecraft Server
1、 首先也必须安装Tunngle 和 登录Tunngle 帐号

2、点击Private Network > Join

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170152.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170152.png)

3、输入Network Name 和 Network Password 即可

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170234.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170234.png)

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170354.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170354.png)

### Minecraft Multiplayer
1、打开Mineshafter

随便输入Username 和 Password

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170533.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170533.png)

2、点击Play

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170606.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170606.png)

3、等待下载完毕

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170628.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170628.png)

4、点击Multiplayer

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170712.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170712.png)

5、点击Add Server
输入 **Server IP** （不是自己的Virtual IP）
点击Done 即可

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170736.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_170736.png)

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_173946.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_173946.png)

6. Join Server 即可

[![image](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_174029.png "image")](D:\Users\GaryNg-Win7\Desktop\gPicasaUploader\gPicasaUploader\bin\Debug\tmp\18-02-2015_174029.png)

## Sistemfehler. Code 126 ..
如果一直出现错误126，请到这里：
[[Fix] Can't Download installer_package.zip - Systemfehler 126](http://www.tunngle.net/community/topic/71951-fix-cant-download-installer-packagezip-systemfehler-126/)

> 下载这个文件：[http://specials.tunngle.tv/minstall/sf126_fix.zip](http://specials.tunngle.tv/minstall/sf126_fix.zip)
> 解压后放到Tunngle 的安装目录下即可解决
---
layout: post
title: '[原创][教程] GitHub SSH 生成 + ssh-agent 自动登录 + SublimeGit 支持'
tags: ['原创','教程','Git','Sublime Text']
author: 'Gary Ng'
description: 'GitHub SSH 以及 SublimeGit 的详细设置教程'
---

这是纯属拿来存档的

也给那些用着GitHub的人看看

SublimeGit 是一个合成Sublime 和 Git的Sublime Text Plugin

## 工具

### Git

下载地址：[Git for Windows](http://git-scm.com/download/win)

### SublimeGit

下载地址：[SublimeGit](https://sublimegit.net/)

### PuTTY

下载地址：[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)

**请选择Windows Installer**

<hr/>
<!-- More -->  
## SSH Keys

1. 打开Git Bash，输入：
{% highlight bash %}
ssh-keygen -t rsa -C "<你的EMAIL>"
{% endhighlight %}

[![image](https://lh4.googleusercontent.com/-F0cYXpGh6fg/VImxS5IrmuI/AAAAAAAAHnk/HiM-bGtceRc/s800/11-12-2014_225918.png "image")](https://lh4.googleusercontent.com/-F0cYXpGh6fg/VImxS5IrmuI/AAAAAAAAHno/VtDlwvH3IIk/s1600/11-12-2014_225918.png)
2. 按下Enter

[![image](https://lh5.googleusercontent.com/-F4cs9rsbfG8/VImxaqUNyWI/AAAAAAAAHnw/Vom6bu3Iduk/s800/11-12-2014_225946.png "image")](https://lh5.googleusercontent.com/-F4cs9rsbfG8/VImxaqUNyWI/AAAAAAAAHnw/Vom6bu3Iduk/s1600/11-12-2014_225946.png)
3. 输入密码

[![image](https://lh3.googleusercontent.com/-WOWBjS4tAxY/VI2U_XBgY8I/AAAAAAAAHsI/gewvFxrBY5A/s800/14-12-2014_214732.png "image")](https://lh3.googleusercontent.com/-WOWBjS4tAxY/VI2U_XBgY8I/AAAAAAAAHsI/gewvFxrBY5A/s1600/14-12-2014_214732.png)
4. 重复输入密码：

[![image](https://lh6.googleusercontent.com/-7c_vCzHik2I/VI2VnMe4CQI/AAAAAAAAHsQ/1YgXkzbK5To/s800/14-12-2014_215011.png "image")](https://lh6.googleusercontent.com/-7c_vCzHik2I/VI2VnMe4CQI/AAAAAAAAHsQ/1YgXkzbK5To/s1600/14-12-2014_215011.png)
5. 然后就好了：

[![image](https://lh6.googleusercontent.com/-rIqmhTvmgYs/VI2WECQ4M0I/AAAAAAAAHsY/kh9BaSTCsYc/s800/14-12-2014_215205.png "image")](https://lh6.googleusercontent.com/-rIqmhTvmgYs/VI2WECQ4M0I/AAAAAAAAHsY/kh9BaSTCsYc/s1600/14-12-2014_215205.png)

## GitHub 添加 SSH Keys

1. 输入
{% highlight bash %}
clip < clip ~/.ssh/id_rsa.pub
{% endhighlight %}
将ssh keys 复制到剪贴板

[![image](https://lh4.googleusercontent.com/-5aKzXpyq7y8/VI2YRL32T2I/AAAAAAAAHsk/zXTdXLyjrXk/s800/14-12-2014_220130.png "image")](https://lh4.googleusercontent.com/-5aKzXpyq7y8/VI2YRL32T2I/AAAAAAAAHsk/zXTdXLyjrXk/s1600/14-12-2014_220130.png)
2.登录GitHub

进入Settings：

[![image](https://lh5.googleusercontent.com/-530yZtf-7_0/VI2Ym5sYwEI/AAAAAAAAHss/AF06nhr_gRw/s800/14-12-2014_220257.png "image")](https://lh5.googleusercontent.com/-530yZtf-7_0/VI2Ym5sYwEI/AAAAAAAAHss/AF06nhr_gRw/s1600/14-12-2014_220257.png)
3.点击SSH Keys

然后点击Add SSH Keys

[![image](https://lh5.googleusercontent.com/-rQ5kotGaFLM/VI2ZCXWqp6I/AAAAAAAAHs0/RH5CfmhlXMo/s800/14-12-2014_220443.png "image")](https://lh5.googleusercontent.com/-rQ5kotGaFLM/VI2ZCXWqp6I/AAAAAAAAHs0/RH5CfmhlXMo/s1600/14-12-2014_220443.png)
4. 输入Title

然后Paste SSH Key

点击Add Key

[![image](https://lh4.googleusercontent.com/-PuBSQMTDVGM/VI2bNYkhUtI/AAAAAAAAHtA/3_5lYBOochs/s800/14-12-2014_221403.png "image")](https://lh4.googleusercontent.com/-PuBSQMTDVGM/VI2bNYkhUtI/AAAAAAAAHtA/3_5lYBOochs/s1600/14-12-2014_221403.png)
5. 输入密码：

[![image](https://lh3.googleusercontent.com/-qgQifal6CzA/VI2be4bqUDI/AAAAAAAAHtI/qCQBQ_x02mM/s800/14-12-2014_221514.png "image")](https://lh3.googleusercontent.com/-qgQifal6CzA/VI2be4bqUDI/AAAAAAAAHtI/qCQBQ_x02mM/s1600/14-12-2014_221514.png)


## 测试链接

1. 输入
{% highlight bash %}
ssh -T git@github.com
{% endhighlight %}

[![image](https://lh5.googleusercontent.com/-JWaH9cuMMKM/VI2cG80ITNI/AAAAAAAAHtQ/LYnX-nepA1c/s800/14-12-2014_221754.png "image")](https://lh5.googleusercontent.com/-JWaH9cuMMKM/VI2cG80ITNI/AAAAAAAAHtQ/LYnX-nepA1c/s1600/14-12-2014_221754.png)
2. 输入yes

按下Enter

[![image](https://lh5.googleusercontent.com/-yqx0j14RPeQ/VI2dMWnak-I/AAAAAAAAHtc/1QpQz946VUc/s800/14-12-2014_222231.png "image")](https://lh5.googleusercontent.com/-yqx0j14RPeQ/VI2dMWnak-I/AAAAAAAAHtc/1QpQz946VUc/s1600/14-12-2014_222231.png)
3. 然后输入密码

[![image](https://lh4.googleusercontent.com/-ModmvEsyjGY/VI2eTKJ2nNI/AAAAAAAAHtk/FVmtajVjgHg/s800/14-12-2014_222715.png "image")](https://lh4.googleusercontent.com/-ModmvEsyjGY/VI2eTKJ2nNI/AAAAAAAAHtk/FVmtajVjgHg/s1600/14-12-2014_222715.png)
4.当你看到这个讯息代表你成功了

[![image](https://lh5.googleusercontent.com/-K1LiKbkNkIk/VI2ehvbVeZI/AAAAAAAAHts/EQpUET53EZc/s800/14-12-2014_222813.png "image")](https://lh5.googleusercontent.com/-K1LiKbkNkIk/VI2ehvbVeZI/AAAAAAAAHts/EQpUET53EZc/s1600/14-12-2014_222813.png)

## 设置ssh-agent

1. 还是一样打开Git Bash

输入
{% highlight bash %}
.touch profile
{% endhighlight %}

[![image](https://lh5.googleusercontent.com/-yiUSqu-IW_k/VI2hh_lMh3I/AAAAAAAAHt4/YIV5ltxUOP0/s800/14-12-2014_224059.png "image")](https://lh5.googleusercontent.com/-yiUSqu-IW_k/VI2hh_lMh3I/AAAAAAAAHt4/YIV5ltxUOP0/s1600/14-12-2014_224059.png)
2. 输入

{% highlight bash %}
notepad .profile
{% endhighlight %}

以notepad 打开.profile 文件

[![image](https://lh6.googleusercontent.com/-4rPwIe4Mly4/VI2iiHgkDZI/AAAAAAAAHuA/SD50wJ-xzxc/s800/14-12-2014_224518.png "image")](https://lh6.googleusercontent.com/-4rPwIe4Mly4/VI2iiHgkDZI/AAAAAAAAHuA/SD50wJ-xzxc/s1600/14-12-2014_224518.png)
3. 贴入下面的代码：
 
然后保存

[![image](https://lh5.googleusercontent.com/-eH-gVoV31sQ/VI2kP6lEbnI/AAAAAAAAHuM/51NZDeRuMB4/s800/14-12-2014_225237.png "image")](https://lh5.googleusercontent.com/-eH-gVoV31sQ/VI2kP6lEbnI/AAAAAAAAHuM/51NZDeRuMB4/s1600/14-12-2014_225237.png)
{% highlight bash %}
# Note: ~/.ssh/environment should not be used, as it
#       already has a different purpose in SSH.

env=~/.ssh/agent.env

# Note: Don't bother checking SSH_AGENT_PID. It's not used
#       by SSH itself, and it might even be incorrect
#       (for example, when using agent-forwarding over SSH).

agent_is_running() {
    if [ "$SSH_AUTH_SOCK" ]; then
        # ssh-add returns:
        #   0 = agent running, has keys
        #   1 = agent running, no keys
        #   2 = agent not running
        ssh-add -l >/dev/null 2>&1 || [ $? -eq 1 ]
    else
        false
    fi
}

agent_has_keys() {
    ssh-add -l >/dev/null 2>&1
}

agent_load_env() {
    . "$env" >/dev/null
}

agent_start() {
    (umask 077; ssh-agent >"$env")
    . "$env" >/dev/null
}

if ! agent_is_running; then
    agent_load_env
fi

# if your keys are not stored in ~/.ssh/id_rsa.pub or ~/.ssh/id_dsa.pub, you'll need
# to paste the proper path after ssh-add
if ! agent_is_running; then
    agent_start
    ssh-add
elif ! agent_has_keys; then
    ssh-add
fi

unset env
{% endhighlight %}
重新打开Git

如果要求输入密码

那就完成了：

[![image](https://lh5.googleusercontent.com/-Dnp3HALKhe4/VI2kizNUqiI/AAAAAAAAHuU/zr4zYjhhpqs/s800/14-12-2014_225354.png "image")](https://lh5.googleusercontent.com/-Dnp3HALKhe4/VI2kizNUqiI/AAAAAAAAHuU/zr4zYjhhpqs/s1600/14-12-2014_225354.png)

## SublimeGit 设置

### 添加环境变量 GIT_SSH

Sublime Text 必须已经安装SublimeGit 插件

1. 到[PuTTY Download Page](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)下载Putty Installer
安装

[![image](https://lh5.googleusercontent.com/-ukDHG5zh4tA/VI2lVVGmwMI/AAAAAAAAHuc/12rEnGnBs2I/s800/14-12-2014_225716.png "image")](https://lh5.googleusercontent.com/-ukDHG5zh4tA/VI2lVVGmwMI/AAAAAAAAHuc/12rEnGnBs2I/s1600/14-12-2014_225716.png)
2. 添加环境变量：GIT_SSH

指向putty 的 plink 程序 （通常在C:\Program Files\PuTTY下）

右键点击Computer

点击Properties

[![image](https://lh6.googleusercontent.com/-OXveIzGIG5o/VI2mCjpC-WI/AAAAAAAAHuk/kAHghALIP34/s800/14-12-2014_230016.png "image")](https://lh6.googleusercontent.com/-OXveIzGIG5o/VI2mCjpC-WI/AAAAAAAAHuk/kAHghALIP34/s1600/14-12-2014_230016.png)
3. 然后点击Advanced system settings：

[![image](https://lh4.googleusercontent.com/-ufYGX6-vn3E/VI2mVHXGahI/AAAAAAAAHus/kBg_MC5befY/s800/14-12-2014_230130.png "image")](https://lh4.googleusercontent.com/-ufYGX6-vn3E/VI2mVHXGahI/AAAAAAAAHus/kBg_MC5befY/s1600/14-12-2014_230130.png)
4. 然后点击Advanced

然后在点击Environment Variables...

点击New..

[![image](https://lh4.googleusercontent.com/-RpWJWdp0Snw/VI2mkKg2QRI/AAAAAAAAHu0/RqdZJtjLfKY/s800/14-12-2014_230230.png "image")](https://lh4.googleusercontent.com/-RpWJWdp0Snw/VI2mkKg2QRI/AAAAAAAAHu0/RqdZJtjLfKY/s1600/14-12-2014_230230.png)
5. Variable name 输入 `GIT_SSH`

Variable value 输入`C:\Program Files\PuTTY\plink.exe` （依据plink的位置而定）

点击OK

[![image](https://lh6.googleusercontent.com/-nAkyJvHxyi8/VI2m_G2MRNI/AAAAAAAAHu8/s1qmcTNlN5s/s800/14-12-2014_230417.png "image")](https://lh6.googleusercontent.com/-nAkyJvHxyi8/VI2m_G2MRNI/AAAAAAAAHu8/s1qmcTNlN5s/s1600/14-12-2014_230417.png)
6. 回到列表上

点击Path

点击Edit

[![image](https://lh5.googleusercontent.com/-9oXnkAX1R3w/VI2nrXN-j4I/AAAAAAAAHvE/E8iqFTrHvjU/s800/14-12-2014_230712.png "image")](https://lh5.googleusercontent.com/-9oXnkAX1R3w/VI2nrXN-j4I/AAAAAAAAHvE/E8iqFTrHvjU/s1600/14-12-2014_230712.png)
7. 在后尾追加 `;C:\Program Files\Git\bin;`

点击OK

再点击OK

然后再点击OK

[![image](https://lh4.googleusercontent.com/-rKd2Rs_2l1M/VI4am0WuC1I/AAAAAAAAHvU/aFIzffLVcSU/s800/15-12-2014_071736.png "image")](https://lh4.googleusercontent.com/-rKd2Rs_2l1M/VI4am0WuC1I/AAAAAAAAHvU/aFIzffLVcSU/s1600/15-12-2014_071736.png)

### OpenSSH 私钥转PuTTY私钥（*.ppk）

1. 打开PuTTYGen

点击Load

[![image](https://lh4.googleusercontent.com/-1kGMU4ZxcM0/VI4crlB38BI/AAAAAAAAHvg/6FFo3sgq2XU/s800/15-12-2014_072628.png "image")](https://lh4.googleusercontent.com/-1kGMU4ZxcM0/VI4crlB38BI/AAAAAAAAHvg/6FFo3sgq2XU/s1600/15-12-2014_072628.png)
2. Filter换成All Files(*.*)

选择没有扩展名的id_rsa

点击Open

[![image](https://lh4.googleusercontent.com/-jrWGlYzhf38/VI4dALIB6zI/AAAAAAAAHvo/EBt4HyvMG6I/s800/15-12-2014_072749.png "image")](https://lh4.googleusercontent.com/-jrWGlYzhf38/VI4dALIB6zI/AAAAAAAAHvo/EBt4HyvMG6I/s1600/15-12-2014_072749.png)
3. 输入密码：

然后点击OK

[![image](https://lh4.googleusercontent.com/-ptSjNsPCX5E/VI4dJD9JK5I/AAAAAAAAHvw/4caYqeH5o4M/s800/15-12-2014_072826.png "image")](https://lh4.googleusercontent.com/-ptSjNsPCX5E/VI4dJD9JK5I/AAAAAAAAHvw/4caYqeH5o4M/s1600/15-12-2014_072826.png)
4. 点击OK

[![image](https://lh6.googleusercontent.com/-00i1ffQ5LBc/VI4dR4jAkaI/AAAAAAAAHv4/kaLWsZnVLsc/s800/15-12-2014_072901.png "image")](https://lh6.googleusercontent.com/-00i1ffQ5LBc/VI4dR4jAkaI/AAAAAAAAHv4/kaLWsZnVLsc/s1600/15-12-2014_072901.png)
5. 换个Key Comment

然后点击Save Private Key

[![image](https://lh6.googleusercontent.com/-D-g7_Bf8olo/VI4efY8uPvI/AAAAAAAAHwE/Zy-bvsPwsrE/s800/15-12-2014_073410.png "image")](https://lh6.googleusercontent.com/-D-g7_Bf8olo/VI4efY8uPvI/AAAAAAAAHwE/Zy-bvsPwsrE/s1600/15-12-2014_073410.png)
6. 保存为`id_rsa.ppk`

[![image](https://lh5.googleusercontent.com/-bHf-P-WP_mA/VI4en2SXpGI/AAAAAAAAHwM/E92s16Idm2A/s800/15-12-2014_073444.png "image")](https://lh5.googleusercontent.com/-bHf-P-WP_mA/VI4en2SXpGI/AAAAAAAAHwM/E92s16Idm2A/s1600/15-12-2014_073444.png)
7. 关闭PuTTYGen

### 获取GitHub 的 Public Key

1. 打开PuTTY

Host Name填入`git@github.com`

点击Open

[![image](https://lh6.googleusercontent.com/-Y71E-CJQgvA/VI4f8sUd7dI/AAAAAAAAHwY/mugwTANnTsI/s800/15-12-2014_074029.png "image")](https://lh6.googleusercontent.com/-Y71E-CJQgvA/VI4f8sUd7dI/AAAAAAAAHwY/mugwTANnTsI/s1600/15-12-2014_074029.png)
2. 点击Yes

[![image](https://lh3.googleusercontent.com/-5QgFLVWju78/VI4gD0Jdb_I/AAAAAAAAHwg/8rbSObrwvlQ/s800/15-12-2014_074059.png "image")](https://lh3.googleusercontent.com/-5QgFLVWju78/VI4gD0Jdb_I/AAAAAAAAHwg/8rbSObrwvlQ/s1600/15-12-2014_074059.png)
3. 点击OK

[![image](https://lh6.googleusercontent.com/-YDx_yWsQzj8/VI4gaHQ_6ZI/AAAAAAAAHwo/ESwAjElpywk/s800/15-12-2014_074228.png "image")](https://lh6.googleusercontent.com/-YDx_yWsQzj8/VI4gaHQ_6ZI/AAAAAAAAHwo/ESwAjElpywk/s1600/15-12-2014_074228.png)
4. 关闭PuTTY

### 设置Pageant

1. 打开Pageant所在的文件夹 （Program Files 下）
2. 在Pageant 上右键

选择Create Shortcut

[![image](https://lh6.googleusercontent.com/-YVE-mzb1NRw/VI4h4E8rc3I/AAAAAAAAHw0/w-PVWwNn2m8/s800/15-12-2014_074842.png "image")](https://lh6.googleusercontent.com/-YVE-mzb1NRw/VI4h4E8rc3I/AAAAAAAAHw0/w-PVWwNn2m8/s1600/15-12-2014_074842.png)
3. 点击Yes

[![image](https://lh6.googleusercontent.com/-GWgDt96sQKA/VI4iLLkPz7I/AAAAAAAAHw8/HzhV6-58Mb0/s800/15-12-2014_075000.png "image")](https://lh6.googleusercontent.com/-GWgDt96sQKA/VI4iLLkPz7I/AAAAAAAAHw8/HzhV6-58Mb0/s1600/15-12-2014_075000.png)
4. 到Desktop

找到Pageant 的 shortcut 图标

右键点击

选择Properties

[![image](https://lh4.googleusercontent.com/-DbpYCuQZIik/VI4jhSeocRI/AAAAAAAAHxI/ucyQu9MFCOQ/s800/15-12-2014_075543.png "image")](https://lh4.googleusercontent.com/-DbpYCuQZIik/VI4jhSeocRI/AAAAAAAAHxI/ucyQu9MFCOQ/s1600/15-12-2014_075543.png)
5. 在Target 后尾追加 .ppk 的位置

这里是`"C:\Users\GaryNg\.ssh\id_rsa.ppk"`

点击OK

[![image](https://lh3.googleusercontent.com/-ucVPlToVeq4/VI4k836ZjxI/AAAAAAAAHxk/5OwKldtOT3E/s800/15-12-2014_080150.png "image")](https://lh3.googleusercontent.com/-ucVPlToVeq4/VI4k836ZjxI/AAAAAAAAHxk/5OwKldtOT3E/s1600/15-12-2014_080150.png)
6. 打开Startup 文件夹

位于`%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`

将pageant.exe 的shortcut 拖入其中

这样下次开机就会直接帮你登录GitHub的SSH

[![image](https://lh5.googleusercontent.com/-S6hy5eYFAWQ/VI4kiMmerYI/AAAAAAAAHxY/TD0-0nq8yI4/s800/15-12-2014_080003.png "image")](https://lh5.googleusercontent.com/-S6hy5eYFAWQ/VI4kiMmerYI/AAAAAAAAHxY/TD0-0nq8yI4/s1600/15-12-2014_080003.png)
7. 双击开启pageant

输入密码即可

[![image](https://lh4.googleusercontent.com/-kJUSMkECKfU/VI4lQ72KAUI/AAAAAAAAHxs/MCDF2D-RwZ0/s800/15-12-2014_080311.png "image")](https://lh4.googleusercontent.com/-kJUSMkECKfU/VI4lQ72KAUI/AAAAAAAAHxs/MCDF2D-RwZ0/s1600/15-12-2014_080311.png)


### SublimeGit 测试

**注意：https协议不能哦**

[![image](https://lh6.googleusercontent.com/-RaKXzm1cEeE/VI4l9OPbT2I/AAAAAAAAHx0/6KcFF3PkvGM/s800/15-12-2014_080606.png "image")](https://lh6.googleusercontent.com/-RaKXzm1cEeE/VI4l9OPbT2I/AAAAAAAAHx0/6KcFF3PkvGM/s1600/15-12-2014_080606.png)

[![image](https://lh4.googleusercontent.com/-8bTTmhXLtpU/VI4nUZgQQFI/AAAAAAAAHyA/6n38GSuLjUo/s800/15-12-2014_081156.png "image")](https://lh4.googleusercontent.com/-8bTTmhXLtpU/VI4nUZgQQFI/AAAAAAAAHyA/6n38GSuLjUo/s1600/15-12-2014_081156.png)

[![image](https://lh5.googleusercontent.com/-Q1ZPxr0tjYo/VI4prHTaXuI/AAAAAAAAHyM/Ok-1hX4UEaM/s800/15-12-2014_082200.png "image")](https://lh5.googleusercontent.com/-Q1ZPxr0tjYo/VI4prHTaXuI/AAAAAAAAHyM/Ok-1hX4UEaM/s1600/15-12-2014_082200.png)

[![image](https://lh6.googleusercontent.com/-zsYvcFzqhmA/VI4p1jDhmII/AAAAAAAAHyU/dMMx_gM3RY4/s800/15-12-2014_082242.png "image")](https://lh6.googleusercontent.com/-zsYvcFzqhmA/VI4p1jDhmII/AAAAAAAAHyU/dMMx_gM3RY4/s1600/15-12-2014_082242.png)
---
layout: post
title: '[其他] 部落格搬家记 + 发布几道工具'
author: 'Gary Ng'
tags: ['其他','原创','教程']
---

大家好 xD

刚能抽出点时间上来部落格更新一下，来证明我仍然存在着 xD

这部落格没有更新差不多一年了，整整一年，笔者我都很忙（灰常忙），而且平时手边也没有电脑可用，自然而然把这部落格也给忘了......
<!-- More -->  
<hr/>

先说说本部落格的大事吧 —— 部落格搬家啦！

在Blogger 平台时有木有发现到那载入的速度真是巨慢啊...估计是因为Dynamic Views 的关系吧，而且我的CSS还改了很多，基本上是没有优化的...

看了看，那一团团的CSS还有自己加入的JS根本头疼啊...

然后..然后..就决定将部落格弃坑了...


其实呢，想换个部落格平台很久了，只是一直没下决心来，而且转换平台搬动帖子时特麻烦，各种工具都不可能完完全全适合你的部落格


本来打算转到WordPress的，但是却没有server（其实是懒惰 + 好贵啊），而且WordPress还需要设定还有搞一堆PHP等等我不看不懂的东西，想了想，算了，想法弃坑。


然后呢，又看到了这个部落格平台——[Ghost](https://ghost.org/)（但是那时我看到时，Ghost还在测试阶段），然后我想：“恩，不错，下次回来看看开发进度...”，然后，我又忘了这东西了...直到在写这篇帖子的时候，我才又想起了..

测试了下，挺不错的，可是有PRO跟普通版本之分...而且还要npm等等..要自己架设的话，还得买个server自己deploy上去，要不然你只能自己在localhost看..于是，又被我悲催的弃坑了

[![image](https://lh5.googleusercontent.com/-M9x03xnSURY/VH0b7sQd5yI/AAAAAAAAHbw/K9X85CxRvXY/s800/02-12-2014_095447.png "Ghost的下载程序网站")](https://lh5.googleusercontent.com/-M9x03xnSURY/VH0b7sQd5yI/AAAAAAAAHbw/K9X85CxRvXY/s1600/02-12-2014_095447.png)

<hr/>

就这样几乎半年过去了，我的部落格就晾在那儿生灰尘了..

一直到我看到了我的网友@Zypeh （GitHub tagging测试 哈哈 xD）自己用Jekyll在GitHub架了个static site（静态网页，就是直接将内容呈现出来的那种，而不是用动态生成出来的），我看了看：“恩，挺不错的，试试看”，然后我的悲催的搬家路程就开始了...


那个时候jekyll-import还木有支持Blogger搬家，我为了找到一个像样的Blogger 转Jekyll的工具就花了好久好久的时间，几乎都是这些（留作存档，也许这些网站还能帮到人）：

- [Migrating from Blogger to Jekyll - SLaks.Blog](http://blog.slaks.net/2013-05-31/migrating-from-blogger-to-jekyll/)
- [Migrate from blogger to jekyll - CoolAJ86](http://blog.coolaj86.com/articles/migrate-from-blogger-to-jekyll.html)
- [jekyll-import Docs](http://import.jekyllrb.com/docs/home/)
- [Blogger to Jekyll + Github pages - Revath S Kumar](http://blog.revathskumar.com/2013/08/blogger-to-jekyll.html)
- [Blogspot_toJekyll.rb - GitHub Gist - kennym](https://gist.github.com/kennym/1115810)

我又悲催的发现......没有工具适合我的部落格啊..（给 ~~Blogger~~ Blogspot这个平台的工具真是太少了那时..）

<hr/>

为了解决这个问题.....我..就自己搞了个工具 —— **gBloggerToJekyll**
### 下载地址：[GitHub - gBloggerToJekyll](https://github.com/garyng/gBloggerToJekyll)
### 主程序下载地址：[GitHub Release - gBloggerToJekyll](https://github.com/garyng/gBloggerToJekyll/releases)
里面包含两个工具：

- 主程序 gBloggerToJekyll
- 辅助程序 gLinkConversionManager

我6月开始动工，花了2个月才写完的（我能用电脑的时间超级少...）写完时，已经8月多了..

这里就略讲gBloggerToJekyll的运作流程吧（不想面对大量火星文的请跳过 xD）

1. 首先是初始化Blogger API啦，这里就是你在登录的时候的那个界面完成的
	- 跳出OAuth2 的Login窗口
	- 然后拿到AceesToken
	- 就可以用了！
[![image](https://lh4.googleusercontent.com/-UgAbx6AIzWw/VH0tuY0ddJI/AAAAAAAAHcM/h5iThfkqu6M/s800/02-12-2014_111029.png "gBloggerToJekyll")](https://lh4.googleusercontent.com/-UgAbx6AIzWw/VH0tuY0ddJI/AAAAAAAAHcQ/iXRJfkGSJRA/s1600/02-12-2014_111029.png)
[![image](https://lh4.googleusercontent.com/-tytKDmiQfWc/VH0vfykHIMI/AAAAAAAAHcc/H5ZSvemJUro/s800/02-12-2014_111811.png "部落格列表")](https://lh4.googleusercontent.com/-tytKDmiQfWc/VH0vfykHIMI/AAAAAAAAHcc/H5ZSvemJUro/s1600/02-12-2014_111811.png)	
2. 然后就是获取所拥有的部落格了
[![image](https://lh4.googleusercontent.com/-YU_qEUdhaYU/VH0vjunskMI/AAAAAAAAHck/qVNGTQMk7K4/s800/02-12-2014_111824.png "image")](https://lh4.googleusercontent.com/-YU_qEUdhaYU/VH0vjunskMI/AAAAAAAAHck/qVNGTQMk7K4/s1600/02-12-2014_111824.png)
[![image](https://lh6.googleusercontent.com/-qEk3dF87acg/VH0wUIho8NI/AAAAAAAAHco/bCMVALsdTcI/s800/02-12-2014_112140.png "image")](https://lh6.googleusercontent.com/-qEk3dF87acg/VH0wUIho8NI/AAAAAAAAHcs/x7rrnUnTfPU/s1600/02-12-2014_112140.png)
3. 获取部落格信息
[![image](https://lh3.googleusercontent.com/-eH78kjXzv6g/VH0x0XAEeRI/AAAAAAAAHc8/MjwovQzpX8A/s800/02-12-2014_112801.png "image")](https://lh3.googleusercontent.com/-eH78kjXzv6g/VH0x0XAEeRI/AAAAAAAAHc8/MjwovQzpX8A/s1600/02-12-2014_112801.png)
4.然后就是下载所有已经上线的帖子了（draft目前不支持..）
[![image](https://lh4.googleusercontent.com/-52OkQL5VB7Y/VH0x3KE6sEI/AAAAAAAAHdA/5VsG74BaEVs/s800/02-12-2014_112821.png "image")](https://lh4.googleusercontent.com/-52OkQL5VB7Y/VH0x3KE6sEI/AAAAAAAAHdA/5VsG74BaEVs/s1600/02-12-2014_112821.png)
5.就可以开始转换了
[![image](https://lh3.googleusercontent.com/--i76VOT_pLo/VH0zPwhSkdI/AAAAAAAAHdM/dV61ImcpfeQ/s800/02-12-2014_113413.png "image")](https://lh3.googleusercontent.com/--i76VOT_pLo/VH0zPwhSkdI/AAAAAAAAHdM/dV61ImcpfeQ/s1600/02-12-2014_113413.png)
6.然后就好了！
[![image](https://lh3.googleusercontent.com/-9ykkfgDwMAM/VH0zXqLPWUI/AAAAAAAAHdU/rFAUhXCJ1Cc/s800/02-12-2014_113446.png "image")](https://lh3.googleusercontent.com/-9ykkfgDwMAM/VH0zXqLPWUI/AAAAAAAAHdU/rFAUhXCJ1Cc/s1600/02-12-2014_113446.png)

gBloggerToJekyll从html转markdown是基于pandoc的（当然还支持html2text，但是默认是pandoc，而且每选项可以换 xD 原因是测试时 html2text 的格式转换不太好 所以就放弃了）

所以convert出来的post肯定有些的format会跑掉的

所以这还是得自己手动来修正回来的

<hr/>

还有一个问题，就是我从Blogger转到GitHub来 —— 网址不同了，但是我的帖子里面有些是连向其他帖子的，而那些link用的却是旧的域名（那个blogspot的）..
刚开始我是打算用regex（正则表达式）来一次性的转换的..可是我的regex功力不足，这个方法..又弃坑了..

**gLinkConversionManager**呢，就是辅助手动转换这些链接的工具

他将所有link到部落格内的帖子的链接转换成一下格式：

`{% raw %} {% post_url POST-NAME %} {% endraw %}`

这样就不用担心域名更换啦！

但是这是手动的...

gLinkConversionManager只是一个辅助工具

你要做的是

1. 在所有转换后的post找出link到自己部落格内的网址 （Sublime Text 和 Notepad++都能一次性的在一个文件夹内的全部文件查找哦）
2. 然后打开gLinkConversionManager，导入gBloggerToJekyll生成的.json文件（文件会在gBloggerToJekyll的目录下）
3. 在每个文件里面当你看到有链接到你的部落格的链接是，整段选择，然后Ctrl + C 拷贝
4. 这是gLinkConversionManager 就表演魔术啦，他会检测clipboard，当clipboard的内容改变的时候，就会检测该链接是否存在于.json文件内，如果有，就转换成`{% raw %} {% post_url POST-NAME %} {% endraw %}`的格式，然后在输出到clipboard上
5. 简单来说，你只要Ctrl + C 链接，然后在Ctrl + V就好了！

众：讲的不清不楚的...

我：汗....

（算了 直接不解释 得空再说 xD ）

<hr/>

Blogger 的帖子转到Jekyll这里来，基本上就是个煎熬啊...然后我为此搞了两三个月后，帖子转换完成了..
然后，有是头脑发胀的时刻了——Jekyll site 的 template...

网站模板我也是找了N多， 这里也留着做存档，也希望能够帮到别人 :D

- [Hyde](http://andhyde.com/)
- [HMFAYSAL OMEGA](http://hmfaysal.github.io/hmfaysal-omega-theme/)
- [RedCup](http://nadjetey.github.io/redcup/)
- [So Simple Theme](http://mmistakes.github.io/so-simple-theme/)
- [Thinny](http://camporez.com/)

最终我还是选了Hyde，主要的原因就是比较简单，customize起来也算很容易..
然后离开Blogger的最大问题来了——我的SEO、网站数据、评论等等全都没有了，SEO这个累计起来需要时间的啊...
于是就加了个disqus 评论进来，加了GA，还有FA（猜猜GA 和 FA 都代表啥），还有一些CSS（目前还有没有用到~~Javascipt~~ jQuery 娃哈哈）

<hr/>

在说说部落格平台吧

表示我现在几乎能摆脱那N年没有更新了的Windows Live Writer了...（如果他更新了我估计会用回Blogger 娃哈哈）

WLW对Blogger API接口的支持是算不错了

但是排版啊什么的 尤其是code highlighting 基本坑爹...

现在都是纯手打[Liquid](https://github.com/Shopify/liquid) + [Markdown](http://daringfireball.net/projects/markdown/syntax) 还有[GitHub Flavoured Markdown](https://help.github.com/articles/github-flavored-markdown/)

但他们都不会很难 花点时间适应一下就可以啦

编辑器呢..

嘿嘿 各种不解释

<hr/>

在自己的机子上建立Jekyll 的测试环境（就离线测试呗 要不然每一次要看帖子排版都得commit 然后 push 到github 上..）还是一句话——坑爹啊

从Ruby 到 gems 然后 bundle 接着是jekyll 还有python 等等外加 dev kit

只能说 这些东西 还是linux 机子合适啊..

各种错误 各种不明的exception

脑都涨了..

不过网络上还是有很多如何在Windows **正确**的建立一个离线Jekyll写作环境的文章

至于我怎么弄

额..应该不在本章篇幅内啦 娃哈哈


<hr/>

还有就是

嘿嘿我终于有我的域名啦

namecheap的 只剩下半年了

如果谁要捐个十几二十美刀给我续费 **欢迎欢迎** 娃哈哈xD


<hr/>

接下来还有呢 （还有？）

有木有发现到我的图片不是host在GitHub内的？

因为我发现到这样的话 GitHub的repo会很大

而且在Blogger 上的帖子里面的图片都是host 在 Picasa里面的

没有那么多时间来一个个下载 然后commit 进repo在relink 回去 （似乎有2000++张照片了）

所以呢 我索性就直接继续用Picasa 作为图片的hosting

但是

但是，我又发现另一个问题——我找不到一个可以帮我upload到Picasa然后自动获取**可以嵌入**的图片link

然后又是各种悲催的开始了

.net 版本的Google Picasa API 还滞留在v1

登录还用最古老的ClientLogin而不是OAuth2

然后Google GData Sample 里面的PhotoBrowser 引用的Picasa API 是v2的..

API Reference 又木有更新

接着就是各种折腾的开始了（哭

<hr/>

最后我想说的是

这个部落格是由各种各样的**悲催+坑爹**组成的

所以呢

点点广告

捐点钱吧 哇哈哈哈哈哈

（闪人
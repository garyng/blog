---
layout: post
title: '[其他] 部落格搬家记 + 发布几道工具'
published: True
categories: ['其他']
---

大家好 xD
刚能抽出点时间上来部落格更新一下，来证明我仍然存在着 xD
这部落格没有更新差不多一年了，整整一年，笔者我都很忙（灰常忙），而且平时手边也没有电脑可用，自然而然把这部落格也给忘了......

先说说本部落格的大事吧 —— 部落格搬家啦！
在Blogger 平台式有木有发现到那载入的速度真是巨慢啊...估计是因为Dynamic Views 的关系吧，而且我的CSS还改了很多，基本上是没有优化的...
看了看，那一团团的CSS还有自己加入的JS根本头疼啊...
然后..然后..就决定将部落格弃坑了...

其实呢，想换个部落格平台很久了，只是一直没写决心来，而且转换平台搬动帖子时特麻烦，各种工具都不可能完完全全适合你的部落格

本来打算转到WordPress的，但是却没有server（其实是懒惰 + 好贵啊），而且WordPress还需要设定还有搞一堆PHP等等我不看不懂的东西，想了想，算了，想法弃坑。

然后呢，又看到了这个部落格平台——[Ghost](https://ghost.org/)（但是那时我看到时，Ghost还在测试阶段），然后我想：“恩，不错，下次回来看看开发进度...”，然后，我又忘了这东西了...直到在写这篇帖子的时候，我才又想起了..
测试了下，挺不错的，可是有PRO跟普通版本之分...而且还要npm等等..要自己架设的话，还得买个server自己deploy上去，要不然你只能自己在localhost看..于是，又被我悲催的弃坑了

[![image](https://lh5.googleusercontent.com/-M9x03xnSURY/VH0b7sQd5yI/AAAAAAAAHbw/K9X85CxRvXY/s800/02-12-2014_095447.png "Ghost的下载程序网站")](https://lh5.googleusercontent.com/-M9x03xnSURY/VH0b7sQd5yI/AAAAAAAAHbw/K9X85CxRvXY/s1600/02-12-2014_095447.png)

就这样几乎半年过去了，我的部落格就晾在那儿生灰尘了..
一直到我看到了我的网友@Zypeh （GitHub tagging测试 哈哈 xD）自己用Jekyll在GitHub架了个static site（静态网页，就是直接将内容呈现出来的那种，而不是用动态生成出来的），我看了看：“恩，挺不错的，试试看”，然后我的悲催的搬家路程就开始了...

那个时候jekyll-import还木有支持Blogger搬家，我为了找到一个像样的Blogger 转Jekyll的工具就花了好久好久的时间，几乎都是这些（留作存档，也许这些网站还能帮到人）：
- [Migrating from Blogger to Jekyll - SLaks.Blog](http://blog.slaks.net/2013-05-31/migrating-from-blogger-to-jekyll/)
- [Migrate from blogger to jekyll - CoolAJ86](http://blog.coolaj86.com/articles/migrate-from-blogger-to-jekyll.html)
- [jekyll-import Docs](http://import.jekyllrb.com/docs/home/)
- [Blogger to Jekyll + Github pages - Revath S Kumar](http://blog.revathskumar.com/2013/08/blogger-to-jekyll.html)
- [Blogspot_toJekyll.rb - GitHub Gist - kennym](https://gist.github.com/kennym/1115810)

我又悲催的发现......没有工具适合我的部落格啊..（给 ~~Blogger~~ Blogspot这个平台的工具真是太少了那时..）
为了解决这个问题.....我..就自己搞了个工具 —— **gBloggerToJekyll**
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
[![image](https://lh3.googleusercontent.com/-eH78kjXzv6g/VH0x0XAEeRI/AAAAAAAAHc8/MjwovQzpX8A/s800/02-12-2014_112801.png "image")](https://lh3.googleusercontent.com/-eH78kjXzv6g/VH0x0XAEeRI/AAAAAAAAHc8/MjwovQzpX8A/s1600/02-12-2014_112801.png)
4.然后就是下载所有已经上线的帖子了（draft目前不支持..）
[![image](https://lh4.googleusercontent.com/-52OkQL5VB7Y/VH0x3KE6sEI/AAAAAAAAHdA/5VsG74BaEVs/s800/02-12-2014_112821.png "image")](https://lh4.googleusercontent.com/-52OkQL5VB7Y/VH0x3KE6sEI/AAAAAAAAHdA/5VsG74BaEVs/s1600/02-12-2014_112821.png)
5.就可以开始转换了
[![image](https://lh3.googleusercontent.com/--i76VOT_pLo/VH0zPwhSkdI/AAAAAAAAHdM/dV61ImcpfeQ/s800/02-12-2014_113413.png "image")](https://lh3.googleusercontent.com/--i76VOT_pLo/VH0zPwhSkdI/AAAAAAAAHdM/dV61ImcpfeQ/s1600/02-12-2014_113413.png)
6.然后就好了！
[![image](https://lh3.googleusercontent.com/-9ykkfgDwMAM/VH0zXqLPWUI/AAAAAAAAHdU/rFAUhXCJ1Cc/s800/02-12-2014_113446.png "image")](https://lh3.googleusercontent.com/-9ykkfgDwMAM/VH0zXqLPWUI/AAAAAAAAHdU/rFAUhXCJ1Cc/s1600/02-12-2014_113446.png)

gBloggerToJekyll是从html转markdown是基于pandoc的（当然还支持html2text，但是默认是pandoc，还有没得换 xD）
所以convert出来的post肯定有些的format会跑掉的
所以这还是得自己手动来修正回来的
还有一个问题，就是我从Blogger转到GitHub来 —— 网址不同了，但是我的帖子里面有些是连向其他帖子的，而那些link用的却是旧的域名（那个blogspot的）..
刚开始我是打算用regex（正则表达式）来一次性的转换的..可是我的regex功力不足，这个方法..又弃坑了..
**gLinkConversionManager**呢，就是辅助手动转换这些链接的工具
他将所有link到部落格内的帖子的链接转换成一下格式：
`{% post_url POST-NAME %}`
这样就不用担心域名更换啦！
但是这是手动的...
gLinkConversionManager只是一个辅助工具
你要做的是
1. 在所有转换后的post找出link到自己部落格内的网址 （Sublime Text 和 Notepad++都能一次性的在一个文件夹内的全部文件查找哦）
2. 然后打开gLinkConversionManager，导入gBloggerToJekyll生成的.json文件（文件会在gBloggerToJekyll的目录下）
3. 在每个文件里面当你看到有链接到你的部落格的链接是，整段选择，然后Ctrl + C 拷贝
4. 这是gLinkConversionManager 就表演魔术啦，他会检测clipboard，当clipboard的内容改变的时候，就会检测该链接是否存在于.json文件内，如果有，就转换成`{% post_url POST-NAME %}`的格式，然后在输出到clipboard上
5. 简单来说，你只要Ctrl + C 链接，然后在Ctrl + V就好了！

众：讲的不清不楚的...
我：汗....



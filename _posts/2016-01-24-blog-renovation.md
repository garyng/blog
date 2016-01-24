---
layout: post
title: '[笔记] 部落格翻新小记'
tags:
  - 原创
  - 其他
  - 部落格
  - 笔记
description: 关于本部落格翻新的的小笔记
image: 'https://lh3.googleusercontent.com/-4hGY7d7At7w/VqSN8EwnM2I/AAAAAAAAIcI/uxqH6b3UluQ/s1600/24-01-2016_160215.png'
author: GaryNg
---

部落格很久没更新了，年尾的大假期才有时间来看看。  

没发什么文章，CE教程估计也是烂尾了...  

只是更新了部落格底层的一些东西，改了些CSS然后引进了jQuery。

写这篇文章只是为了记录我改了什么而已，当作日后的笔记吧。

<!-- More -->

#更新了啥？

这个很容易被发现吧 xD

就是部落格的主页面再也不是显示每个post的content了，而是换成了post的excerpt

这个是通过`{% raw %} {{ post.excerpt }} {% endraw %}`实现的

先在`_config.yml` 之中设定`excerpt_separator` （我将它设为了`<!-- More -->`）

[![image](https://lh3.googleusercontent.com/-S8Ih9NjDVVs/VqSN0GJgwbI/AAAAAAAAIbs/GRXe99dWR3A/s800/24-01-2016_152853.png "image")](https://lh3.googleusercontent.com/-S8Ih9NjDVVs/VqSN0GJgwbI/AAAAAAAAIb0/lrJsVkDNheY/s1600/24-01-2016_152853.png)

然后在每个post 之中只要在特定的地方加入`<!-- More -->`,Jeyll就会自动获取`<!-- More -->`之前的content了。（为了这个我将200++个帖子都编辑了一遍.....）

[![image](https://lh3.googleusercontent.com/-_N3SJwDsojE/VqSN0bzG0qI/AAAAAAAAIbw/a9A8XRkIJY0/s800/24-01-2016_152918.png "image")](https://lh3.googleusercontent.com/-_N3SJwDsojE/VqSN0bzG0qI/AAAAAAAAIbw/a9A8XRkIJY0/s1600/24-01-2016_152918.png)

---

每个post title 之前都加了个小小的FontAwesome icon

就是<span class="fa fa-magic"></span>这个啦 xDD

---

Sidebar 的 `BETA!` 字样也除去了

换成了在下方的version 1.0 （PS： 甚至在git 中我也创建了一个tag xDD）

---

我改了点代码高亮的CSS

去除了`text-shadow` 然后修正了`word-wrap`的问题

也顺带加入了代码的类别

就像这样：

{% highlight csharp %}
// This is a C# code
{% endhighlight %}

{% highlight js %}
// A JavaSciprt code!
{% endhighlight %}

---

[Tags](http://{{ site.url }}/tags/)页面也做了大翻新，不再是以前那般显示所有的tags了

换成了只显示首20个帖子最多的Tags

而且字体大小会跟着帖子的数量改变（这东西很久以前就想实现了，不过碍于Liquid之前的版本之中`divided_by`有bug，所以没去搞定，最近的更新才修复了这个bug）

美美哒：

[![image](https://lh3.googleusercontent.com/-lGqGN7v9ljc/VqSN4u3-hmI/AAAAAAAAIb8/cDm_1XnO6sI/s800/24-01-2016_154334.png "image")](https://lh3.googleusercontent.com/-lGqGN7v9ljc/VqSN4u3-hmI/AAAAAAAAIb8/cDm_1XnO6sI/s1600/24-01-2016_154334.png)

---

[Archive](http://{{ site.url }}/archive/)之中的`post excerpt` 也改了一点点，最大的翻新就是加入了从Google Analytics获取的pageviews

为了实现这个加入了jQuery，这个static site 也变得有点不static了（LOL）

这个部落格的Pageviews完全就是少的可怜啊．．．

[![image](https://lh3.googleusercontent.com/-4hGY7d7At7w/VqSN8EwnM2I/AAAAAAAAIcI/uxqH6b3UluQ/s800/24-01-2016_160215.png "image")](https://lh3.googleusercontent.com/-4hGY7d7At7w/VqSN8EwnM2I/AAAAAAAAIcI/uxqH6b3UluQ/s1600/24-01-2016_160215.png)

---

最后就是我把css 和 js都minify了

Minifier 用的是[Microsoft Ajax Minifier](http://ajaxmin.codeplex.com/)，写了个batch file 就将其自动化了。

---

大概就这样了。

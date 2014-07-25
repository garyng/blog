---
layout: post
title: '[教程][Blogger][C#] Blogger API v3 教程#3 —— 获取API Key、Client ID 和 Client Secret'
author: 'Gary Ng'
tags: ['blogger','Blogger API','C#','Gdata','Google','OAuth','原创','教程']
---

#  【这个系列中..】

[[教程][Blogger][C#] Blogger API v3教程#1 —— 前言](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v31.html)  
[[教程][Blogger][C#] Blogger API v3 教程#2 —— 申请 Blogger API 的使用权限](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-2-blogger-api.html)  
[[教程][Blogger][C#] Blogger API v3 教程#3 —— 获取API Key、Client ID 和 Client Secret](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-3-api-keyclient.html)  
[[教程][Blogger][C#] Blogger API v3 教程#4 —— 设置开发环境、安装插件、添加Reference](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-4-reference.html)  
[[教程][Blogger][C#] Blogger API v3 教程#5 —— 获取Blog Id](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-5-blog-id.html)  
[[教程][Blogger][C#] Blogger API v3 教程#6——OAuth 2.0 认证](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-6oauth-20.html)  
[[教程][Blogger][C#] Blogger API v3 教程#7——获取帖子列表](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-7.html)  
[[教程][Blogger][C#] Blogger API v3 教程#8——更改帖子标题](http://garyngzhongbo.blogspot.com/2013/10/bloggerc-blogger-api-v3-8.html)  
  
新版本创建的App 获得的Client ID 和 Client Secret 都似乎不能用..  


#  【Client ID 和 Client Secret】

1、先登录：<https://cloud.google.com/console#/project>  
2、点击下方的 Return to original console  
![image](http://lh4.ggpht.com/-j7aa3enAWS4/UlbOqAoFHSI/AAAAAAAAE_g/l4OD1N8TOL0/image_thumb%25255B1%25255D.png?imgmax=800)  
  
3、点击API Access  
![image](http://lh4.ggpht.com/-TuJraDVZ3ls/UlbOrCNB-qI/AAAAAAAAE_w/TylNhbiIUFU/image_thumb%25255B2%25255D.png?imgmax=800)  
  
4a、如果你看到的是这个的话：  
点击Create an OAuth 2.0 Client ID  
![image](http://lh4.ggpht.com/-cBS6kpNmE3U/UlbOsUjE1NI/AAAAAAAAFAA/HaIWZ5PneTg/image_thumb%25255B3%25255D.png?imgmax=800)  
  
填入Product Name  
点击Next  
![image](http://lh4.ggpht.com/-fsi6FYuyWGg/UlbOto2r20I/AAAAAAAAFAQ/4Kvd4VIYEww/image_thumb%25255B4%25255D.png?imgmax=800)  
  
然后选择Installed Application  
点击 Other  
点击 Create client ID  
![image](http://lh4.ggpht.com/-QgQH2dxnlvg/UlbOuzTuRHI/AAAAAAAAFAg/XA2elxqXVeI/image_thumb%25255B5%25255D.png?imgmax=800)  
  
![image](http://lh3.ggpht.com/-tJ0Ppw54NKY/UlbOwG4QNkI/AAAAAAAAFAw/XgLE_3GU7ws/image_thumb%25255B6%25255D.png?imgmax=800)  
  
4b、如果没有那个大大个的蓝色按钮，点击Create another client ID…  
![image](http://lh3.ggpht.com/-XsXv_1R33UU/UlbOxsruFLI/AAAAAAAAFBA/VjMzMqSyvTI/image_thumb%25255B7%25255D.png?imgmax=800)  
  
选择Installed application  
点击 Other  
点击 Create client ID  
![image](http://lh3.ggpht.com/-WWpDjno3aOA/UlbOy4c91uI/AAAAAAAAFBQ/cN7vb_kAqUk/image_thumb%25255B8%25255D.png?imgmax=800)  
![image](http://lh4.ggpht.com/-8dxwtUUcQpk/UlbO0JN9VGI/AAAAAAAAFBg/GHRkTEM3a9M/image_thumb%25255B9%25255D.png?imgmax=800)  
  


#  【获取API Key】

1、如果下方没有Simple API Access 没有一个API Key的话，点击Create New Server Key  
![image](http://lh6.ggpht.com/-JIEtx8JB_bU/UlbO1P7PKgI/AAAAAAAAFBs/tp0sqATkxMg/image_thumb%25255B10%25255D.png?imgmax=800)  
  
2、点击Create  
![image](http://lh4.ggpht.com/-N6jYDzKTiZM/UlbO2hhnJYI/AAAAAAAAFCA/RTX3HVNi2l8/image_thumb%25255B11%25255D.png?imgmax=800)  
  
3、就会看到API Key 了  
![image](http://lh6.ggpht.com/-00ROFK9EAg8/UlbO32fc45I/AAAAAAAAFCQ/7tGb6i3BiJI/image_thumb%25255B12%25255D.png?imgmax=800)

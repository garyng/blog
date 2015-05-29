---
layout: post
title: '[教程][算法] Infix 转 Postfix'
tags: ['教程','原创','算法',]
author: 'Gary Ng'
description: 运用stack 将 Infix（中缀表示法） 表达式转换成 Postfix （后缀表示法）
image: 'https://lh5.googleusercontent.com/-TYC9kuUZO_c/VRV78-m8q8I/AAAAAAAAIJY/BbwRTQSNZSc/s1600/27-03-2015_194647.png'
---

## 简介
Infix 表达式就是平常我们常用的，用来表达一个算术/方程式表达式的方式

比如说：
> A + B * C - D
> 
> A + B * ( C + D * E)
> 
> ( ( A + B ) * ( C - D ^ E) + F)

等等……

但是Infix（中缀表示法）对电脑来说太难处理了，所以就有了Postfix（或称Reversed Polish notation, RPN, 后缀表示法）
> A + B * C - D
> 
> A + B * ( C + D * E)
> 
> ( ( A + B ) * ( C - D ^ E) + F)

上述例子的Postfix 就是：
> A B C * + D - 
> 
> A B C D E * + * +
> 
> A B + C D E ^ - * F +

## Postfix如何计算值

### 例子1：

在解释如何从Infix转Postfix之前，向来看看Postfix表达式如何求值：
> A B C * + D - 
> 
> 看成：
> 
> 1 2 3 * + 4 -
> 
> 就是 1 + 2 * 3 - 4

现在有一个stack，专门储存operand

还有一个pointer，每次都向前移动一个字符（图片中被高亮起来的）

用图解释吧：

[![image](https://lh3.googleusercontent.com/-qtv8UuiQzjw/VRV77tz70CI/AAAAAAAAII0/JIMP9HFKD0s/s800/27-03-2015_194252.png "image")](https://lh3.googleusercontent.com/-qtv8UuiQzjw/VRV77tz70CI/AAAAAAAAII0/JIMP9HFKD0s/s1600/27-03-2015_194252.png)

1 被入stack

[![image](https://lh5.googleusercontent.com/-DzlG31DjMfQ/VRV78NyvMEI/AAAAAAAAIJM/RY-2BomGYb0/s800/27-03-2015_194521.png "image")](https://lh5.googleusercontent.com/-DzlG31DjMfQ/VRV78NyvMEI/AAAAAAAAIJM/RY-2BomGYb0/s1600/27-03-2015_194521.png)

2 被入栈

[![image](https://lh6.googleusercontent.com/-UbBq_V3A2f0/VRV78O00PkI/AAAAAAAAII4/0wrIbIFroZM/s800/27-03-2015_194600.png "image")](https://lh6.googleusercontent.com/-UbBq_V3A2f0/VRV78O00PkI/AAAAAAAAII4/0wrIbIFroZM/s1600/27-03-2015_194600.png)

push 3

[![image](https://lh5.googleusercontent.com/-TYC9kuUZO_c/VRV78-m8q8I/AAAAAAAAIJY/BbwRTQSNZSc/s800/27-03-2015_194647.png "image")](https://lh5.googleusercontent.com/-TYC9kuUZO_c/VRV78-m8q8I/AAAAAAAAIJY/BbwRTQSNZSc/s1600/27-03-2015_194647.png)

现在遇到一个operator

因为乘法需要两个operand，所以pop两个operator

然后进行运算，运算结果被push

[![image](https://lh3.googleusercontent.com/-Q3brbZE9D-w/VRV78rHD6dI/AAAAAAAAIJE/Om893VVszqE/s800/27-03-2015_194744.png "image")](https://lh3.googleusercontent.com/-Q3brbZE9D-w/VRV78rHD6dI/AAAAAAAAIJE/Om893VVszqE/s1600/27-03-2015_194744.png)

加法，同理

[![image](https://lh4.googleusercontent.com/-LjKKPjnuswY/VRV79B9uQiI/AAAAAAAAILE/pGxkVlDqmJI/s800/27-03-2015_195017.png "image")](https://lh4.googleusercontent.com/-LjKKPjnuswY/VRV79B9uQiI/AAAAAAAAILE/pGxkVlDqmJI/s1600/27-03-2015_195017.png)

push 4

[![image](https://lh6.googleusercontent.com/-0xox3p7zSe8/VRV79Db4c-I/AAAAAAAAIJk/fbwXd_BSdMQ/s800/27-03-2015_195055.png "image")](https://lh6.googleusercontent.com/-0xox3p7zSe8/VRV79Db4c-I/AAAAAAAAIJk/fbwXd_BSdMQ/s1600/27-03-2015_195055.png)

pop 两个

进行运算 （**顺序很重要！**）

然后push

[![image](https://lh4.googleusercontent.com/-mmYq_LPMHJQ/VRV79guA43I/AAAAAAAAIJ0/CVsCF0bQGj0/s800/27-03-2015_195228.png "image")](https://lh4.googleusercontent.com/-mmYq_LPMHJQ/VRV79guA43I/AAAAAAAAIJ0/CVsCF0bQGj0/s1600/27-03-2015_195228.png)

接下来pointer抵达尾端，pop出

运算结果便是3

### 例子2：
> A B + C D E ^ - * F +
> 
> 看成这样吧：
> 
> 1 2 + 3 4 5 ^ - * 6 +
> 
> ( ( 1 + 2 ) * ( 3 - 4 ^ 5 ) + 6 )

[![image](https://lh3.googleusercontent.com/-SfO5g2xFUjo/VRV79ni76yI/AAAAAAAAIJo/9zk9FQqPBcg/s800/27-03-2015_233828.png "image")](https://lh3.googleusercontent.com/-SfO5g2xFUjo/VRV79ni76yI/AAAAAAAAIJo/9zk9FQqPBcg/s1600/27-03-2015_233828.png)

[![image](https://lh4.googleusercontent.com/-huNZlq7NIcE/VRV7-JKW1AI/AAAAAAAAIKk/JYzxdglol_g/s800/27-03-2015_233855.png "image")](https://lh4.googleusercontent.com/-huNZlq7NIcE/VRV7-JKW1AI/AAAAAAAAIKk/JYzxdglol_g/s1600/27-03-2015_233855.png)

[![image](https://lh6.googleusercontent.com/-8QCf1-RMQkA/VRV7-DSc6jI/AAAAAAAAIKA/nCHVF7UcTkA/s800/27-03-2015_233929.png "image")](https://lh6.googleusercontent.com/-8QCf1-RMQkA/VRV7-DSc6jI/AAAAAAAAIKA/nCHVF7UcTkA/s1600/27-03-2015_233929.png)

[![image](https://lh3.googleusercontent.com/-IRDSFa2HyI0/VRV7-6LS9iI/AAAAAAAAIKM/XsveK4Xy2yg/s800/27-03-2015_233947.png "image")](https://lh3.googleusercontent.com/-IRDSFa2HyI0/VRV7-6LS9iI/AAAAAAAAIKM/XsveK4Xy2yg/s1600/27-03-2015_233947.png)

[![image](https://lh6.googleusercontent.com/-VABId1pirqI/VRV7-taCKyI/AAAAAAAAIKQ/SCRmWkDDXYc/s800/27-03-2015_234003.png "image")](https://lh6.googleusercontent.com/-VABId1pirqI/VRV7-taCKyI/AAAAAAAAIKQ/SCRmWkDDXYc/s1600/27-03-2015_234003.png)

[![image](https://lh3.googleusercontent.com/-5LcHfPW5llk/VRV7_OzFGFI/AAAAAAAAIKU/wHbNlG9tRAE/s800/27-03-2015_234017.png "image")](https://lh3.googleusercontent.com/-5LcHfPW5llk/VRV7_OzFGFI/AAAAAAAAIKU/wHbNlG9tRAE/s1600/27-03-2015_234017.png)

[![image](https://lh4.googleusercontent.com/-NZWEkbvmLaw/VRV7_f1tkLI/AAAAAAAAIKg/xl7UAXjk5Ik/s800/27-03-2015_234428.png "image")](https://lh4.googleusercontent.com/-NZWEkbvmLaw/VRV7_f1tkLI/AAAAAAAAIKg/xl7UAXjk5Ik/s1600/27-03-2015_234428.png)

[![image](https://lh6.googleusercontent.com/-DH50DRN8Y4Y/VRV7_0q932I/AAAAAAAAILA/Dab4QRBGWpQ/s800/27-03-2015_234604.png "image")](https://lh6.googleusercontent.com/-DH50DRN8Y4Y/VRV7_0q932I/AAAAAAAAILA/Dab4QRBGWpQ/s1600/27-03-2015_234604.png)

[![image](https://lh4.googleusercontent.com/-Z4heWdL0x1U/VRV8AlN4iFI/AAAAAAAAIK4/zvnwyJ0eelo/s800/27-03-2015_234716.png "image")](https://lh4.googleusercontent.com/-Z4heWdL0x1U/VRV8AlN4iFI/AAAAAAAAIK4/zvnwyJ0eelo/s1600/27-03-2015_234716.png)

[![image](https://lh4.googleusercontent.com/-1ElXHWJuSg4/VRV8AsVIBMI/AAAAAAAAIK8/Ar8ET0GedPI/s800/27-03-2015_234733.png "image")](https://lh4.googleusercontent.com/-1ElXHWJuSg4/VRV8AsVIBMI/AAAAAAAAIK8/Ar8ET0GedPI/s1600/27-03-2015_234733.png)

[![image](https://lh3.googleusercontent.com/-toiihn5_2Go/VRV8BErxg5I/AAAAAAAAILI/drxcE14BjIM/s800/27-03-2015_234829.png "image")](https://lh3.googleusercontent.com/-toiihn5_2Go/VRV8BErxg5I/AAAAAAAAILI/drxcE14BjIM/s1600/27-03-2015_234829.png)

## Infix 转 Postfix

首先就是priority 列表：
> 1. ( )
> 
> 2. ^
> 
> 3. \* /
> 
> 4. \+ \-

基本流程是这样的：

- 若当前pointer指着的是一个operand，直接print出
- 若当前pointer指着的是一个operator：
	+ 若stack为空，push 入该operator
	+ 若stack最上方为`(`，push 入该operator
	+ 若当前operator为`)`，pop stack 并且print出，一直到遇到另一个`(`为止。（然后pop `(`，并且`(`和`)`皆不print出）
	+ 若当前operator的优先权高过stack最上方的operator，push 入该operator
	+ 若当前operator的优先权低过stack最上方的operator，pop stack的最上方，继续进行优先权比较，直到遇到一个比当前operator优先权低的operator为止。
	+ 若当前operator与stack最上方的operator同一优先权，pop stack再print出，然后push 入当前operator
- pointer抵达尾端后，pop出所有stack内的operator（`(`除外）


### 例子1：
> A + B * C + D - E / F
> 
> 1 + 2 * 3 + 4 - 5 / 5

[![image](https://lh3.googleusercontent.com/-VFzBnRB4Zb8/VWfCSvxl1CI/AAAAAAAAINg/lxxDECxny7Y/s800/28-03-2015_101858.png "image")](https://lh3.googleusercontent.com/-VFzBnRB4Zb8/VWfCSvxl1CI/AAAAAAAAINg/lxxDECxny7Y/s1600/28-03-2015_101858.png)

[![image](https://lh3.googleusercontent.com/-6gqe2rUBIUI/VWfCQ09x2NI/AAAAAAAAINI/x6byjjAtgHI/s800/28-03-2015_102022.png "image")](https://lh3.googleusercontent.com/-6gqe2rUBIUI/VWfCQ09x2NI/AAAAAAAAINI/x6byjjAtgHI/s1600/28-03-2015_102022.png)

[![image](https://lh3.googleusercontent.com/-sL-oTnMPZNA/VWfCQmz2DpI/AAAAAAAAINE/sWIiQ9oZWRc/s800/28-03-2015_102113.png "image")](https://lh3.googleusercontent.com/-sL-oTnMPZNA/VWfCQmz2DpI/AAAAAAAAINE/sWIiQ9oZWRc/s1600/28-03-2015_102113.png)

[![image](https://lh3.googleusercontent.com/-d4G3IHxQuAw/VWfCSqCXY-I/AAAAAAAAINc/MadCwfXsWoE/s800/28-03-2015_102154.png "image")](https://lh3.googleusercontent.com/-d4G3IHxQuAw/VWfCSqCXY-I/AAAAAAAAINc/MadCwfXsWoE/s1600/28-03-2015_102154.png)

[![image](https://lh3.googleusercontent.com/-Qt93bTph-88/VWfCTAvZbSI/AAAAAAAAINw/7aNDqw7KEjo/s800/28-03-2015_102509.png "image")](https://lh3.googleusercontent.com/-Qt93bTph-88/VWfCTAvZbSI/AAAAAAAAINw/7aNDqw7KEjo/s1600/28-03-2015_102509.png)

[![image](https://lh3.googleusercontent.com/-lpXkJCnYXXE/VWfCTh_C2dI/AAAAAAAAIOA/-A1Bms3EP3I/s800/28-03-2015_102549.png "image")](https://lh3.googleusercontent.com/-lpXkJCnYXXE/VWfCTh_C2dI/AAAAAAAAIOA/-A1Bms3EP3I/s1600/28-03-2015_102549.png)

[![image](https://lh3.googleusercontent.com/-W92dLRCFDEo/VWfCUqn4rwI/AAAAAAAAIOc/vfuKHS7WRvs/s800/28-03-2015_103901.png "image")](https://lh3.googleusercontent.com/-W92dLRCFDEo/VWfCUqn4rwI/AAAAAAAAIOc/vfuKHS7WRvs/s1600/28-03-2015_103901.png)

[![image](https://lh3.googleusercontent.com/-GAJ0VJiMrJA/VWfCTpTLUBI/AAAAAAAAIN0/cgUFaILO-98/s800/28-03-2015_103133.png "image")](https://lh3.googleusercontent.com/-GAJ0VJiMrJA/VWfCTpTLUBI/AAAAAAAAIN0/cgUFaILO-98/s1600/28-03-2015_103133.png)

[![image](https://lh3.googleusercontent.com/-UDgZmblQWJE/VWfCUPezSDI/AAAAAAAAIOQ/nsr2K8tYe3Y/s800/28-03-2015_102901.png "image")](https://lh3.googleusercontent.com/-UDgZmblQWJE/VWfCUPezSDI/AAAAAAAAIOQ/nsr2K8tYe3Y/s1600/28-03-2015_102901.png)

[![image](https://lh3.googleusercontent.com/-MmXEBRUMzJE/VWfCUmKHMtI/AAAAAAAAIOI/JYWOctEpKNE/s800/28-03-2015_103217.png "image")](https://lh3.googleusercontent.com/-MmXEBRUMzJE/VWfCUmKHMtI/AAAAAAAAIOI/JYWOctEpKNE/s1600/28-03-2015_103217.png)

[![image](https://lh3.googleusercontent.com/-tnNuRtXEVrE/VWfCVO8IsCI/AAAAAAAAIRU/7jT3JfIOL00/s800/28-03-2015_104105.png "image")](https://lh3.googleusercontent.com/-tnNuRtXEVrE/VWfCVO8IsCI/AAAAAAAAIRU/7jT3JfIOL00/s1600/28-03-2015_104105.png)

[![image](https://lh3.googleusercontent.com/-16J3mg7hIhY/VWfCVJCG-mI/AAAAAAAAIOk/7AYhPSBMvRE/s800/28-03-2015_104153.png "image")](https://lh3.googleusercontent.com/-16J3mg7hIhY/VWfCVJCG-mI/AAAAAAAAIOk/7AYhPSBMvRE/s1600/28-03-2015_104153.png)

[![image](https://lh3.googleusercontent.com/-mHkWQPwhDRQ/VWfCVSzd5MI/AAAAAAAAIOw/4wTAvzn0edw/s800/28-03-2015_104229.png "image")](https://lh3.googleusercontent.com/-mHkWQPwhDRQ/VWfCVSzd5MI/AAAAAAAAIOw/4wTAvzn0edw/s1600/28-03-2015_104229.png)

[![image](https://lh3.googleusercontent.com/-d0SORfgOLfQ/VWfCVk5ULLI/AAAAAAAAIRQ/mX8oaXcf18E/s800/28-03-2015_104333.png "image")](https://lh3.googleusercontent.com/-d0SORfgOLfQ/VWfCVk5ULLI/AAAAAAAAIRQ/mX8oaXcf18E/s1600/28-03-2015_104333.png)


### 例子2：

> ( ( A + B ) * ( C - D ^ E ) + F )
> 
> ( ( 1 + 2 ) * ( 3 - 4 ^ 5 ) + 6 )

[![image](https://lh3.googleusercontent.com/-HrI2_jGZeqo/VWfCVzWo5II/AAAAAAAAIO8/CZZq6u4CgR0/s800/28-03-2015_105140.png "image")](https://lh3.googleusercontent.com/-HrI2_jGZeqo/VWfCVzWo5II/AAAAAAAAIO8/CZZq6u4CgR0/s1600/28-03-2015_105140.png)

[![image](https://lh3.googleusercontent.com/-tIqupAy-COg/VWfCWD1E0mI/AAAAAAAAIRM/bpSGojcDRVU/s800/28-03-2015_105228.png "image")](https://lh3.googleusercontent.com/-tIqupAy-COg/VWfCWD1E0mI/AAAAAAAAIRM/bpSGojcDRVU/s1600/28-03-2015_105228.png)

[![image](https://lh3.googleusercontent.com/-Fhi24GQNqfU/VWfCWlRPdDI/AAAAAAAAIPU/a-uo80mDEps/s800/28-03-2015_105421.png "image")](https://lh3.googleusercontent.com/-Fhi24GQNqfU/VWfCWlRPdDI/AAAAAAAAIPU/a-uo80mDEps/s1600/28-03-2015_105421.png)

[![image](https://lh3.googleusercontent.com/-h3s0R_P2AOI/VWfCWk0ks_I/AAAAAAAAIPY/jjzQhEdgi0M/s800/28-03-2015_105309.png "image")](https://lh3.googleusercontent.com/-h3s0R_P2AOI/VWfCWk0ks_I/AAAAAAAAIPY/jjzQhEdgi0M/s1600/28-03-2015_105309.png)

[![image](https://lh3.googleusercontent.com/-jdM8zncPogc/VWfCW_RD-zI/AAAAAAAAIRI/QhEv15oTr-s/s800/28-03-2015_105819.png "image")](https://lh3.googleusercontent.com/-jdM8zncPogc/VWfCW_RD-zI/AAAAAAAAIRI/QhEv15oTr-s/s1600/28-03-2015_105819.png)

[![image](https://lh3.googleusercontent.com/-d6ETibYjZwo/VWfCXNzGgOI/AAAAAAAAIPk/BdA8K6OOLZY/s800/28-03-2015_105923.png "image")](https://lh3.googleusercontent.com/-d6ETibYjZwo/VWfCXNzGgOI/AAAAAAAAIPk/BdA8K6OOLZY/s1600/28-03-2015_105923.png)

[![image](https://lh3.googleusercontent.com/-h2f3c4-kmjo/VWfCXtk9zqI/AAAAAAAAIPs/eAMXxJJ6uZc/s800/28-03-2015_110112.png "image")](https://lh3.googleusercontent.com/-h2f3c4-kmjo/VWfCXtk9zqI/AAAAAAAAIPs/eAMXxJJ6uZc/s1600/28-03-2015_110112.png)

[![image](https://lh3.googleusercontent.com/-_LGJDymDsVQ/VWfCXgiy95I/AAAAAAAAIRE/aDo337YLI0k/s800/28-03-2015_110218.png "image")](https://lh3.googleusercontent.com/-_LGJDymDsVQ/VWfCXgiy95I/AAAAAAAAIRE/aDo337YLI0k/s1600/28-03-2015_110218.png)

[![image](https://lh3.googleusercontent.com/-udXKnibkINw/VWfCY7UQoJI/AAAAAAAAIQQ/4Mwe5VQeoqI/s800/28-03-2015_111255.png "image")](https://lh3.googleusercontent.com/-udXKnibkINw/VWfCY7UQoJI/AAAAAAAAIQQ/4Mwe5VQeoqI/s1600/28-03-2015_111255.png)

[![image](https://lh3.googleusercontent.com/-3RK49Z1wpt8/VWfCZFKn--I/AAAAAAAAIQ4/newZtUz0BsM/s800/28-03-2015_111308.png "image")](https://lh3.googleusercontent.com/-3RK49Z1wpt8/VWfCZFKn--I/AAAAAAAAIQ4/newZtUz0BsM/s1600/28-03-2015_111308.png)

[![image](https://lh3.googleusercontent.com/-oQSlOHKcp1w/VWfCYa8xWUI/AAAAAAAAIQE/Tfgi-y6WkwM/s800/28-03-2015_111333.png "image")](https://lh3.googleusercontent.com/-oQSlOHKcp1w/VWfCYa8xWUI/AAAAAAAAIQE/Tfgi-y6WkwM/s1600/28-03-2015_111333.png)

[![image](https://lh3.googleusercontent.com/-yy9qPyJFJjc/VWfCYJ2OKUI/AAAAAAAAIP4/ns4IAoj_U4U/s800/28-03-2015_111415.png "image")](https://lh3.googleusercontent.com/-yy9qPyJFJjc/VWfCYJ2OKUI/AAAAAAAAIP4/ns4IAoj_U4U/s1600/28-03-2015_111415.png)

[![image](https://lh3.googleusercontent.com/-4a8_WaSx8TE/VWfCYJeXMQI/AAAAAAAAIRA/xTQg3P32wgc/s800/28-03-2015_111459.png "image")](https://lh3.googleusercontent.com/-4a8_WaSx8TE/VWfCYJeXMQI/AAAAAAAAIRA/xTQg3P32wgc/s1600/28-03-2015_111459.png)

[![image](https://lh3.googleusercontent.com/-jyKXnGqFD_I/VWfCYpQioEI/AAAAAAAAIQ8/Q_QDAnNyo_M/s800/28-03-2015_111520.png "image")](https://lh3.googleusercontent.com/-jyKXnGqFD_I/VWfCYpQioEI/AAAAAAAAIQ8/Q_QDAnNyo_M/s1600/28-03-2015_111520.png)

[![image](https://lh3.googleusercontent.com/-4MRT3CQXHbY/VWfCZuDQkLI/AAAAAAAAIQs/6OPJfWwd_WY/s800/28-03-2015_111604.png "image")](https://lh3.googleusercontent.com/-4MRT3CQXHbY/VWfCZuDQkLI/AAAAAAAAIQs/6OPJfWwd_WY/s1600/28-03-2015_111604.png)

[![image](https://lh3.googleusercontent.com/-63wzAV8BzTA/VWfCZdD4mwI/AAAAAAAAIQc/cnT1jLvXfz4/s800/28-03-2015_111838.png "image")](https://lh3.googleusercontent.com/-63wzAV8BzTA/VWfCZdD4mwI/AAAAAAAAIQc/cnT1jLvXfz4/s1600/28-03-2015_111838.png)

[![image](https://lh3.googleusercontent.com/-B4Crj90WbL4/VWfCZxFJA7I/AAAAAAAAIQw/qxsnniJG3OA/s800/28-03-2015_111911.png "image")](https://lh3.googleusercontent.com/-B4Crj90WbL4/VWfCZxFJA7I/AAAAAAAAIQw/qxsnniJG3OA/s1600/28-03-2015_111911.png)

[![image](https://lh3.googleusercontent.com/-xg-XUtNubTQ/VWfCZzNgxnI/AAAAAAAAIQo/OiNC9xGw6YM/s800/28-03-2015_112042.png "image")](https://lh3.googleusercontent.com/-xg-XUtNubTQ/VWfCZzNgxnI/AAAAAAAAIQo/OiNC9xGw6YM/s1600/28-03-2015_112042.png)

[![image](https://lh3.googleusercontent.com/-WW7ISCozgdQ/VWfCaAzjl1I/AAAAAAAAIQ0/E2ZJ8mcJVY4/s800/28-03-2015_112114.png "image")](https://lh3.googleusercontent.com/-WW7ISCozgdQ/VWfCaAzjl1I/AAAAAAAAIQ0/E2ZJ8mcJVY4/s1600/28-03-2015_112114.png)

{% highlight csharp %}
static string infixToPostfix(string exp)
{
	Dictionary<char, int> priority = new Dictionary<char, int>()
	{
		{'(',4},{')',4},{'^',3},{'*',2},{'/',2},{'+',1},{'-',1}
	};
	Stack<char> opt = new Stack<char>();
	string postfix = "";
	foreach (char c in exp)
	{
		if (priority.ContainsKey(c))
		{
			if (opt.Count == 0)
			{
				opt.Push(c);
			}
			else
			{
				if (c == ')')
				{
					while (opt.Count > 0 && opt.Peek() != '(')
					{
						postfix += opt.Pop();
					}
					opt.Pop();
				}
				else if (opt.Peek() == '(')
				{
					opt.Push(c);
				}
				else if (priority[c] > priority[opt.Peek()])
				{
					opt.Push(c);
				}
				else if (priority[c] < priority[opt.Peek()])
				{
					while (opt.Count > 0 && priority[c] <= priority[opt.Peek()] && opt.Peek()!='(')
					{
						postfix += opt.Pop();
					}
					opt.Push(c);
				}
				else if (priority[c] == priority[opt.Peek()])
				{
					postfix += opt.Pop();
					opt.Push(c);
				}
			}
		}
		else
		{
			postfix += c.ToString().Trim();
		}
	}
	while (opt.Count > 0)
	{
		postfix += opt.Pop();
	}
	return postfix;
}

{% endhighlight %}
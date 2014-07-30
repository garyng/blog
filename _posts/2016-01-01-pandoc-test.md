---
layout: post
title: Pandoc Testing
author: Gary Ng
tags: [test]
---

# 【if..else】

之前我们用了两个if来检查MessageBox.Show 返回的值  

[![image](http://lh6.ggpht.com/-W_pVGjx76B0/UoBvgudrhXI/AAAAAAAAFmU/PYwVc0rNnHg/image_thumb.png?imgmax=800 "image")](http://lh4.ggpht.com/-oSjl3bt6Zfs/UoBvf4hAMNI/AAAAAAAAFmM/dmdIbON0Odc/s1600-h/image%25255B2%25255D.png)  
  
 你：有木有不打两个if 的方法？  
 我：没有..  
 你：一巴掌（啪  
 但是你可以用if .. else ..
来判断（你还是需要用到两个if，但是整个代码的结构会比较清晰）  
 之前的代码的运作流程是：  

> 1、先检测msg是否为Yes，如果是，运行代码  
>   
> \` 2、不管之前的检测是不是Yes，检测msg是不是No，如果是，运行代码
>
> > 1、先检测msg是否为Yes，如果是，运行代码  
> >   
> > \` 2、不管之前的检测是不是Yes，检测msg是不是No，如果是，运行代码

有没有发现到，两个if，代表msg **始终** 被检查了2次  
 但是如果msg
等于Yes的话，就代表他不会等于No，那我们只需要检查一次就够了  
 所以if .. else  
 在这儿就很好用了！  
 改进版的代码：  

[![image](http://lh3.ggpht.com/-SB-2mYcWyxA/UoBvhztf1DI/AAAAAAAAFmk/PpsDVApJ198/image_thumb%25255B1%25255D.png?imgmax=800 "image")](http://lh5.ggpht.com/-L7y6xSUksOI/UoBvhJj4q0I/AAAAAAAAFmc/F5ZrxIza9po/s1600-h/image%25255B5%25255D.png)  
  
 现在的代码流程就变成了  

> 1、如果msg等于Yes，Messagebox显示Yes，然后整个if 结构运行完毕  
>   
>  2、如果msg **不等于**Yes ， MessageBox 显示No, 整个if 结构运行完毕

现在最少只需要检测1次就行了！  
  

# 【if .. else if .. else】

  
 在form 上加上一个textbox  

[![image](http://lh3.ggpht.com/-vzER_Q5Z4JY/UoBvjHqCy0I/AAAAAAAAFm0/7F2Jos3gwTo/image_thumb%25255B2%25255D.png?imgmax=800 "image")](http://lh6.ggpht.com/-K8-VbXXtOTE/UoBviT6Q-BI/AAAAAAAAFms/hQFBQ7TQ-k0/s1600-h/image%25255B8%25255D.png)  
 然后在button 的 click event handler 之中清除之前的代码  

[![image](http://lh3.ggpht.com/-Y4HkctwZtkI/UoBvkTwhLSI/AAAAAAAAFnA/ZNR07FYW8Lw/image_thumb%25255B3%25255D.png?imgmax=800 "image")](http://lh3.ggpht.com/-now8hRHMZiY/UoBvjt40LsI/AAAAAAAAFm8/_yCrCGRU-FQ/s1600-h/image%25255B11%25255D.png)  
  
 现在我们要的是：  

> 1、检测textbox1之中的text是不是等于Hello，如果是的话，Messagebox
> 显示Hi  
>  2、检测textbox1之中的text是不是等于Bye，如果是的话，Messagebox
> 显示Goodbye  
>  3、如果都不是Hello或者Bye，Messagebox 显示 I don’t understand

现在这里有3个条件了！  
 所以 if .. else 不够用了  
 用if .. else if .. else吧！  
 if .. else if .. else 很像多个if 一起用  
 但是结构会比较清晰  
 现在我们先用多个if 来实现  

[![image](http://lh5.ggpht.com/-zLqxjPXGzXI/UoBvlsLmvaI/AAAAAAAAFnU/E14MuthH-88/image_thumb%25255B4%25255D.png?imgmax=800 "image")](http://lh4.ggpht.com/-GArclyGLWhE/UoBvk5DAJAI/AAAAAAAAFnI/Zt1ezZvZ5vk/s1600-h/image%25255B14%25255D.png)  
 然后运行试试看：  

[![image](http://lh6.ggpht.com/-lIMnGkH4J00/UoBvm3jCBpI/AAAAAAAAFnk/Wa3U2K9DncU/image_thumb%25255B5%25255D.png?imgmax=800 "image")](http://lh3.ggpht.com/-X7gj6q0OKi0/UoBvmNaek5I/AAAAAAAAFnc/nap7fbkEaqI/s1600-h/image%25255B17%25255D.png)  

[![image](http://lh6.ggpht.com/-JreTaQzy2Ag/UoBvoE8hZcI/AAAAAAAAFn0/RGDqay8GMUI/image_thumb%25255B6%25255D.png?imgmax=800 "image")](http://lh4.ggpht.com/-Km7nKCc3GSM/UoBvnUhSe0I/AAAAAAAAFns/1LD6C_Z4zJ4/s1600-h/image%25255B20%25255D.png)  
  
 但是如果不是Hi或者是Bye，却没有输出！  
 你：直接在if最下加入mesagebox 就好了嘛！  
 聪明！  

[![image](http://lh4.ggpht.com/-D9MQF5QOENM/UoBvpvXhMoI/AAAAAAAAFoE/Wmwh3I3M7sU/image_thumb%25255B8%25255D.png?imgmax=800 "image")](http://lh4.ggpht.com/-ctOOsp0z3nw/UoBvo5B85zI/AAAAAAAAFn8/8ph1erMPPwk/s1600-h/image%25255B26%25255D.png)  
  

[![image](http://lh5.ggpht.com/-VdpEO59rqts/UoBvq84xh7I/AAAAAAAAFoU/AlKM8arOgM0/image_thumb%25255B9%25255D.png?imgmax=800 "image")](http://lh3.ggpht.com/-MMkXUw0wxcI/UoBvqKDONKI/AAAAAAAAFoM/z87Wh7WdF18/s1600-h/image%25255B29%25255D.png)  
  
 但是一样的，多个if 就等于要有多个检测！  
 所以我们改成用if .. else if .. else 的话就变成了  

[![image](http://lh6.ggpht.com/-8_pAkq5YBRY/UoBvr_0Oa6I/AAAAAAAAFok/dj0vgQdcxCE/image_thumb%25255B10%25255D.png?imgmax=800 "image")](http://lh6.ggpht.com/-OmgkLR3NmFk/UoBvrYy4kkI/AAAAAAAAFoY/So58204GjJ4/s1600-h/image%25255B32%25255D.png)  
 如果是Hello，messagebox显示 Hi  
 如果是Bye ，messagebox 显示 Goodbye  
 如果都不是Hello 或者bye，Messagebox 显示 I don’t understand

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Drawing;

namespace MazeGen
{
    public class Node
    {
        private bool _isFrontier;
        private List<ParentInfo> _parentInfo = new List<ParentInfo>();
        private bool _isBacktracked;

        private bool _isStart;
        private Point _pos;
        private const int _count = 4;
        private Node _down;
        private Node _up;
        private Node _right;
        private Node _left;

        /// <summary>
        /// Status of the four wall
        /// 0 = still there
        /// 1 = destroyed
        ///  ____________________
        /// |Left|Down|Right| Up |
        /// |_8__|_4__|__2__|_0__|
        /// </summary>
        private int _wall = 0;

        /// <summary>
        /// Mark the wall as destroyed
        /// </summary>
        /// <param name="index">Up = 0 Left = 1 Down = 2 Right = 3</param>
        public void UnWall(int index)
        {
            _wall |= 1 << index;
        }

        /// <summary>
        /// Get a wall's status
        /// </summary>
        /// <param name="index"></param>
        /// <returns>True = Wall destroyed </returns>
        public bool GetWall(int index)
        {
            return (_wall & (1 << index)) == (1 << index);
        }

        /// <summary>
        /// Mark the wall as not destroyed
        /// </summary>
        /// <param name="index"></param>
        public void SetWall(int index)
        {
            _wall &= ~(1 << index);
        }

        public Node this[int index]
        {
            get
            {
                return SwitchNodeProp(index);
            }
            set
            {
                SwitchNodeProp(index, value);
            }
        }

        private Node SwitchNodeProp(int index, Node value = null)
        {
            switch (index)
            {
                case 0:
                    return ReturnNodeProp(ref _up, value);
                case 1:
                    return ReturnNodeProp(ref _right, value);
                case 2:
                    return ReturnNodeProp(ref _down, value);
                case 3:
                    return ReturnNodeProp(ref _left, value);
            }

            return null;
        }
        private Node ReturnNodeProp(ref Node prop, Node value = null)
        {
            if (value == null)
            {
                return prop;
            }
            else
            {
                prop = value;
                return null;
            }
        }

        public Node Left
        {
            get
            {
                return _left;
            }
            set
            {
                _left = value;
            }
        }
        public Node Right
        {
            get
            {
                return _right;
            }
            set
            {
                _right = value;
            }
        }
        public Node Up
        {
            get
            {
                return _up;
            }
            set
            {
                _up = value;
            }
        }
        public Node Down
        {
            get
            {
                return _down;
            }
            set
            {
                _down = value;
            }
        }
        public int Count
        {
            get
            {
                return _count;
            }
        }
        public int Wall
        {
            get
            {
                return _wall;
            }
            set
            {
                _wall = value;
            }
        }
        public bool isStart
        {
            get
            {
                return _isStart;
            }
            set
            {
                _isStart = value;
            }
        }
        public Point Pos
        {
            get
            {
                return _pos;
            }
            set
            {
                _pos = value;
            }
        }

        /// <summary>
        /// For recursive backtracking and Growing Tree
        /// </summary>
        public bool isBacktracked
        {
            get
            {
                return _isBacktracked;
            }
            set
            {
                _isBacktracked = value;
            }
        }

        /// <summary>
        /// For Prim's algorithm
        /// A list of parents
        /// </summary>
        public List<ParentInfo> parentInfo
        {
            get
            {
                return _parentInfo;
            }
            set
            {
                _parentInfo = value;
            }
        }

        /// <summary>
        /// For Prim's AQlgorithm
        /// Mark a node as frontier
        /// </summary>
        public bool isFrontier
        {
            get
            {
                return _isFrontier;
            }
            set
            {
                _isFrontier = value;
            }
        }
    }
}
```

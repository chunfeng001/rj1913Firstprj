<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/11
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <base href="#">

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米商城</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <style>
        .items{
            width:100%;
            hieght:250px;
            overflow-y:scroll
        }
        .item{
            margin-bottom:20px;
        }
    </style>
</head>

<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="index.jsp" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="">MIUI</a></li>
                <li>|</li>
                <li><a href="">米聊</a></li>
                <li>|</li>
                <li><a href="">游戏</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">小米商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="CartServlet">购物车</a></div>

            <div class="fr">
                <ul>
                    <%
                        String isLogin = (String)session.getAttribute("isLogin");
                        String username =(String)session.getAttribute("username");
                        if(username!=null){
                            System.out.println("登录成功");
                    %>
                    <li><%=username %></li>
                    <li><a href="UserServlet?operate=selfinfo">个人中心</a></li>
                    <li><a href="UserServlet?operate=logout">退出登录 </a> </li>
                    <% }else{%>

                    <li><a href="login.html" >登录</a></li>
                    <li>|</li>
                    <li><a href="register.jsp" >注册</a></li>
                    <li>|</li>
                    <li><a href="">消息通知</a></li>
                    <%} %>


                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
    <a href="./index.html" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="#" onclick="goodlistByName('小米')" >小米</a></li>
            <li><a href="#" onclick="goodlistByName('红米')">红米</a></li>
            <li><a href="#" onclick="goodlistByName('游戏手机')">游戏手机</a></li>
            <li><a href="#" onclick="goodlistByName('笔记本')">笔记本</a></li>
            <li><a href="#" onclick="goodlistByName('电视')">电视</a></li>
            <li><a href="">盒子·影音</a></li>
            <li><a href="">路由器</a></li>
            <li><a href="">智能硬件</a></li>
            <li><a href="">服务</a></li>
            <li><a href="">社区</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="searchgoodinfo" method="post">
            <div class="text fl">
                <input type="text" class="shuru" name="good_name"  id="gdName" placeholder="小米6&nbsp;小米MIX现货">
            </div>
            <div class="submit fl">
                <input type="button" class="sousuo" value="搜索" onclick="searchBygdname()"/>
                <input type="hidden" id="operate" name="operate" value="search"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<!-- end banner_x -->

<!-- start banner_y -->
<div class="banner_y center">
    <div class="nav">
        <ul>
            <li  >
                <a href="">手机</a>
                <a href="">电话卡</a>
                <div class="pop" >
                    <div class="left fl"  id="leftphonecardDiv">


                    </div>
                    <div class="ctn fl"  id="ctnphonecardDiv">


                    </div>
                    <div class="right fl"  id="rightphonecardDiv">


                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">笔记本</a>
                <a href="">平板</a>
                <div class="pop"  >
                    <div class="left fl" id="leftnotebookDiv" >

                    </div>
                    <div class="ctn fl"  id="ctnnotebookDiv">

                    </div>
                    <div class="right fl"  id="rightnotebookDiv">

                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">电视</a>
                <a href="">盒子</a>
                <div class="pop"  >
                    <div class="left fl" id="lefttvDiv">

                    </div>
                    <div class="ctn fl"  id="ctntvDiv">


                    </div>
                    <div class="right fl"  id="righttvDiv">


                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">路由器</a>
                <a href="">智能硬件</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">移动电源</a>
                <a href="">电池</a>
                <a href="">插线板</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">耳机</a>
                <a href="">音箱</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">保护套</a>
                <a href="">贴膜</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">线材</a>
                <a href="">支架</a>
                <a href="">储存卡</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">箱包</a>
                <a href="">服饰</a>
                <a href="">鞋</a>
                <a href="">眼镜</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">米兔</a>
                <a href="">生活周边</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
        </ul>
    </div>

</div>

<div class="sub_banner center">
    <div class="sidebar fl">
        <div class="fl"><a href=""><img src="./image/hjh_01.gif"></a></div>
        <div class="fl"><a href=""><img src="./image/hjh_02.gif"></a></div>
        <div class="fl"><a href=""><img src="./image/hjh_03.gif"></a></div>
        <div class="fl"><a href=""><img src="./image/hjh_04.gif"></a></div>
        <div class="fl"><a href=""><img src="./image/hjh_05.gif"></a></div>
        <div class="fl"><a href=""><img src="./image/hjh_06.gif"></a></div>
        <div class="clear"></div>
    </div>
    <div class="datu fl"><a href=""><img src="./image/hongmi4x.png" alt=""></a></div>
    <div class="datu fl"><a href=""><img src="./image/xiaomi5.jpg" alt=""></a></div>
    <div class="datu fr"><a href=""><img src="./image/pinghengche.jpg" alt=""></a></div>
    <div class="clear"></div>


</div>
<!-- end banner -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">小米明星单品</div>
    <div class="main center">
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="goods_details.jsp?key=detail&operate=小米10"><img src="./image/xm10zm.png" alt=""></a></div>
            <div class="pinpai"><a href="goods_details.jsp?key=detail&operate=小米10">小米10</a></div>
            <div class="youhui">5月9日-21日享花呗12期分期免息</div>
            <div class="jiage">2899元起</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="goods_details.jsp?key=detail&operate=黑鲨3"><img src="./image/HS3.png" alt=""></a></div>
            <div class="pinpai"><a href="goods_details.jsp?key=detail&operate=黑鲨3">黑鲨3</a></div>
            <div class="youhui">5月9日-10日，下单立减200元</div>
            <div class="jiage">3999元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="goods_details.jsp?key=detail&operate=Redmi G 游戏本"><img src="./image/RedmiGyxb.png" alt=""></a></div>
            <div class="pinpai"><a href="goods_details.jsp?key=detail&operate=Redmi G 游戏本">Redmi G 游戏本</a></div>
            <div class="youhui">5月9日-10日，下单立减100元</div>
            <div class="jiage">5299元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="goods_details.jsp?key=detail&operate=Redmi智能电视 MAX"><img src="./image/RedmiZNTV_mn.png" alt=""></a></div>
            <div class="pinpai"><a href="goods_details.jsp?key=detail&operate=Redmi智能电视 MAX">Redmi智能电视 MAX</a></div>
            <div class="youhui">5月9日，下单立减200元</div>
            <div class="jiage">19999元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="goods_details.jsp?key=detail&operate=小米透明电视"><img src="./image/xmTMTV.png" alt=""></a></div>
            <div class="pinpai"><a href="goods_details.jsp?key=detail&operate=小米透明电视">小米透明电视</a></div>
            <div class="youhui">更轻更薄，像杂志一样随身携带</div>
            <div class="jiage">49999元起</div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="peijian w">
    <div class="biaoti center">配件</div>
    <div class="main center">
        <div class="content">
            <div class="remen fl"><a href=""><img src="./image/peijian1.jpg"></a>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span>新品</span></div>
                <div class="tu"><a href=""><img src="./image/peijian2.jpg"></a></div>
                <div class="miaoshu"><a href="">小米6 硅胶保护套</a></div>
                <div class="jiage">49元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="./image/peijian3.jpg"></a></div>
                <div class="miaoshu"><a href="">小米手机4c 小米4c 智能</a></div>
                <div class="jiage">29元</div>
                <div class="pingjia">372人评价</div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:red">享6折</span></div>
                <div class="tu"><a href=""><img src="./image/peijian4.jpg"></a></div>
                <div class="miaoshu"><a href="">红米NOTE 4X 红米note4X</a></div>
                <div class="jiage">19元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="./image/peijian5.jpg"></a></div>
                <div class="miaoshu"><a href="">小米支架式自拍杆</a></div>
                <div class="jiage">89元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="content">
            <div class="remen fl"><a href=""><img src="./image/peijian6.png"></a>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="./image/peijian7.jpg"></a></div>
                <div class="miaoshu"><a href="">小米指环支架</a></div>
                <div class="jiage">19元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="./image/peijian8.jpg"></a></div>
                <div class="miaoshu"><a href="">米家随身风扇</a></div>
                <div class="jiage">19.9元</div>
                <div class="pingjia">372人评价</div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="./image/peijian9.jpg"></a></div>
                <div class="miaoshu"><a href="">红米4X 高透软胶保护套</a></div>
                <div class="jiage">59元</div>
                <div class="pingjia">775人评价</div>
            </div>
            <div class="remenlast fr">
                <div class="hongmi"><a href=""><img src="./image/hongmin4.png" alt=""></a></div>
                <div class="liulangengduo"><a href=""><img src="./image/liulangengduo.png" alt=""></a></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>
</body>
</html>
<script>
    function Init() {
        var  username="23/*-/*";
        var password="**//?";
        $.get(
            "usercontrol",
            {"username":username,"password":password},
            function (data) {

            }
        );
        var leftphonecardDiv = document.getElementById("leftphonecardDiv");
        var ctnphonecardDiv = document.getElementById("ctnphonecardDiv");
        var rightphonecardDiv = document.getElementById("rightphonecardDiv");

        var leftnotebookDiv = document.getElementById("leftnotebookDiv");
        var ctnnotebookDiv = document.getElementById("ctnnotebookDiv");
        var rightnotebookDiv = document.getElementById("rightnotebookDiv");

        var lefttvDiv = document.getElementById("lefttvDiv");
        var ctntvDiv = document.getElementById("ctntvDiv");
        var righttvDiv = document.getElementById("righttvDiv");

        $.get(
            "indexgoodlist",
            {"phonecardDiv":"手机 电话卡","notebookDiv":"笔记本 平板","tvDiv":"电视 盒子"},
            function( data) {
                var firstcount=0;
                var secondcount=0;
                var thirdcount=0;
               var jsonobj= JSON.parse(data);
               for(var i=0;i<jsonobj.length;i++) {
                   var temp=jsonobj[i];
                   var tname="";
                   tname=jsonobj[i].tName;
                   console.log(tname);
                   console.log(temp.goodinfos.length);

                   var div1=" <div > ";
                   var div2="<div class='xuangou_left fl'>";
                   var div3='';
                   var div4='';
                   var div5='';
                   var div6=' <div class="clear"></div></a></div>';
                   var div7='';
                   var div8='<div class="clear"></div></div>';
                   var flag;


                   for(var j=0;j<temp.goodinfos.length;j++){
                       flag=0;
                       for(var k=j+1;k<temp.goodinfos.length;k++){
                           if(temp.goodinfos[j].gdName==temp.goodinfos[k].gdName){
                               flag=1;
                               break;
                           }
                       }
                       div3='<a href="searchlist.jsp?'+temp.goodinfos[j].gdName+'">';
                       div4='<div class="img fl"><img src="'+temp.goodinfos[j].gdImagemini+'" alt=""></div>';
                       div5=' <span class="fl">'+temp.goodinfos[j].gdName+'</span>';
                       div7='<div class="xuangou_right fr"><a href="goods_details.jsp?key=detail&operate='+temp.goodinfos[j].gdName+'">选购</a></div>';
                       var content =div1+div2+div3+div4+div5+div6+div7+div8;

                   if(tname.indexOf("手机")!=-1||tname.indexOf("电话卡")!=-1){
                       console.log("inner 手机");
                           if(flag!=1){

                               if(firstcount+1>6&&firstcount+1<=12){
                                   ctnphonecardDiv.innerHTML+=content;
                               }else if(firstcount+1>12){
                                   rightphonecardDiv.innerHTML+=content;
                               }else{
                                   leftphonecardDiv.innerHTML+=content;
                               }
                               firstcount++;
                           }
                       } else if(tname.indexOf("笔记本")!=-1||tname.indexOf("平板")!=-1){
                       console.log("inner 笔记本");
                       if(flag!=1){

                           if(secondcount+1>6&&secondcount+1<=12){
                               ctnnotebookDiv.innerHTML+=content;
                           }else if(secondcount+1>12){
                               rightnotebookDiv.innerHTML+=content;
                           }else{
                               leftnotebookDiv.innerHTML+=content;
                           }
                           secondcount++;
                       }
                   } else if(tname.indexOf("电视")!=-1||tname.indexOf("盒子")!=-1){
                       console.log("inner 电视");
                       if(flag!=1){

                           if(thirdcount+1>6&&thirdcount+1<=12){
                              ctntvDiv.innerHTML+=content;
                           }else if(thirdcount+1>12){
                               righttvDiv.innerHTML+=content;
                           }else{
                               lefttvDiv.innerHTML+=content;
                           }
                           thirdcount++;
                       }
                   }
                   }

               }
            }
        );
    }
    Init();
    function searchBygdname() {
        var reqhref="searchlist.jsp"+"?"+$("#gdName").val();
        window.location.href=reqhref;
    }
    function goodlistByName(name){
        console.log(name);
        var reqhref="goods_list.jsp?key=goodlist&operate="+name;
        console.log(reqhref)
        window.location.href=reqhref;
    }

</script>
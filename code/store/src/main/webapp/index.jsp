<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页菜单</title>
    <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_seb9wnhm9ap.css">
    <link rel="stylesheet" href="css/HomePage.css">
</head>

<body>
<div class="top flex">
    <a class="logo flex center" href="#">
        <span class="iconfont icon-twitter"></span>
        <h1>二次元商城</h1>
    </a>
    <div class="top-menu center flex">
        <ul class="top-nav flex center flex-between">
            <li><a href="#">官网</a></li>
            <li><a href="#">商城</a></li>
            <li><a href="#">企业团购</a></li>
            <li><a href="#">手机App</a></li>
            <li><a href="#">资质证照</a></li>
            <li><a href="#">加入我们</a></li>
        </ul>
    </div>
    <div class="top-wrap flex center">
        <div class="login-wrap">
            <a href="<%=application.getContextPath()%>/jsp/login.jsp">登录</a>
            <span>|</span>
            <a href="<%=application.getContextPath()%>/jsp/signup.jsp">注册</a>
        </div>
        <div class="shopping-cart flex center transition-3">
            <span class="iconfont icon-gouwuche"></span>
            <p>购物车(0)</p>
        </div>
    </div>
</div>
<div class="banner">
    <div class="item active" style="background-image: url(img/banner01.jpg);">
        <div class="shadow"></div>
        <div class="content">
            <div class="icon">
                <i class="iconfont  icon-qingtian"></i>
            </div>
            <div class="text">
                <div class="tit">抓鱼的猫猫</div>
                <div class="sub">什么？你居然说我在摸鱼？不过好像还真是...</div>
            </div>
        </div>
    </div>
    <div class="item" style="background-image: url(img/banner02.jpg);">
        <div class="shadow"></div>
        <div class="content">
            <div class="icon">
                <i class="iconfont icon-yintian"></i>
            </div>
            <div class="text">
                <div class="tit">迷迭香</div>
                <div class="sub">其实我什么都知道的...</div>
            </div>
        </div>
    </div>
    <div class="item" style="background-image: url(img/banner03.jpg);">
        <div class="shadow"></div>
        <div class="content">
            <div class="icon">
                <i class="iconfont icon-zhongyu"></i>
            </div>
            <div class="text">
                <div class="tit">沐浴</div>
                <div class="sub">笨蛋！不许偷看</div>
            </div>
        </div>
    </div>
    <div class="item" style="background-image: url(img/banner04.jpg);">
        <div class="shadow"></div>
        <div class="content">
            <div class="icon">
                <i class="iconfont icon-yewan"></i>
            </div>
            <div class="text">
                <div class="tit">注视</div>
                <div class="sub">让我再多看你一会，就最后一眼！</div>
            </div>
        </div>
    </div>
    <div class="item" style="background-image: url(img/banner05.jpg);">
        <div class="shadow"></div>
        <div class="content">
            <div class="icon">
                <i class="iconfont icon-daxue"></i>
            </div>
            <div class="text">
                <div class="tit">珐露珊</div>
                <div class="sub">啊？什么？年纪大听不见，先叫声前辈听听吧~</div>
            </div>
        </div>
    </div>
</div>
<div class="main">
    <div class="wrap flex center">
        <div class="container flex">
            <div class="img">
                <img src="img/product_img/manhua-main.webp" alt="!" width="440" height="706">
            </div>
            <div class="item">
                <ul class="flex">
                    <li>
                        <a href="https://www.bilibili.com/bangumi/play/ep267851?spm_id_from=333.337.0.0&from_spmid=666.25.episode.0">
                            <img src="img/product_img/manhua01.png" alt="!" width="240" height="398">
                            <h4>鬼灭之刃</h4>
                            <span>59元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/manhua02.webp" alt="!" width="658" height="1078">
                            <h4>LAB</h4>
                            <span>42元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/manhua03.webp" alt="!" width="500" height="714">
                            <h4>嘘</h4>
                            <span>21元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/manhua04.webp" alt="!" width="564" height="803">
                            <h4>机器坏死</h4>
                            <span>34元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/manhua05.webp" alt="!" width="86" height="122">
                            <h4>银河</h4>
                            <span>39元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.gotokp.com/detail/82772.html">
                            <img src="img/product_img/manhua06.webp" alt="!" width="658" height="944">
                            <h4>人渣的本愿</h4>
                            <span>39元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/manhua07.webp" alt="!" width="240" height="320">
                            <h4>吉卜的风</h4>
                            <span>27元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://movie.douban.com/subject/30513783/">
                            <img src="img/product_img/manhua08.webp" alt="!" width="240" height="341">
                            <h4>无职转生</h4>
                            <span>57元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <div class="wrap flex center">
        <div class="container flex">
            <div class="img">
                <img src="img/product_img/chahua-main.webp" alt="!" width="658" height="1426">
            </div>
            <div class="item">
                <ul class="flex">
                    <li>
                        <a href="#">
                            <img src="img/product_img/chahua01.webp" alt="!" width="576" height="931">
                            <h4>荧妹</h4>
                            <span>59元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/sier.jpg" alt="!" width="658" height="1045">
                            <h4>史尔特尔</h4>
                            <span>42元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/peilika.jpg" alt="!" width="658" height="411">
                            <h4>佩里卡</h4>
                            <span>21元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/chahua02.png" alt="!" width="658" height="1045">
                            <h4>碧蓝航线</h4>
                            <span>42元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/chahua03.png" alt="!" width="658" height="411">
                            <h4>Arangr</h4>
                            <span>21元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/chahua04.webp" alt="!" width="658" height="924">
                            <h4>初音未来</h4>
                            <span>34元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/chahua05.png" alt="!" width="658" height="1170">
                            <h4>澄闪</h4>
                            <span>39元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/chahua06.webp" alt="!" width="658" height="931">
                            <h4>铃兰</h4>
                            <span>39元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>


                </ul>
            </div>
        </div>
    </div>
    <div class="wrap flex center">
        <div class="container flex">
            <div class="img">
                <img src="img/product_img/shouban-main.png" alt="!" width="440" height="706">
            </div>
            <div class="item">
                <ul class="flex">
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban01.png" alt="!" width="240" height="398">
                            <h4>初音未来</h4>
                            <span>59元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban02.png" alt="!" width="658" height="1078">
                            <h4>甘雨</h4>
                            <span>42元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban03.webp" alt="!" width="500" height="714">
                            <h4>ask</h4>
                            <span>21元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban04.webp" alt="!" width="564" height="803">
                            <h4>莫娜</h4>
                            <span>34元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban05.png" alt="!" width="86" height="122">
                            <h4>亚丝娜</h4>
                            <span>39元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban06.webp" alt="!" width="658" height="944">
                            <h4>阿米娅</h4>
                            <span>39元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban07.webp" alt="!" width="240" height="320">
                            <h4>W</h4>
                            <span>27元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/product_img/shouban08.webp" alt="!" width="240" height="341">
                            <h4>能天使</h4>
                            <span>57元</span>
                            <div class="mask">
                                <span class="iconfont icon-gouwuche"></span>
                                <span class="iconfont icon-fangdajing"></span>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="foot-box">
        <dl>
            <div>
                <dt>
                    <h5>选购指南</h5>
                </dt>
                <dd>
                    <p>漫画</p>
                </dd>
                <dd>
                    <p>插画</p>
                </dd>
                <dd>
                    <p>手办</p>
                </dd>
            </div>
            <div>
                <dt>
                    <h5>服务中心</h5>
                </dt>
                <dd>
                    <p>申请售后</p>
                </dd>
                <dd>
                    <p>售后政策</p>
                </dd>
                <dd>
                    <p>维修服务</p>
                </dd>
            </div>
            <div>
                <dt>
                    <h5>线下门店</h5>
                </dt>
                <dd>
                    <p>吴彦之家</p>
                </dd>
                <dd>
                    <p>服务网点</p>
                </dd>
            </div>
            <div>
                <dt>
                    <h5>Mozilla</h5>
                </dt>
                <dd>
                    <p>新浪微博</p>
                </dd>
                <dd>
                    <p>联系我们</p>
                </dd>
                <dd>
                    <p>官方微信</p>
                </dd>
            </div>
        </dl>
    </div>
    <div class="about">
        <span class="iconfont icon-github"></span>
        <p>关注我们</p>
    </div>
</div>
<div class="position-menu">
    <a href="#">
        <span class="iconfont icon-Rrl_s_065"></span>
    </a>
    <span class="iconfont icon-fangdajing"></span>
    <span class="iconfont icon-kefu"></span>
    <span class="iconfont icon-gouwuche"></span>
</div>
<script src="js/heme-page.js"></script>
</body>
</html>


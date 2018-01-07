<%--
  Created by IntelliJ IDEA.
  User: ho
  Date: 2017/10/23
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.zzp.YiYang.pojo.Icon" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href=" <%=basePath%>">
    <base src=" <%=basePath%>">
    <meta charset="UTF-8"/>
    <title>艺扬服饰商城</title>

    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="icon" href="img/favicon/favicon.html" type="image/x-icon"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="img/favicon/apple-touch-icon-144x144-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/apple-touch-icon-72x72-precomposed.html">
    <link rel="apple-touch-icon-precomposed" href="img/favicon/apple-touch-icon-precomposed.html">

    <link rel="stylesheet" href="css/minified.css">
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>');</script>
    <script src="js/modernizr.min.js"></script>
    <link rel="stylesheet" href="css/innerpage.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/responsive.css">
    <style type="text/css">
        .girl-clothes {
            height: 260px;
        }

        .boy-clothes {
            height: 210px;
        }
    </style>
</head>
<body>

<div id="page-wrapper">

    <header id="site-header" role="banner">
        <div class="header-top" style="background: #FFF">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-7">
                        <div class="contact-info">
                            <i class="iconfont-headphones round-icon"></i>
                            <strong>+400 (180) 1234</strong>
                            <span>(周一至周五: 09.00 - 21.00)</span>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-5">
                        <ul class="actions unstyled clearfix">
                            <li>
                                <div class="search-box">
                                    <form action="#" method="post">
                                        <div class="input-iconed prepend">
                                            <button class="input-icon"><i class="iconfont-search"></i></button>
                                            <label for="input-search" class="placeholder">在这里搜索…</label>
                                            <input type="text" name="q" id="input-search" class="round-input full-width"
                                                   required/>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li data-toggle="sub-header" data-target="#sub-social">
                                <a href="javascript:void(0);" id="social-icons">
                                    <i class="iconfont-share round-icon"></i>
                                </a>

                                <div id="sub-social" class="sub-header">
                                    <ul class="social-list unstyled text-center">
                                        <li><a href="#"><i class="iconfont-facebook round-icon"></i></a></li>
                                        <li><a href="#"><i class="iconfont-twitter round-icon"></i></a></li>
                                        <li><a href="#"><i class="iconfont-google-plus round-icon"></i></a></li>
                                        <li><a href="#"><i class="iconfont-pinterest round-icon"></i></a></li>
                                        <li><a href="#"><i class="iconfont-rss round-icon"></i></a></li>
                                    </ul>
                                </div>
                            </li>
                            <li data-toggle="sub-header" data-target="#sub-cart">
                                <a href="javascript:void(0);" id="total-cart">
                                    <i class="iconfont-shopping-cart round-icon"></i>
                                </a>

                                <div id="sub-cart" class="sub-header">
                                    <div class="cart-header">
                                        <span>你的购物车目前是空的</span>
                                        <small><a href="cart.html">(查看所有)</a></small>
                                    </div>
                                    <ul class="cart-items product-medialist unstyled clearfix"></ul>
                                    <div class="cart-footer">
                                        <div class="cart-total clearfix">
                                            <span class="pull-left uppercase">Total</span>
                                            <span class="pull-right total">$ 0</span>
                                        </div>
                                        <div class="text-right">
                                            <a href="cart.html" class="btn btn-default btn-round view-cart">View
                                                Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="cart-notification">
                <ul class="unstyled"></ul>
            </div>
        </div>
        <div class="main-header-wrapper">
            <div class="container">
                <div class="main-header">
                    <div class="actions">
                        <div class="center-xs">

                        </div>
                        <div class="clearfix"></div>
                        <nav id="tiny-menu" class="clearfix">
                            <ul class="user-menu">
                                <li><a href="user/order">我的账户</a></li>
                                <li><a href="user/setPassword">修改密码</a></li>
                                <li><a href="login">登录/注册</a></li>
                                <%--<li><a href="#">注册</a></li>--%>
                                <li><a href="j_spring_security_logout ">退出</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="logo-wrapper">
                        <a href="index.html" class="logo" title="GFashion - Responsive e-commerce HTML Template">
                            <h1>艺扬 <small>服饰商城</small></h1>
                        </a>
                    </div>
                    <nav id="site-menu" role="navigation">
                        <ul class="main-menu hidden-sm hidden-xs">
                            <li>
                                <a href="index">首页</a>
                            </li>
                            <li>
                                <a href="icons">图标</a>
                            </li>
                            <li>
                                <a href="user/clothes_make">衬衫定制</a>
                            </li>
                            <li class="active">
                                <a href="user/cart">购物车</a>
                            </li>
                            <li>
                                <a href="user/order">我的订单</a>
                            </li>
                            <li>
                                <a href="new/index.html">即将上线</a>
                            </li>
                        </ul>

                        <div id="mobile-menu" class="dl-menuwrapper visible-xs visible-sm">
                            <button class="dl-trigger"><i class="iconfont-reorder round-icon"></i></button>
                            <ul class="dl-menu">
                                <li>
                                    <a href="index">首页</a>
                                </li>
                                <li>
                                    <a href="icons">图标</a>
                                </li>
                                <li>
                                    <a href="user/clothes_make">衬衫定制</a>
                                </li>
                                <li class="active">
                                    <a href="user/cart">购物车</a>
                                </li>
                                <li>
                                    <a href="user/order">我的订单</a>
                                </li>
                            </ul>
                        </div>

                    </nav>
                </div>
            </div>
        </div>
    </header>

    <div class="breadcrumb-container">
        <div class="container">
            <div class="relative">
                <ul class="bc unstyled clearfix">
                    <li><a href="#">首页</a></li>
                    <li class="active">购物车</li>
                </ul>
            </div>
        </div>
    </div>
    <main id="main-content" role="main">

        <section class="section">
            <div class="container">

                <table class="tbl-cart">
                    <thead>
                    <tr>
                        <th>产品名称</th>
                        <th style="width: 15%;">单价</th>
                        <th style="width: 15%;">数量</th>
                        <th class="hidden-xs" style="width: 15%;">合计</th>
                        <th style="width: 15%;">尺码</th>
                        <th class="hidden-xs" style="width: 10%;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="hide empty-cart">
                        <td colspan="5">
                            您的购物车为空，您可以查看我们的<a href="user/clothes_make">商品</a>
                        </td>
                    </tr>
                    <c:forEach items="${cartShowList}" var="o">
                    <tr>
                        <td>
                            <a class="entry-thumbnail img-address" href="${o.imgAddress}"
                               data-toggle="lightbox">
                                <img src="${o.imgAddress}" alt=""/>
                            </a>
                            <a class="entry-thumbnail back-img-address" href="${o.backImgAddress}"
                               data-toggle="lightbox">
                                <img src="${o.backImgAddress}" alt=""/>
                            </a>
                            <a class="entry-title name" href="javascript:void(0);">${o.name}</a>
                        </td>
                        <td><span class="unit-price">$${o.price}</span></td>
                        <td>
                            <div class="qty-btn-group">
                                <button type="button" class="down"><i class="iconfont-caret-down inline-middle"></i>
                                </button>
                                <input class="number" data="${o.id}" data-clothes="${o.clothesId}" type="text" value="${o.number}"/>
                                <button type="button" class="up"><i class="iconfont-caret-up inline-middle"></i>
                                </button>
                            </div>
                        </td>
                        <td class="hidden-xs"><strong class="text-bold row-total">$${o.price}</strong></td>
                        <td class="hidden-xs">
                            <div class="inline-middle styled-dd">
                                <select class="clothesSize size">
                                    <option value="S" <c:if test="${o.size.equals('S')}">selected</c:if> >S</option>
                                    <option value="M" <c:if test="${o.size.equals('M')}">selected</c:if>>M</option>
                                    <option value="L" <c:if test="${o.size.equals('L')}">selected</c:if>>L</option>
                                    <option value="XL" <c:if test="${o.size.equals('XL')}">selected</c:if>>XL</option>
                                    <option value="XXL" <c:if test="${o.size.equals('XXL')}">selected</c:if>>XXL</option>
                                    <option value="XXXL" <c:if test="${o.size.equals('XXXL')}">selected</c:if>>XXXL</option>
                                </select>
                            </div>
                        </td>
                        <td class="hidden-xs">
                            <button type="button" class="close" aria-hidden="true">×</button>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="pull-left coupon m-b">
                    <div class="input-group">
                        <label for="apply-coupon" class="placeholder">输入您的优惠劵代码</label>
                        <input type="text" id="apply-coupon" name="coupon" class="form-control" required/>
							<span class="input-group-btn">
								<button class="btn btn-primary">申请优惠劵</button>
							</span>
                    </div>
                </div>

                <div class="shopcart-total pull-right clearfix">
                    <%--<div class="cart-subtotal text-xs m-b-sm clearfix">--%>
                        <%--<span class="pull-left">单件价格:</span>--%>
                        <%--<span class="pull-right"></span>--%>
                    <%--</div>--%>
                    <div class="cart-total text-bold m-b-lg clearfix">
                        <span class="pull-left">合计:</span>
                        <span class="pull-right"></span>
                    </div>
                    <div class="text-center">
                        <a class="btn btn-round btn-default uppercase" href="javascript: toBuy()">立即购买</a>
                    </div>
                </div>

            </div>
        </section>

        <section class="section visible-items-4">
            <div class="container">
                <div class="row">
                    <header class="section-header clearfix col-sm-offset-3 col-sm-6">
                        <h3 class="section-title">你可能会感兴趣</h3>
                    </header>

                    <div class="clearfix"></div>

                    <div id="featured-products" class="add-cart" data-product=".product"
                         data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a"
                         data-price=".entry-price > .price">

                        <div class="owl-controls clickable top">
                            <div class="owl-buttons">
                                <div class="owl-prev"><i class="iconfont-angle-left"></i></div>
                                <div class="owl-next"><i class="iconfont-angle-right"></i></div>
                            </div>
                        </div>

                        <div class="owl-carousel owl-theme" data-visible-items="4" data-navigation="true"
                             data-lazyload="true">
                            <c:forEach items="${recommendClothesList}" var="o">
                                <div class="product" data-product-id="${o.id}">
                                    <div class="entry-media">
                                        <span class="span-img-center-m"></span>
                                        <img data-src="${o.imgAddress}" alt=""
                                             class="lazyOwl thumb boy-clothes img-center-m"/>
                                        <div class="hover">
                                            <a href="product.html" class="entry-url"></a>
                                            <ul class="icons unstyled">
                                                <li>
                                                    <div class="circle ribbon ribbon-sale">HOT</div>
                                                </li>
                                                <li>
                                                    <a href="${o.imgAddress}" class="circle" data-toggle="lightbox"><i
                                                            class="iconfont-search"></i></a>
                                                </li>
                                                <li>
                                                    <a href="javascript: addToCartFinished(${o.id})" class="circle"><i
                                                            class="iconfont-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                            <div class="rate-bar">
                                                <input type="range" value="4.5" step="0.5" id="${o.id}"/>
                                                <div class="rateit" data-rateit-backingfld="#${o.id}"
                                                     data-rateit-starwidth="12" data-rateit-starheight="12"
                                                     data-rateit-resetable="false" data-rateit-ispreset="true"
                                                     data-rateit-min="0" data-rateit-max="5"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="entry-main">
                                        <h5 class="entry-title">
                                            <a href="javascript: void(0);">
                                                <c:if test="${o.name.length() >18}">${o.name}</c:if>
                                                <c:if test="${o.name.length() <=18}">${o.name}
                                                    <br>&nbsp;&nbsp;&nbsp;&nbsp;</c:if>
                                                    <%--${c.name}--%>
                                            </a>
                                        </h5>
                                        <div class="entry-price">
                                            <c:if test="${o.price == o.realityPrice}">
                                                <strong class="price">￥ ${o.realityPrice}</strong>
                                            </c:if>
                                            <c:if test="${o.price != o.realityPrice}">
                                                <s class="entry-discount">￥ ${o.price}</s>
                                                <strong class="accent-color price">￥ ${o.realityPrice}</strong>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>

                    </div>

                </div>
            </div>
        </section>

    </main>

    <footer class="page-footer">

        <div class="widgets">

            <div class="section">
                <div class="container">
                    <div class="row">

                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <section class="widget widget-text">
                                <h5 class="widget-title">我们的商店</h5>
                                <div class="widget-content">
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;我们产品全部来自正规的渠道，以最直接有效的方式送达最终端消费者手里，避免了中间过多的流通环节。并且本店一直是以薄利多销为原则，在有合理利润的基础下将尽最大可能让利给大家。</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;亲爱的各位顾客们， 购买前请仔细阅读本店购物相关条款，以避免造成您不必要的误会和不快！</p>
                                </div>
                            </section>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <section class="widget widget-text">
                                <h5 class="widget-title">营业时间</h5>
                                <div class="widget-content">
                                    <p>周一至周五：------------------------- 9.00至18.00</p>
                                    <p>星期六：-------------------------------- 10.00至16.00</p>
                                    <p>星期日：---------------------------------- 10.00至16.00</p>
                                    <br/>
                                    <p>网上店铺每月三十天全部在线，客服24小时为您服务。</p>
                                </div>
                            </section>
                        </div>

                        <div class="space40 visible-sm clearfix"></div>

                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <section class="widget widget-menu">
                                <h5 class="widget-title">信息</h5>
                                <div class="widget-content">
                                    <ul class="menu iconed-menu unstyled">
                                        <li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>会员</a></li>
                                        <li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>运输</a></li>
                                        <li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>店铺支持</a></li>
                                        <li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>客户服务</a></li>
                                        <li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>付款和退货</a></li>
                                        <li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>条款和条件</a></li>
                                    </ul>
                                </div>
                            </section>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3">
                            更多服务
                        </div>

                    </div>
                </div>
            </div>

            <div class="section">
                <div class="container">
                    <div class="row">

                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <section class="widget widget-menu">
                                <h5 class="widget-title">联系方式</h5>
                                <div class="widget-content">
                                    <ul class="menu iconed-list unstyled">
                                        <li>
                                            <span class="list-icon"><i
                                                    class="round-icon iconfont-map-marker"></i></span>
                                            <div class="list-content">中华人民共和国北京市东花市北里20号楼6单元501室</div>
                                        </li>
                                        <li>
                                            <span class="list-icon"><i class="round-icon iconfont-phone"></i></span>
                                            <div class="list-content">(+86)13171863532</div>
                                        </li>
                                        <li>
                                            <span class="list-icon"><i
                                                    class="round-icon iconfont-envelope-alt"></i></span>
                                            <div class="list-content">676746837@qq.com</div>
                                        </li>
                                    </ul>
                                </div>
                            </section>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <section class="widget widget-ads">
                                <div class="widget-content">
                                    <div class="center-xs">
                                        <div class="ads">
                                            <a href="#">
                                                <img src="images/demo/images-footer.jpg" alt=""/>
                                            </a>
                                            <div class="ads-caption bottom-right">
                                                <a href="#" class="btn btn-default btn-round">
                                                    <i class="round-icon iconfont-angle-right"></i>
                                                    <span class="inline-middle">展示更多</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <section class="widget widget-subscription">
                                <h5 class="widget-title">最新动态</h5>
                                <div class="widget-content">
                                    <p>订阅成为第一时间了解销售，活动和独家优惠的人！</p>
                                    <form action="#" method="post">
                                        <div class="input-group">
                                            <label for="subscription-email" class="placeholder">输入您的电子邮箱</label>
                                            <input type="email" id="subscription-email" name="email"
                                                   class="form-control" required/>
											<span class="input-group-btn">
												<button class="btn btn-primary">订阅</button>
											</span>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <div class="footer-sub">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <div class="footer-links center-xs clearfix">
                            <ul class="unstyled">
                                <li><a href="#">网站地图</a></li>
                                <li><a href="#">常见问题</a></li>
                                <li><a href="#">加入我们</a></li>
                                <li><a href="#">联系我们</a></li>
                            </ul>
                        </div>
                        <div class="space10"></div>
                        <div class="copyright center-xs">
                            <p>© 2003-2017 flydm.cn 版权所有</p>
                        </div>
                    </div>

                    <div class="space40 visible-xs"></div>


                </div>
            </div>
        </div>

    </footer>

</div>
<script src="js/jquery-1.12.3.min.js"></script>
<script src="js/minified.js"></script>

<script>

</script>
<script src="js/products.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/layer.js"></script>
<script>
    function toBuy() {
        var numbers = $(".number");
        var sizes = $(".size");
        var array = new Array();
        for(var i = 0; i < numbers.length; i++) {
            array.push({
                "id": numbers.eq(i).attr("data")
                ,"clothesId": numbers.eq(i).attr("data-clothes")
                ,"imgAddress": $(".img-address").eq(i).attr("href")
                ,"backImgAddress": $(".back-img-address").eq(i).attr("href")
                ,"number": numbers.eq(i).val()
                ,"size": sizes.eq(i).val()
            })
        }
        if(array.length == 0) {
            layer.msg("当前购物车为空！", {icon: 5, anim: 0, offset: '10px'});
            return;
        }
        var indexLoad = layer.load({time: 5*1000, offset: "50px"});
        var str = JSON.stringify(array);
        $.ajax({
            url: "user/createOrder"
            ,type: "post"
            ,data: JSON.stringify(array)
            ,contentType : 'application/json;charset=utf-8'
            ,success: function (data) {
                layer.close(indexLoad);
                if (!isNaN(data)) {
                    window.location.href="user/order/" + data;
                    return;
                }
                layer.alert(data, {icon: 5, anim: 1, offset: '10px'});
            }
            ,error: function () {
                layer.close(indexLoad);
                layer.msg("当前系统繁忙，请稍后再试！", {icon: 5, anim: 0, offset: '10px'});
            }
        });
    }
    $(function () {
        $(".down").each(function () {
            $(this).click();
        })
        $(".up").each(function () {
            $(this).click();
        })
    })
    $(function () {
        var x = ${cartShowList.size()};
        if(x == 0) {
            $(".empty-cart").attr("class", "empty-cart");
        }
        $(".close").click(function () {
            var $number = $(this).parent().parent().find(".number");
//            var name = $(this).parent().parent().find(".name").text();
            var id = $number.attr("data");
            $.ajax({
                url: "user/deleteCart"
                ,type: "post"
                ,data: {"id": id}
                ,success: function (data) {
                    if (data == "1") {
                        layer.msg("已移除", {icon: 6, time: 700, offset: "10px"});
                        layer.close(index);
                        return;
                    }
                    layer.msg(data, {icon: 5, anim: 0, offset: "10px"});
                }
                ,error: function () {
                    layer.msg("当前系统繁忙，请稍后再试！", {icon: 5, anim: 0, offset: "10px"});
                }
            });
        })
    })
</script>

</body>
</html>

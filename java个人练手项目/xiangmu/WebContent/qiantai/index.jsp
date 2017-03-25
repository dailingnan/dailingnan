<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易买网 - 首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/function.js"></script>
<style type="text/css">
	a img{height:20px;width:60px;}
	.clearfix img{height:50px;width:50px;}
	.last-view div{height:55px;overflow: hidden;}
	.last-view a{line-height: 25px;}
</style>
</head>
<body>
<div id="header" class="wrap">
	<c:import url="logintop.jsp"></c:import>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="index.jsp">首页</a></li>
			<li><a href="#">图书</a></li>
			<li><a href="#">百货</a></li>
			<li><a href="#">品牌</a></li>
			<li><a href="#">促销</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="#">音乐</a></li>
			<li><a href="#">影视</a></li>
			<li><a href="#">少儿</a></li>
			<li><a href="#">动漫</a></li>
			<li><a href="#">小说</a></li>
			<li><a href="#">外语</a></li>
			<li><a href="#">数码相机</a></li>
			<li><a href="#">笔记本</a></li>
			<li><a href="#">羽绒服</a></li>
			<li><a href="#">秋冬靴</a></li>
			<li><a href="#">运动鞋</a></li>
			<li><a href="#">美容护肤</a></li>
			<li><a href="#">家纺用品</a></li>
			<li><a href="#">婴幼奶粉</a></li>
			<li><a href="#">饰品</a></li>
			<li class="last"><a href="#">Investor Relations</a></li>
		</ul>
	</div>
</div>
<div id="main" class="wrap">
	<c:import url="left.jsp"></c:import>
	<div class="main">
		<div class="price-off">
			<h2>商品列表</h2>
			<ul class="product clearfix">
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/hzs.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank">化妆刷 </a></dd>
							<dd class="price">&yen;216.50</dd>
						</dl>
					</li>
			</ul>
		</div>
		<div class="side">
			<div class="news-list">
				<h4>最新公告</h4>
				<ul>
					<li><a href="#" target="_blank">迎双旦促销大酬宾</a></li>
					<li><a href="#" target="_blank">新年不夜天，通宵也是开张了</a></li>
					<li><a href="#" target="_blank">团购阿迪1折起1</a></li>
					<li><a href="#" target="_blank">全场不要钱 随便拿</a></li>
				</ul>
			</div>
		</div>
		<div class="spacer clear"></div>
		<div class="hot">
			<h2>折扣商品</h2>
			<ul class="product clearfix">
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/2008829103320362_2.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank"></a></dd>
							<dd class="price">&yen;200.0</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/2008829103320362_2.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank"></a></dd>
							<dd class="price">&yen;200.0</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/2008829103320362_2.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank"></a></dd>
							<dd class="price">&yen;200.0</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="product-view.jsp" target="_blank"><img src="images/product/2008829103320362_2.jpg" title="无" /></a></dt>
							<dd class="title" style="text-align: center;"><a href="product-view.jsp" target="_blank"></a></dd>
							<dd class="price">&yen;200.0</dd>
						</dl>
					</li>
			</ul>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 极客营 All Rights Reserved. 京ICP证801001号
</div>
</body>
</html>

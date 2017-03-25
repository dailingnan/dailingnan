<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  </head>
  <style type="text/css">
  	.clearfix img{width: 50px;height:50px;}
  </style>
  <body>
    <div class="lefter">
		<div class="box">
			<h2>商品分类</h2>
				<dl>
					<dt>图书</dt>
					<dd><a href="product-list.jsp">少儿图书</a></dd>
					<dd><a href="product-list.jsp">青年图书</a></dd>
					<dt>家用电器</dt>
					<dd><a href="product-list.jsp">大家电</a></dd>
					<dd><a href="product-list.jsp">厨房小电</a></dd>
					<dd><a href="product-list.jsp">五金家装</a></dd>
					<dt>电脑、办公</dt>
					<dd><a href="product-list.jsp">电脑整机</a></dd>
					<dd><a href="product-list.jsp">电脑配件</a></dd>
					<dd><a href="product-list.jsp">游戏设备</a></dd>
					<dt>服装</dt>
					<dd><a href="product-list.jsp">女装</a></dd>
					<dd><a href="product-list.jsp">男装</a></dd>
				</dl>
			</div>
		<div class="spacer"></div>
		<div class="last-view">
			<h2>最近浏览</h2>
			<dl class="clearfix">
			  		<dt><img src="images/product/10.jpg" alt="图片"></img></dt>
			  		<dd><a href="product-view.jsp">法国德菲丝松露精品巧克力500g/盒</a></dd>
			  		<dt><img src="images/product/10.jpg" alt="图片"></img></dt>
			  		<dd><a href="product-view.jsp">法国德菲丝松露精品巧克力500g/盒</a></dd>
			  		<dt><img src="images/product/10.jpg" alt="图片"></img></dt>
			  		<dd><a href="product-view.jsp">法国德菲丝松露精品巧克力500g/盒</a></dd>
			</dl>
		</div>
	</div>
  </body>
</html>

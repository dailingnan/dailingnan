<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>总商品</title>
<style>
	a{ text-decoration:none;}
	a:hover{ background-color:#D6D6D6; font-size:20px; border-radius:20%;}
	a:active{ text-decoration:underline;}
	img{width:120px;height:160px;}
</style>
</head>
<body>
<%
List<Map<String,Object>> goodsList=(List<Map<String,Object>>)request.getAttribute("goodsList");
request.setAttribute("goodsList", goodsList);

%>

<table border="1" width="800" align="center">
<caption><font size="30" color="red">总商品展示</font></caption>
<tr width="800" align="right">
<td colspan="6">
<form action="/xiangmu/SerachServlet" method="post">
<input type="text" value="请输入商品ID" size="40" name="search">
<input type="submit" value="查找">
</form>
</td>
</tr>
<tr align="center" height="50" bgcolor="#D3EEFF">
<td>商品编号</td>
<td>商品价格</td>
<td>商品简介</td>
<td>商品图片</td>
<td>商品种类</td>
<td colspan="2">操作管理</td>
</tr>

<c:forEach items="${goodsList}" var="jd">
<tr align="center">
<td width="80">${jd.gid }</td>
<td width="150">${jd.price }</td>
<td width="120">${jd.gintrodue }</td>
<td width="300"><img src="webs/image/${jd.image }"/></td>
<td width="200">
<c:if test="${jd.cid==0}">爆款特卖</c:if>
<c:if test="${jd.cid==1}">潮流女装</c:if>
<c:if test="${jd.cid==2}">精品男装</c:if>
<c:if test="${jd.cid==3}">时尚鞋靴</c:if>
<c:if test="${jd.cid==4}">潮流箱包</c:if>
<c:if test="${jd.cid==5}">运动户外</c:if>
</td>
<td width="100"><a href="ServletDelete?gid=${jd.gid }"><font color="red">删除</font></a></td>
<td width="100"><a href="webs/update.jsp?gid=${jd.gid }&price=${jd.price}&gintrodue=${jd.gintrodue }&image=${jd.image}&cid=${jd.cid}"><font color="red">更新</font></a></td>
</tr>
</c:forEach>
<tr>
<td align="center" colspan="7" ><a href="webs/add.jsp"><font color="red">添加</font></a></td>
<tr>
</table>
</body>
</html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>总图标</title>
<style>
	a{ text-decoration:none;}
	a:hover{ background-color:#D6D6D6; font-size:20px; border-radius:20%;}
	a:active{ text-decoration:underline;}
	img{width:120px;height:160px;}
</style>
</head>
<body>
<%
List<Map<String,Object>> list=(List<Map<String,Object>>)request.getAttribute("list");
request.setAttribute("list",list);
%>
<div style="margin-left:300px;margin-top:30px;">
<table width="700" border="1" height="2200" >
<caption><font color="red" size="5">图标管理</font></caption>
<tr width="70" align="center" bgcolor="#D3EEFF" >
<td width="60" >图标码</td>
<td width="90" >图标图</td>
<td width="60" >图标状态</td>
<td width="60" >更新图标</td>
</tr>
<c:forEach items="${list }" var="lisa">
<tr align="center">
<td>${lisa.gid}</td>
<td><img width="300" height="280" src="webs/image/${lisa.image }"></td>
<td>
<c:if test="${lisa.cid==6 }">动态修改</c:if>
</td>
<td><a href="webs/change.jsp?gid=${lisa.gid}&image=${lisa.image }"><font color="red">更新</font></a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>
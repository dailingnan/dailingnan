<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品种类展示</title>
<style>
	a{ text-decoration:none;}
	a:hover{ background-color:#D6D6D6; font-size:20px; border-radius:20%;}
	a:active{ text-decoration:underline;}
	img{width:120px;height:160px;}
</style>
</head>
<body>
<%
List<Map<String,Object>> list=(List<Map<String,Object>>) request.getAttribute("list");
%>
<div style="padding-top:20px;">
<table border="1" width="800" height="400" align="center">
<caption><font size="6" color="red">商品种类名更新</font></caption>
<tr align="center" bgcolor="#D3EEFF">
<td>商品ID</td>
<td>商品种类名</td>
<td>操作</td>
</tr>
<%for(int i=0;i<list.size();i++){%>
<tr align="center">
<td><%=list.get(i).get("cid") %></td>
<td><%=list.get(i).get("cname") %></td>
<td><a href="webs/updateDatery.jsp?cid=<%=list.get(i).get("cid") %>&cname=<%=list.get(i).get("cname") %>"><font color="red">更新</font></a></td>
</tr>
<% }%>
</table>
</div>
</body>
</html>
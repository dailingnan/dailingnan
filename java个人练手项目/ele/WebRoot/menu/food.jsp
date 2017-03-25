<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" border="1" width="900">
<caption><font size="30" color="red">菜单管理</font></caption>
<tr align="center" height="50" bgcolor="#D3EEFF">
	<td>fid</td>
	<td>fname</td>
	<td>introduce</td>
	<td>price</td>
	<td>img</td>
	<td colspan="3">operator</td>
</tr>

<s:iterator value="list" var="temp">
<tr>
	<td><s:property value="#temp.fid"/></td>
	<td><s:property value="#temp.fname"/></td>
	<td><s:property value="#temp.introduce"/></td>
	<td><s:property value="#temp.price"/></td>
	<td><img src="elmimage/<s:property value='#temp.img'/>"/></td>
	<td><a href="/ele/menu/foodMenuAction3?fr=<s:property value='#temp.fid'/>">delete</a></td>
	<td><a href="/ele/menu/foodupdate.jsp?fid=<s:property value='#temp.fid'/>&fname=<s:property value='#temp.fname'/>&introduce=<s:property value='#temp.introduce'/>&price=<s:property value='#temp.price'/>&img=<s:property value='#temp.img'/>">update</a></td>
	<td><a href="/ele/menu/selectList">add</a></td>
</tr>
</s:iterator>
</table>
</body>
</html>
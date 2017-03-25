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
<table>
<tr>
	<td>sid</td>
	<td>sname</td>
	<td>operator</td>
</tr>

<s:iterator value="list" var="temp">
<tr>
	<td><s:property value="#temp.sid"/></td>
	<td><s:property value="#temp.sname"/></td>
	<td><a href="/ele/menu/styleupdate.jsp?sid=<s:property value='#temp.sid'/>&sname=<s:property value='#temp.sname'/>">update</a></td>
</tr>
</s:iterator>
</table>
</body>
</html>
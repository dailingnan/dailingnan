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
<table align="center" width="600">
<tr align="center" height="50" bgcolor="#D3EEFF">
	<td>ename</td>
	<td>tname</td>
	<td>eaddress</td>
	<td>img</td>
	<td>marked</td>
</tr>

<s:iterator value="list" var="temp">
<tr>
	<td><s:property value="#temp.ename"/></td>
	<td><s:property value="#temp.tname"/></td>
	<td><s:property value="#temp.eaddress"/></td>
	<td><img src="elmimage/<s:property value="#temp.img"/>"/></td>
	<td><s:property value="#temp.marked"/></td>
</tr>
</s:iterator>
</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<td>raid</td>
	<td>eid</td>
	<td>marked</td>
	<td>operator</td>
</tr>

<s:iterator value="list3" var="temp">
<tr>
	<td><s:property value="#temp.raid"/></td>
	<td><s:property value="#temp.eid"/></td>
	<td><s:property value="#temp.marked"/></td>
	<td><a href="/ele/menu1/deleteQu?raid=<s:property value='#temp.raid'/>" >delete</a></td>
</tr>
</s:iterator>
</table>
</body>
</html>
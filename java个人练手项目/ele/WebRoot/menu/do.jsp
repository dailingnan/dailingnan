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
<div style="border:1px solid;width:900px;margin-left:200px;">
	<table align="center" width="900">
	
<tr align="center" height="50" bgcolor="#D3EEFF">
	<td>fname</td>
	<td>marks</td>
	<td>counts</td>
	
</tr>
<s:iterator value="listx" var="temp">
<tr>
	<td><s:property value="#temp.fname"/></td>
	<td><s:property value="#temp.marks"/></td>
	<td><s:property value="#temp.counts"/></td>
</tr>
</s:iterator>

</table>
</div>
<div style="width:900px;padding-left:400px;margin-top:20px;">
<form action="/ele/menu/insertu" method="post" enctype="application/x-www-form-urlencoded">
	<input type="hidden" name="yid" value="${param.fidnum }"/>
	<input type="hidden" name="eidnums" value="${param.eidnums} ">
	<textarea rows="16" cols="60" name="texts"></textarea><br/><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交"/>
</form>
</div>
</body>
</html>
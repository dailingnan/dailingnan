<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/ele/menu/etypeAction1" method="post">
	<input type="hidden" name="e.tid" value="${param.tid }">
	餐馆类型名：<input type="text" name="e.tname" value="${param.tname}"/>
	<input type="submit" value="提交">
</form>
</body>
</html>
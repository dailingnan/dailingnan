<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品类型名</title>
</head>
<body>
<%
String s=request.getParameter("cid");
session.setAttribute("cid",s);
response.encodeURL("../UpdateDategry");
%>
<div style="border:1px solid;margin-left:400px;margin-top:120px;width:600px;height:400px;">
<div style="color:red;font-size:25px;text-align:center;width:600px;height:40px;padding-top:18px;background-color:#D3EEFF;border-bottom:1px solid black;">更新商品类型名</div>
<form action="../UpdateDategry" method="post">
<div style="width:600px;padding-left:200px;font-size:18px;margin-top:90px;">商品种类名称:<input type="text" value="<%=request.getParameter("cname") %>" name="cname" size="6"></div><br><br>
<div style="padding-left:270px;"><input type="submit" value="提交"></div>
</form>
<div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<select onchange="getselectvalue()" id="adrs">
	<option>湖南省岳阳市</option>
	<option>湖南省长沙市</option>
	<option>湖南省平江市</option>
</select>
</body>
<script>
	   function getselectvalue()
		 {	
		    var rtl=document.getElementById("adrs");
		    alert(rtl.value);
		 }
</script>
</html>
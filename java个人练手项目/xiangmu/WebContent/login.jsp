<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>
<body>
	<form action="Login" method="get" id="form1">
		用户   ：<input type="text" name ="username"/> <br/>
		密码   ：<input type="text" name ="password"/> <br/>
		验证码：<input type="text" name="ver" id="ver"><img   id="img" src="/xiangmu/Verify"/><br/>
		<button type="submit">登录</button>
	</form>
	<%
	String ver=(String)session.getAttribute("session_vcode");
%>
	<%=ver %>
</body>
<script type="text/javascript">
	var img = document.getElementById("img");
	var form1 = document.getElementById("form1");
	var ver = document.getElementById("ver");
	img.onclick = function(){
		img.src="/xiangmu/Verify?a="+new Date().getTime();
	}
	form1.onsubmit = function(){
		
		
			return true;
		
	}
	
</script>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
 
    function he(){
     var file=document.getElementById("fil").files[0];
     var s=document.getElementById("im");
     var d=file['name'];
     s.src="image/"+d;
    }

</script>
</head>
<body>
<% 
String gid=request.getParameter("gid");
session.setAttribute("gid",gid);
response.encodeURL("../ServletChangeUpdate");
%>
<div style="width:700px;height:560px;border:1px solid;margin-left:400px;" >
<div style="padding-top:30px;height:50px;width:700px;font-size:30px;color:red;background-color:#D3EEFF;text-align:center;border-bottom:1px solid black;">修改图标</div>
<br><br>
<div style="width:700px;padding-left:150px;">
<div height="40" width="40" border="5">
<img width="400" height="300" src="image/<%=request.getParameter("image")%>" id="im">
</div>
</div>
<br><br>
<form action="../ServletChangeUpdate" method="post" enctype="multipart/form-data">
<div style="width:700px;padding-left:200px;">图片<input type="file" name="image" id="fil" onchange="he()" ></div>
<br>
<br/>
<div style="width:700px;padding-left:300px;"><input type="submit" value="提交"></div>
</form>
</div>
</body>
</html>
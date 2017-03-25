<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function he(){
    var file=document.getElementById("fil").files[0];
    var s=document.getElementById("im");
    var d=file['name'];
    s.src="elmimage/"+d;
   }
</script>
</head>
<body>
	<div style="width:600px;padding-left:100px;">
	<form action="/ele/menu/updateRy" method="post" enctype="multipart/form-data">
		<input type="hidden" name="eid" value="${param.eid }"><br/><br/>
		<input type="hidden" name="imgs" value="${param.img }"><br/><br/>
		<input type="text" name="address" value="${param.eaddress}"><br/><br/>
		<img height="160" width="180" src="elmimage/${param.img }" id="im"><br/><br/>
		<input type="file" name="img" accept="image/jpeg" id="fil" onchange="he()"><br/><br/>
		<input type="submit" value="提交">
	</form>
	</div>
</body>
</html>
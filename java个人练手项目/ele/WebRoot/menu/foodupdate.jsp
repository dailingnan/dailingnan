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
<div style="padding-left:200px;width:600px;">
	<form action="/ele/menu/foodMenuAction1" method="post" enctype="multipart/form-data">
		<input type="hidden" name="food1.fid" value="${param.fid}" /><br/><br/>
		fname:<input type="text" name="food1.fname" value="${param.fname }"/><br/><br/>
		introduce:<input type="text" name="food1.introduce" value="${param.introduce }"><br/><br/>
		price:<input type="text" name="food1.price" value="${param.price }"><br/><br/>
		<input type="hidden" name="imges" value="${param.img }">
		<img height="160" width="180" src="elmimage/${param.img }" id="im"><br/><br/>
		img:<input type="file" name="img" accept="image/jpeg" id="fil" onchange="he()"><br/><br/>
		<input type="submit" value="提交">
	</form>
</div>
</body>
</html>
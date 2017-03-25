<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,util.DBtool"%>
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
    s.src="image/"+d;
   }
</script>
</head>
<body>
<div style="margin-left:300px;padding-left:60px;padding-top:20px;border:1px solid;width:750px;height:600px;">
<div style="padding-top:30px;height:50px;width:700px;font-size:30px;color:red;background-color:#D3EEFF;text-align:center;">添加商品</div>
<form action="../ServletAdd" method="post" enctype="multipart/form-data" >
<br><br>
商品编号<input type="text" name="gid" value="<%=util.UUid.getId()%>"  size="40" maxlength="34"><br><br>
商品价格<input type="text" name="price" size="6" value="0.00" maxlength="6"><br><br>
商品简介<input type="text" name="introduce" size="100"><br><br>
<div height="160" width="200">
<img height="160" width="180" id="im" src="image/12345.png">
</div>
<%
String sql="select cname from category where cid not in('6')";
List<Map<String,Object>> list=DBtool.exeQuery(sql);
%>
商品图片<input type="file" name="image" id="fil" onchange="he()">
商品种类<select name="cid">
<% for(int i=0;i<list.size();i++){%>
<option value="<%=i%>"><%=list.get(i).get("cname") %></option>
<%} %>
</select><br><br><br><br>
<div style="width:700px;padding-left:200px;"><input type="submit" value="提交"></div>
</form>
</div>
</body>
</html>
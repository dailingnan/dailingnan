<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,util.DBtool"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新</title>

<script>
 
    function he(){
     var file=document.getElementById("fil").files[0];
     var s=document.getElementById("im");
     var d=file['name'];
     s.src="image/"+d;
    }
    
    function GetQueryString(name)
    {
    	//liteng&name=teng
         var s=document.location.href;
    	 var s1=s.substr(s.indexOf('?')+1);
    	var s2=s1.split('&');
    	for(var i=0;i<s2.length;i++){
    		if(s2[i].indexOf(name)!=-1){
    			var t=s2[i].substr(s2[i].indexOf('=')+1);
    			}
    		}
    		return t;
    }
    function fun(){
    var r=(GetQueryString('cid'));
    var li=document.getElementById('li');
    for(var i=0;i<Number(li.options.length);i++){
    	if(li.options[i].value==r){
    		li.options[i].selected=true;
    		break;
    	}
    }
    }

</script>

</head>
<body onload="fun()">
<% 
String image=request.getParameter("image");
session.setAttribute("image",image);
String gid=request.getParameter("gid");
session.setAttribute("gid",gid);
String s=response.encodeURL("../ServletUpdate1");
%>
<div style="width:700px;height:500px;border:solid 1px;margin-top:60px;margin-left:260px;">
<div style="text-align:center;width:700px;height:40px;padding-top:16px;font-size:25px;color:red;background-color:#D3EEFF;border-bottom:solid 1px black;">商品更新</div>
<form action="../ServletUpdate1" method="post" enctype="multipart/form-data" >
<div style="margin-top:20px; padding-left:100px;">商品价格<input type="text" name="price" size="6" value="<%=request.getParameter("price") %>" maxlength="6"><br><br>
商品简介<input type="text" name="introduce" value="<%=request.getParameter("gintrodue") %>" size="80"><br><br>
</div>
<div style="width:180px;height:160px;padding-left:100px;"">
<img height="160" width="180" src="image/<%=request.getParameter("image")%>" id="im">
</div>
<br><br>
<div style="margin-left:100px;width:700px;">
<%
String sql="select cname from category where cid not in('6')";
List<Map<String,Object>> list=DBtool.exeQuery(sql);
%>

商品图片<input type="file" name="image" id="fil" onchange="he()"  >
商品种类<select name="cid" id="li">
<% for(int i=0;i<list.size();i++){%>
<option value="<%=i%>"><%=list.get(i).get("cname") %></option>
<%} %>
</select>
</div>
<br><br>
<div style="padding-left:250px;">
<input type="submit" value="提交">
</div>
</form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:600px;padding-left:100px;">
<br/><br/><br/><br/>
	<form action="foodMenuAction2" method="post" enctype="multipart/form-data">
		菜名：<input type="text" name="food1.fname"><br/><br/>
		菜系：<select name="food1.sid">
			<s:iterator value="liststyle" var="temp">
				<option value="<s:property value='#temp.sid'/>"> <s:property value="#temp.sname"/></option>
			</s:iterator>
		</select><br/><br/>
		
		菜的介绍：<input name="food1.introduce" type="text"><br/><br/>
		价格:<input name="food1.price" type="text"><br/><br/>
		图片:<input name="imgs" type="file"><br/><br/>
		<input type="submit" value="提交"><br/><br/>
	</form>
</div>
</body>
</html>
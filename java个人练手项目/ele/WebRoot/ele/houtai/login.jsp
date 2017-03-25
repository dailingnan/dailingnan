<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="/ele/ele/houtai/css/index.css"/>
</head>

<body>
	<div class="content_1">
    	<div class="content_3"><img src="/ele/ele/houtai/img/31.png" /></div>
    	<div class="content_4">
       		 <div class="content_2"><img src="/ele/ele/houtai/img/32.png" /></div>
             <div class="content_5">
              <span style=" color: red">${msg}</span>
             <form action="/ele/admin/findAction" method="post">
             	<div class="content_6">登录系统</div>
                <div class="content_7"><input type="text" class="txt1" name="adminBean.adminname"/></div>
                <div class="content_7"><input type="text" class="txt1" name="adminBean.adminpwd"/></div>
                <div class="content_8">忘记密码？</div>
                <div class="content_9"><input type="submit"  value="登录" class="btn1"/></div>
             </form>
             
             </div>
        </div>
    </div>
</body>
</html>

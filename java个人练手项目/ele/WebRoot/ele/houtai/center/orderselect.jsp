<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商家查询未处理订单</title>
		<link rel="stylesheet" type="text/css" href="/ele/ele/houtai/css/res_selectUndeal.css" />
		<meta charset="UTF-8">
		
    	<link rel="stylesheet" type="text/css" href="easyui.css">
    	<link rel="stylesheet" type="text/css" href="icon.css">
    	<link rel="stylesheet" type="text/css" href="demo.css">
    	<script type="text/javascript" src="jquery-3.0.0.min.js"></script>
    	<script type="text/javascript" src="jquery.easyui.min.js"></script>
</link></link></link></meta></head>
<body>
  <div class="content_1">
       <button class="btn1"> 订单处理</button>
       <button class="btn2"> 订单查询</button>
       	<div style="margin:20px 0;"></div>
    	<form action="ele/ele/dateAction">
    	<table>
    		<tr>
    			<td>Start Date:</td>
    			<td>
    				<input class="easyui-datebox" data-options="sharedCalendar:'#cc'" name="begin">
    			</td>
    		</tr>
    	</table>
    	<div id="cc" class="easyui-calendar"></div>
    	<input type="submit" value="提交">
    	</form>
   </div>
   
   <div class="content_2">
          <div class="content_2_1"><a href="#">点击查询未处理订单</a></div>
          
          <div class="content_2_1"></div>
   </div>
   
   <div class="content_3">
           <div class="content_3_1">
                <button class="btn1">配送异常</button>
                <button class="btn1">取消单</button>
                <button class="btn1">催单</button>
                <button class="btn1">退单</button>
           </div>
           
           <div class="content_3_1_1">
               配送异常
           </div>
           <div class="content_3_2">
               无配送异常
           </div>
           <div class="content_3_1_1">
               取消单
           </div>
           <div class="content_3_2">
               无取消单
           </div>
            <div class="content_3_1_1">
               催单
           </div>
           <div class="content_3_2">
               无催单
           </div>
            <div class="content_3_1_1">
               退单
           </div>
           <div class="content_3_2">
               无退单
           </div>
           
   </div>
</body>
</html>

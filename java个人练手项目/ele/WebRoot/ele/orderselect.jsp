<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商家查询未处理订单</title>
		<link rel="stylesheet" type="text/css" href="/ele/ele/houtai/css/res_selectUndeal.css" />
		<meta charset="UTF-8">
		
    	<link rel="stylesheet" type="text/css" href="/ele/ele/easyui.css">
    	<link rel="stylesheet" type="text/css" href="/ele/ele/icon.css">
    	<link rel="stylesheet" type="text/css" href="/ele/ele/demo.css">
    	<script type="text/javascript" src="/ele/ele/jquery-3.0.0.min.js"></script>
    	<script type="text/javascript" src="/ele/ele/jquery.easyui.min.js"></script>
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
   <table border="1 soild " cellpadding="1px" cellspacing="1px">
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下单时间</td><td>订单状态</td><td>&nbsp;&nbsp;&nbsp;订单编号</td><td>&nbsp;&nbsp;&nbsp;&nbsp;订单总计</td><td>订单地址</td><td>下单者</td></tr>
    <s:iterator id="order" value="orderlist" status="L">
    	 <tr><td>${order.ordertime}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;${order.state}</td><td>${order.oid}</td>&nbsp;&nbsp;<td>&nbsp;&nbsp;&nbsp;&nbsp;￥${order.ordertotal}</td><td>${order.arderadd}</td><td>&nbsp;&nbsp;${order.uid}</td></tr>
    </s:iterator>
   	</table>
   </div>
   
   <div class="content_2">   
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

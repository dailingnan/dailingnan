<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商家查询未处理订单</title>
    <link rel="stylesheet" type="text/css" href="css/res_selectUndeal.css" />
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
  <!-- 
   <a href="ele/order_res_handle">查询未处理订单</a><br>
   <s:iterator value="list2" id="l" status="s">
               下单时间：${l.ordertime} &nbsp;  订单状态：${l.state}&nbsp;  商品名称：${l.foodbean.fname}&nbsp;  <a href="stateUpdateAction?oid=${l.oid}">点击处理</a><br>
   </s:iterator>
   
    -->
     <div class="content_1">
       <button class="btn1"> 订单处理</button>
       <button class="btn2"> 订单查询</button>
   </div>
   
   <div class="content_2">
          <div class="content_2_1"><a href="ele/order_res_handle">查询未处理订单</a></div>
          <s:iterator value="list2" id="l" status="s">
          <div class="content_2_1">下单时间：${l.ordertime} &nbsp;  订单状态：${l.state}&nbsp;  商品名称：${l.foodbean.fname}&nbsp;  <a href="stateUpdateAction?oid=${l.oid}">点击处理</a></div>
          </s:iterator>
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
  <script>setTimeout("location =location; ",5000); </script>
</html>

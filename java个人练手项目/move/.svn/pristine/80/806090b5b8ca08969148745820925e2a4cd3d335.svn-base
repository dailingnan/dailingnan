<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>	
<html>
<head>
	<meta charset="UTF-8">
	<title>Custom DataGrid Pager - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/demo.css">
	<script type="text/javascript" src="/move/houtai/js/jquery.min.js"></script>
	<script type="text/javascript" src="/move/houtai/js/jquery.easyui.min.js"></script>
</head>
<body>
	
	<div style="margin:20px 50px;"></div>
	<table id="dg" title="电影信息" style="width:1350px;height:400px"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'/move/houtai/findMove.do',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'name',width:150">电影名称</th>
				<th data-options="field:'classes',width:120,align:'left'">电影类别</th>
				<th data-options="field:'director',width:80,align:'left'">导演</th>
				<th data-options="field:'actor',width:270,align:'left'">主演</th>
				<th data-options="field:'language',width:70">语言</th>
				<th data-options="field:'price',width:70">价格</th>
				<th data-options="field:'image',width:70">宣传图片</th>
				<th data-options="field:'title',width:270">电影概述</th>
				<th data-options="field:'introduce',width:270">电影介绍</th>
				<th data-options="field:'screentime',width:170">上映时间</th>
				<th data-options="field:'time',width:90,align:'center'">时长</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		$(function(){
			var pager = $('#dg').datagrid().datagrid('getPager');	// get the pager of datagrid
			
			pager.pagination({
				 pageSize:5,  //每页显示的记录条数，默认为10
       			 pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表
       			 beforePageText: '第',//页数文本框前显示的汉字    
                 afterPageText: '页    共 {pages} 页',    
                 displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录' ,
				buttons:[{
					iconCls:'icon-remove',
					handler:function(){
						var row = $('#dg').datagrid('getSelected');
						 if(confirm("你确定删除该条电影记录吗？")) {
						            //如果是true ，那么就把页面转向thcjp.cnblogs.com
						        location.href="/move/houtai/deleteMove.html?moveid="+row.moveid;
						     }
						    else{
						        //否则说明下了，赫赫
						      //alert("你按了取消，那就是返回false");
						    }
					}
				},{
					iconCls:'icon-add',
					handler:function(){
						alert('add');
					}
				},{
					iconCls:'icon-edit',
					handler:function(){
					
				    var row = $('#dg').datagrid('getSelected');
    					if (row){
    						window.location.href="/move/houtai/updateMove.html?moveid="+row.moveid
    						//window.open("/move/houtai/tab/tab.jsp?moveid="+row.moveid,"","width=200,height=250");
                      }else{
                    	  alert("请选择一行数据！");
                      }
					}
				}]
			});			
		})
	</script>
</body>
</html>
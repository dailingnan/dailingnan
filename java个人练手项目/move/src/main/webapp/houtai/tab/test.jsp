<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/demo.css">
	<script type="text/javascript" src="/move/houtai/js/jquery.min.js"></script>
	<script type="text/javascript" src="/move/houtai/js/jquery.easyui.min.js"></script>
</head>
<body>
	<h2>Basic DataGrid</h2>
	<p>The DataGrid is created from markup, no JavaScript code needed.</p>
	<div style="margin:20px 0;"></div>
	
		<div style="margin:20px 0;"></div>
	
	<table id="dg" class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'/move/houtai/findMoveArrange.do',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">Item ID</th>
				<th data-options="field:'productid',width:100">Product</th>
				<th data-options="field:'listprice',width:80,align:'right'">List Price</th>
				<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
				<th data-options="field:'attr1',width:250">Attribute</th>
				<th data-options="field:'status',width:60,align:'center'">Status</th>
			</tr>
		</thead>
	</table>
 
</body>
</html>
<script>
		$('#dg').datagrid({
	     url : '/move/houtai/findMoveArrange.do', 
	    columns:[[
			{field:'move',title:'电影名字',width:150,formatter:function(value,rowData,rowIndex){  
					return rowData.move.name;  
			}},
	        {field:'onscreendate',title:'Name',width:220},
	        {field:'screenhall',title:'Price',width:180},
	        {field:'edition',title:'Price',width:115}
	    ]]
	});
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
						alert('edit');
				    var row = $('#dg').datagrid('getSelected');
    					if (row){
    						alert(row.moveid);
    						window.location.href="/move/houtai/updateMove.html?moveid="+row.moveid
    						//window.open("/move/houtai/tab/tab.jsp?moveid="+row.moveid,"","width=200,height=250");
                      }
					}
				}]
			});			
		})

</script>
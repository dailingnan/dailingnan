<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>电影安排</title>
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/demo.css">
	<script type="text/javascript" src="/move/houtai/js/jquery.min.js"></script>
	<script type="text/javascript" src="/move/houtai/js/jquery.easyui.min.js"></script>
</head>
<body>
	<div style="margin-left:250px;">
	<div style="margin:20px 0;"></div>
	
		<div style="margin:20px 0;"></div>
	
	<table id="dg" class="easyui-datagrid" title="留言信息查看(默认显示前面十条数据)" style="width:900px;height:250px"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'/move/order/findDiscuss.do',method:'get'">
		<thead>
			
		</thead>
	</table>
    </div>
</body>
</html>
<script>
		$('#dg').datagrid({
	     url : '/move/discuss/findDiscuss.do', 
	    columns:[[
			{field:'user',title:'留言用户',width:150,formatter:function(value,rowData,rowIndex){  
					return rowData.user.username;  
			}},
			{field:'move',title:'电影名称',width:150,formatter:function(value,rowData,rowIndex){  
					return rowData.move.name;  
			}},
			{field:'discussdate',title:'留言时间',width:200,formatter: formatDatebox, editor: 'datebox', sortable: true,},  
	        {field:'discuss',title:'留言内容',width:470},
	        
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
						 if(confirm("你确定删除该条留言吗？")) {
						            //如果是true ，那么就把页面转向thcjp.cnblogs.com
						        location.href="/move/discuss/deleteDiscuss.html?discussid="+row.discussid;
						     }
						    else{
						        //否则说明下了，赫赫
						      //alert("你按了取消，那就是返回false");
						    }
					}
				},{
					iconCls:'icon-add',
					handler:function(){
						
					}
				},{
					iconCls:'icon-edit',
					handler:function(){
						
				    var row = $('#dg').datagrid('getSelected');
    					
					}
				}]
			});			
		})

		
	//easyui转换时间格式
	function formatDatebox(value) {
		if (value == null || value == '') {
			return '';
		}
		var dt;
		if (value instanceof Date) {
			dt = value;
		} else {
			dt = new Date(value);
			if (isNaN(dt)) {
				value = value.replace(/\/Date(−?\d+)\//, '$1'); //标红的这段是关键代码，将那个长字符串的日期值转换成正常的JS日期格式  
				dt = new Date();
				dt.setTime(value);
			}
		}

		return dt.format("yyyy-MM-dd hh:mm"); //这里用到一个javascript的Date类型的拓展方法，这个是自己添加的拓展方法，在后面的步骤3定义  
	}

	$.extend($.fn.datagrid.defaults.editors, {
		datebox : {
			init : function(container, options) {
				var input = $('').appendTo(container);
				input.datebox(options);
				return input;
			},
			destroy : function(target) {
				$(target).datebox('destroy');
			},
			getValue : function(target) {
				return $(target).datebox('getValue');
			},
			setValue : function(target, value) {
				$(target).datebox('setValue', formatDatebox(value));
			},
			resize : function(target, width) {
				$(target).datebox('resize', width);
			}
		}
	});

	Date.prototype.format = function(format) {
		var o = {
			"M+" : this.getMonth() + 1, //month   
			"d+" : this.getDate(), //day   
			"h+" : this.getHours(), //hour   
			"m+" : this.getMinutes(), //minute   
			"s+" : this.getSeconds(), //second   
			"q+" : Math.floor((this.getMonth() + 3) / 3), //quarter   
			"S" : this.getMilliseconds()
		//millisecond   
		}
		if (/(y+)/.test(format))
			format = format.replace(RegExp.$1, (this.getFullYear() + "")
					.substr(4 - RegExp.$1.length));
		for ( var k in o)
			if (new RegExp("(" + k + ")").test(format))
				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
						: ("00" + o[k]).substr(("" + o[k]).length));
		return format;
	}
</script>
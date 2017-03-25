<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>
    <head>
    	<meta charset="UTF-8">
    	<link rel="stylesheet" type="text/css" href="easyui.css">
    	<link rel="stylesheet" type="text/css" href="icon.css">
    	<link rel="stylesheet" type="text/css" href="demo.css">
    	<script type="text/javascript" src="jquery-3.0.0.min.js"></script>
    	<script type="text/javascript" src="jquery.easyui.min.js"></script>
    </head>
    <body>
    	
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
    </body>
    </html>
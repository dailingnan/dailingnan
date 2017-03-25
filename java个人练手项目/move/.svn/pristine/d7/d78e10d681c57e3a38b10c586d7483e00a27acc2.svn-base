<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Custom DataGrid Pager - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/demo.css">
	<script type="text/javascript" src="/move/houtai/js/jquery.min.js"></script>
	<script type="text/javascript" src="/move/houtai/js/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css" href="/move/houtai/css/moveArrangeUpdate.css" />
<title>moveArrangeUpdate</title>
</head>

<body>
	<div class="content">
        	<div class="content1">
            	电影排片更新
            </div>
            <form action="/move/houtai/addMoveArranges.html" method="post">
            
            <div class="content2">
            	<div class="content2_1">
                	<div class="content2_3">电影名称：</div>
                    <div class="content2_3">播放厅：</div>
                    <div class="content2_3">版本 ：</div>
                    <div class="content2_3">上映时间：</div>
                </div>
                <div class="content2_2">
                	<div class="content2_4">
                    	<select name="name">
                    		<c:forEach items="${moveBeans}" var="move">
   								<option>${move.name}</option>	
                        	</c:forEach>
                        </select>
                    </div>
                    <div class="content2_4">
                    	<select name="screenhall">
                    	
                        	<option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="content2_4">
                    	<select name="edition">
                    	
                        	<option>原版</option>
                            <option>首映</option>
                        </select>
                    </div>
                    <div class="content2_4">
						<div style="margin: 20px 0;"></div>
						<input class="easyui-datetimebox" 
							style="width: 200px" name="onscreendate">
				</div>
                </div>
                
                <div style="clear:left"></div>
                <div class="content2_9"><button type="submit">确认增加</button></div>
            </div>
        </form>    
        </div>
</body>
</html>

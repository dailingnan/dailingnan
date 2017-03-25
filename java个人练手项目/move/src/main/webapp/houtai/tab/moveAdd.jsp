<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="/move/houtai/css/moveUpdate.css"/>
<title>无标题文档</title>
<meta charset="UTF-8">
	<title>Custom DataGrid Pager - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/move/houtai/css/demo.css">
	<script type="text/javascript" src="/move/houtai/js/jquery.min.js"></script>
	<script type="text/javascript" src="/move/houtai/js/jquery.easyui.min.js"></script>
</head>

<body>
		<div class="content">
        	<div class="content1">
            	电影更新
            </div>
            <form action="/move/houtai/addMove.do" method="post" enctype="multipart/form-data">
            <div class="content2">
            	<div class="content2_1">
                	<div class="content2_3">电影名称：</div>
                    <div class="content2_3">导演：</div>
                    <div class="content2_3">主演：</div>
                    <div class="content2_3">上映时间：</div>
                    <div class="content2_3">语言：</div>
                    <div class="content2_3">票价：</div>
                    <div class="content2_3">电影时长：</div>
                    <div class="content2_3">电影主题：</div> 
                    <div class="content2_3">电影简介：</div>
                 
                </div>
                <div class="content2_2">
                	<div class="content2_4"><input type="text"  name="name"/></div>
                    <div class="content2_4"><input type="text"  name="director"/></div>
                    <div class="content2_4"><input type="text"  name="actor" class="actor"/></div>
                    <div class="content2_4">
                    	<div style="margin:20px 0;"></div>
							<table>
								<tr>
									<td>
										<input class="easyui-datebox" data-options="sharedCalendar:'#cc'" name="screentime"/>
									</td>
								</tr>
							</table>
						<div id="cc" class="easyui-calendar"></div>
                    </div>
                    <div class="content2_4"><input type="text"  name="language"/></div>
                    <div class="content2_4"><input type="text"  name="price"/></div>
                     <div class="content2_4"><input type="text"  name="time"/></div>
                    <div class="content2_4"><input type="text"  name="title" class="title"/></div>
                    <div class="content2_4"><textarea name="introduce" class="tar">${moveBeans.introduce}</textarea></div>
                  	 <div class="content2_4"><img src="/move/img/" width="120px" height="165" id="xmTanImg" /></div>
                  	 <input name="moveid"  type="hidden" />
                </div>
                
                <div style="clear:left"></div>
               	<div class="content2_6">
                	<div class="content2_7">电影图片:<input type="file" id="xdaTanFileImg" onchange="xmTanUploadImg(this)" accept="image/*" name="image" /></div>
                    <div class="content2_8">电影种类:<input type="text"  name="classes"></input></div>
                      <div style="clear:left"></div>
                </div>
                <div class="content2_9"><button type="submit">确认修改</button></div>
            </div>
           </form> 
        </div>
        
        <!------- ------------------------------------------------- -->
        
        	
	
	
</body>
  <script type="text/javascript">            
            //判断浏览器是否支持FileReader接口
            if (typeof FileReader == 'undefined') {
                document.getElementById("xmTanDiv").InnerHTML = "<h1>当前浏览器不支持FileReader接口</h1>";
                //使选择控件不可操作
                document.getElementById("xdaTanFileImg").setAttribute("disabled", "disabled");
            }

            //选择图片，马上预览
            function xmTanUploadImg(obj) {
                var file = obj.files[0];
                
                console.log(obj);console.log(file);
                console.log("file.size = " + file.size);  //file.size 单位为byte

                var reader = new FileReader();

                //读取文件过程方法
                reader.onloadstart = function (e) {
                    console.log("开始读取....");
                }
                reader.onprogress = function (e) {
                    console.log("正在读取中....");
                }
                reader.onabort = function (e) {
                    console.log("中断读取....");
                }
                reader.onerror = function (e) {
                    console.log("读取异常....");
                }
                reader.onload = function (e) {
                    console.log("成功读取....");

                    var img = document.getElementById("xmTanImg");
                   
                    img.src = e.target.result;
                  
                    //或者 img.src = this.result;  //e.target == this
                }

                reader.readAsDataURL(file)
            }
        </script>
</html>

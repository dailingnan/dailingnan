<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/ant.css"/>
</head>

<body>
	<div class="top" >  
    	<div class="top_1">
            <div class="top_2"><img src="img/1.png" /></div>
            <div class="top_3">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li><a href="#">加盟合作</a></li>
                </ul>
            </div>
             <div class="top_4">
       			<ul>
                	<li><a href="#"><div class="img1"><img src="img/2.png" /></div>服务中心</a></li>
                    <li><a href="#"><div class="img2"><img src="img/3.png" /></div>手机应用</a></li>
                </ul>
       		</div>
            <div class="top_5">
            	疯子的故事<div class="img3"><img src="img/5.png" /></div>
            </div>
            
        </div>
   	 </div >
     <div class="gou2">
        	<div class="gou1"><img src="img/b52d41f458f9ec628f7bd73bc9eefjpeg.png" />
            </div>
    	</div>
        <div style="clear:left;"></div>
    <div class="content">
    	<div class="contenti1">
        <div class="contenti2"><a href="sele?eidnums=${param.eidnums }">所有商品</a></div>
        <div class="contenti3"><a href="selecasses?eidnums=${param.eidnums }">评价</a></div>
        <div class="contenti3"><a href="#">默认排序</a></div>
        <div class="contenti4"><a href="#">评分</a></div>
        <div class="contenti4"><a href="#">销量</a></div>
        <div class="contenti4"><a href="#">价格</a></div>
        <div class="contenti4"><input type="text" name="查询" value="搜索商家，美食"/></div>
        </div>
        
        <div class="contenti5">
        
        	
            <div class="contenti6"><a href="selectViewes?eidnums=${param.eidnums }&sidnum=<s:property value='liststyles[0].sid'/>"><s:property value="liststyles[0].sname"/></a></div>
            <div class="contenti6"><a href="selectViewes?eidnums=${param.eidnums }&sidnum=<s:property value='liststyles[1].sid'/>"><s:property value="liststyles[1].sname"/></a></div>
            <div class="contenti6"><a href="selectViewes?eidnums=${param.eidnums }&sidnum=<s:property value='liststyles[2].sid'/>"><s:property value="liststyles[2].sname"/></a></div>
            <div class="contenti6"><a href="selectViewes?eidnums=${param.eidnums }&sidnum=<s:property value='liststyles[3].sid'/>"><s:property value="liststyles[3].sname"/></a></div>
            <div class="contenti6"><a href="selectViewes?eidnums=${param.eidnums }&sidnum=<s:property value='liststyles[4].sid'/>"><s:property value="liststyles[4].sname"/></a></div>
            
        </div>
        
        
       
        <!--             ------                 -->
         <s:iterator value="listy" var="temp" status="dr">
        <div  class="gou5">
    
            <div class="gou7">
            	<div class="gou8"><img src="elmimage/<s:property value='#temp.img'/>" /></div>
                <div class="gou9"><a href="selectacse?eidnum=<s:property value='#temp.eid'/>&fidnum=<s:property value='#temp.fid'/>&sidnum=<s:property value='#temp.sid'/>"><s:property value="#temp.fname"/></a><div class="gou15"><s:property value="#temp.introduce"/></div>
                	<div class="gou17"><s:property value="#temp.counts"/></div>
                <div class="gou16">￥<s:property value="#temp.price"/></div></div>
                <div class="gou10"><button onclick="abcd(<s:property value='#temp.fid'/>)">加入购物车</button></div>
            </div>
     <!-- href="/ele/ele/addAction?fid=<s:property value='#temp.fid'/>" -->
           
      
        </div>
        
      
        </s:iterator>
          </div>
          
        <!--   ----------             -->
        
        <div style="width:200px;height:300px;position:absolute;top:240px;margin-left:930px;background-color:white;">
        <div style="width:200px;height:40px;background-color:#0089DC;text-align:center;padding-top:15px;color:white;">商家公告</div>
        <div style="width:200px;height:30px;margin-top:0px;">配送说明:</div>
        <div style="width:200px;height:30px;margin-top:0px;">订单满85免配送费，20至85付三元，不满20付7元</div>
        <div style="width:200px;height:30px;margin-top:20px;">已加入外卖保计划，食品安全有保障</div>
         <div style="width:200px;height:30px;margin-top:20px;border-bottom:1px solid;">准时必达，超时必赔</div>
         <div style="width:200px;height:30px;margin-top:10px;text-align:center;padding-top:15px;"><a href="#">举报商家</a></div>
         <a href="/ele/ele/findAction">购物车</a>
        </div>
        
        <!--  ======                         -->
        
        <div style="clear:left;"></div>
        <div></div>
    </div>
    
    <div class="bottom">
    	<div style="clear:left;"></div>
  		<div class="bottom1">
        	<div class="bottom_left">
            <!---------------------------->
            	<div class="content_10">
                	<ul>
                    	<li  class="li1">用户帮助</li>
                        <li><a href="">服务中心</a></li>
                        <li><a href="">常见问题</a></li>
                        <li><a href="">在线客服</a></li>
                    </ul>
                </div>
            <!---------------------------->
             <!---------------------------->
            	<div class="content_10">
                	<ul>
                    	<li  class="li1">商务合作</li>
                        <li><a href="">服务中心</a></li>
                        <li><a href="">常见问题</a></li>
                        <li><a href="">在线客服</a></li>
                        <li><a href="">开放合作</a></li>
                    </ul>
                </div>
            <!---------------------------->
             <!---------------------------->
            	<div class="content_10">
                	<ul>
                    	<li  class="li1">用户帮助</li>
                        <li><a href="">服务中心</a></li>
                        <li><a href="">常见问题</a></li>
                        <li><a href="">在线客服</a></li>
                        <li><a href="">开放合作</a></li>
                    </ul>
                </div>
            <!---------------------------->	
            </div>
            
            <div class="bottom_right">
            	<div class="bottom_1">
                	<ul>
                    	<li>24小时客服热线 : 10105757</li>
                        <li>意见反馈 : feedback@ele.me</li>
                        <li>关注我们 :</li>
                    </ul>
                </div>
                <div class="bottom_2" >
                	<div class="img6"><img src="img/appqc.png" h eight="85px;" width="85px;" /></div>
                    <div class="img7">
                    	<div class="text9">下载手机版</div>
                        <div class="text10">扫一扫,手机订餐方便</div>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear:left;"></div>
        <div class="bottom_5">增值电信业务许可证 : 沪B2-20150033 | 沪ICP备 09007032 | 上海工商行政管理 Copyright ©2008-2016 ele.me, All Rights Reserved.			        </div>
        <div class="bottom_6"><img src="img/picp_bg.jpg" height="30px"  width="85px;"/> </div>
    </div>
</body>
<script >

 function abcd(fid){
				if(XMLHttpRequest){
				var rqu = new XMLHttpRequest();
				rqu.onreadystatechange = null;
				rqu.open("get", "/ele/ele/addAction?fid="+fid+"",false);
				rqu.send(null);
				alert("加入购物车成功！");
				}else{
					alert("false");
				}
						}
 </script>
</html>

<%@page import="com.dailingnan.pojo.Order_informationBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%  List<Order_informationBean> obj=null;
    if(session.getAttribute("list2")!=null){
         obj=(List<Order_informationBean>)session.getAttribute("list2");
    }
 %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心_订单详情</title>
<link rel="stylesheet" type="text/css" href="/ele/css/order_information.css"/>
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
      	<div class="top_7">
        	<div class="text1">当前位置：</div>
            <div class="text2">岳麓区银双路（奥克斯...</div>
            <div class="text3"><a href="#">[切换地址]</a></div>
            <div class="input1">
            	<div class="input2"><input  class="input4"/></div>
                <div class="input3"><img src="img/6.png" /></div>
            </div>
        </div>
      
   	 </div >

    <div class="content">
    	<div class="ordercontent_1">
        	<ul>
            	<li class="orderli1"><img src="img/10.png" />个人中心
                	
                </li>
                <li class="orderli1"><img src="img/11.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
                <li class="orderli1"><img src="img/12.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
                <li class="orderli1"><img src="img/13.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
                <li class="orderli1"><img src="img/14.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="ordercontent_2">
            <div class="ordercontent_2_1">
                 <font size="+2"><b>订单详情</b></font>
            </div>
            <div class="ordercontent_2_2">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#A499A4">订单已提交</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#A499A4">——————————————></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#0089DC">已送达</font><br /> <br />    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#DDDDDD">●</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0089DC">●</font>
            </div> 
            <%if(obj!=null) {
            
                   for (int i=0; i<obj.size(); i++){
            %>
            <div class="ordercontent_2_3">
                       <div class="ordercontent_2_3_1"> <img src="img/<%=obj.get(i).getFoodbean().getImg() %>" /></div>
                       <div class="ordercontent_2_3_2"><%=obj.get(i).getRes().getEname() %><br /><br />订单号：<%=obj.get(i).getOid() %></div>
                       <div class="ordercontent_2_3_3">商家地址：<%=obj.get(i).getRes().getEaddress() %></div>
                       <div class="ordercontent_2_3_4"><img  src="img/16.PNG"/></div>
            </div>
            
            <div class="ordercontent_2_4">
                       <div class="ordercontent_2_4_1"><b>菜品</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>数量</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>小计（元）</b></div>
                       <div class="ordercontent_2_4_2">
                              <div class="ordercontent_2_4_2_1"><%=obj.get(i).getFoodbean().getFname() %></div>
                              <div class="ordercontent_2_4_2_2"><%=obj.get(i).getCounts() %></div>
                              <div class="ordercontent_2_4_2_3"><%=obj.get(i).getSubtotal() %></div>
                       </div>
                       <div class="ordercontent_2_4_3">实际支付：<font color="#F74369" size="+3"><b>16.00</b></font></div>
            </div>  
            <div class="ordercontent_2_5">
                    <div class="ordercontent_2_5_1"><b>配送信息</b></div>
                    <div class="ordercontent_2_5_2">联 系 人：李昆</div>
                    <div class="ordercontent_2_5_3">联系电话：18207303543</div>
                    <div class="ordercontent_2_5_4">收货地址：湖南理工学院(南院)学院路439号南院1栋</div>   
            </div>
             <%
                   }           
             } 
             %> 
             
              <div style="clear:right;"></div>
              <div style="clear:left;"></div> 
             <%
                  // String SallPage=null;
                   Integer allPage=0;
             if(session.getAttribute("allPage")!=null){
                   allPage=(Integer)session.getAttribute("allPage");
                //  allPage=Integer.parseInt(SallPage);
             }
              %>
             <div class="ordercontent_2_6">
                    <%if(allPage!=null){
                         for(int i=0;i<allPage;i++){
                     %>
                    <div class="ordercontent_2_6_1"><a href="order_informationAction_f?pageCount=<%=i+1%>"><%=i+1%></a></div>
                    <%
                            }  
                    }
                     %>
             </div>   
        </div>
      
    </div>
    <div style="clear:right;"></div>
    <div style="clear:left;"></div>
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
</html>

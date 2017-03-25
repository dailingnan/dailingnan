<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.dailingnan.pojo.OrderBean" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% 
     List<OrderBean> obj=null;   
     if(session.getAttribute("orderBean")!=null){
      obj=(List<OrderBean>)session.getAttribute("orderBean");
     }
     String state=null;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心_我的订单</title>
<link rel="stylesheet" type="text/css" href="css/order.css"/>
</head>

<body>
	<div class="top" >  
    	<div class="top_1">
            <div class="top_2"><img src="img/1.png" /></div>
            <div class="top_3">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="orderAction">我的订单</a></li>
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
          
        	<div class="ordercontent_5">
       			<div class="ordercontent_3">近3个月订单</div>
                <div class="ordercontent_4"><img src="img/takeout.png" height="60px" /></div>
                <div style="clear:left;"></div>
        	</div>
            <div class="ordercontent_6">热门问题 随时关注订单状态</div>
             <div style="clear:right;"></div>
             <!--订单栏-->
          	<div class="ordercontent_7">
            	<div class="ordercontent_8">下单时间</div>
                <div class="ordercontent_9">订单内容</div>
                <div class="ordercontent_9_1">距离下单已过去</div>
                <div class="ordercontent_10">支付金额</div>
                <div class="ordercontent_11">状态</div>
                <div class="ordercontent_11">操作</div>
                <div style="clear:left;"></div>
            </div>
            <!--订单项-->
            <% if(obj!=null){
               for (int i=0;i<obj.size();i++){
            %>
            
             <%  DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Date date = new Date();
					Date date1 = df.parse(obj.get(i).getOrdertime());
					long diff = date.getTime()-date1.getTime();
					long hours=diff/(1000*60*60);
					long days = diff / (1000 * 60 * 60 * 24);
					System.out.println(hours+"时间差"+days);
					System.out.println(df.format(date));
                %>
            <div class="ordercontent_12">
            	<div class="ordercontent_13">
                	<div class="ordercontent_17"><%=df.format(date1) %></div>
                </div>
                <div class="ordercontent_14">
                	<div class="ordercontent_19"><img src="img/53c2ebc1fb7d7671e28086628a07fjpeg.jpg" /></div>
                    <div class="ordercontent_20">
                    	<div class="ordercontent_21">
                        	<div class="ordercontent_22">锅锅香（肉拌饭）</div>
                            <div class="ordercontent_23">【抢】爆炒鸡杂1份 1 个菜品</div>
                            <div class="ordercontent_24">订单号: <%=obj.get(i).getOid() %></div>
                        </div>
                    </div>
                </div>
               
                <div class="ordercontent_14_1">
                         <%   String s="";
                              if(hours>24){
                                   hours=hours/24;
                                   s="天";
                              }else{
                                  s="小时";
                              }
                         
                          %>
                      <div class="ordercontent_14_1_1"><%=hours %><%=s %></div>
                </div>
      
                <div class="ordercontent_15">
                	<div class="ordercontent_25"><%=obj.get(i).getOrdertotal() %></div>
                    <div class="ordercontent_26">在线支付</div>
                </div>
                <div class="ordercontent_16">
                	<div class="ordercontent_27">
                	<%if(obj.get(i).getState().equals("0")){
                	       state="未支付";
                	       }
                	  else if(obj.get(i).getState().equals("1")){
                	       state="已支付，未处理";
                	  }else  if(obj.get(i).getState().equals("2")){
                	       state="已发货";
                	  } else  if(obj.get(i).getState().equals("3")){
                	        state="已完成"; 
                	        }
                	        else  
                	         state=null;
                	
                	 %><%=state %></div>
                </div>
                <div class="ordercontent_16">
                    <div class="ordercontent_16_1">
                    <a href="stateUpdateAction_2?payid=<%=obj.get(i).getOid()%>">去付款</a>
                    </div>
                	<div class="ordercontent_28">
                	    
                    	<a href="/ele/order_informationAction?id=<%=obj.get(i).getOid() %>">订单详情</a>
                    </div>
                    <div class="ordercontent_29">再来一份</div>
                </div>
                <div style="clear:left;"></div>
            </div>
            
            <%      }
                  }
             %>
              <!--订单项完成-->
              
              <div class="ordercontent_30">
              		<a href="order_informationAction?pageCount=1">1</a>
              		<a href="order_informationAction?pageCount=2">2</a>
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
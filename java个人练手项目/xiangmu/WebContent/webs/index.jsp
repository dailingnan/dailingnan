<%@page import="util.DBtool,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
</head>
<body>
 <%
    List<Map<String,Object>>  list0=DBtool.exeQuery("select * from goods where cid='6'");
 	HashMap<String, Object>  userlist = (HashMap<String, Object>)session.getAttribute("user");
     %>
	<div class="top">
    	<div class="top1">
       
        	<ul>
            	<li><a href="#">银泰首页</a></li>
                <li><a href="#">微信</a></li>
                <li><a href="#">手机银泰</a></li>
            </ul>
           <a name="1F" style="float:left"></a> 
           <div class="login1">
           		<%if(userlist==null){%>
           		您还未登录,<a href="/xiangmu/denglu.jsp">请登录</a><a href="/xiangmu/zhuce.jsp">注册</a>
           		<%}else{ %>
           		欢迎${user.name},<a href="/xiangmu/logout">登出</a>！
           		<%} %>
           </div>
            <!--<span  class="login"><a href="denglu.html">请登录</a></span>-->
            <div class="ulright">
            	<ul>
                	
                	<li><a href="/xiangmu/OrderServlet">我的订单</a></li>
                    <li><a href="/xiangmu/message.jsp">我的银泰</a></li>
                    <li><a href="#">银泰卡</a></li>
                    <li><a href="#">帮助中心</a></li>
                    
                </ul>
            </div>
        </div>
        
        <div class="top2">
        	
        	<div class="top2-1"> </div><!-- 左边-->
            <div class="top2-3"><input /><div class="top2-4"><a href="/xiangmu/CardServlet">购物车0件</a></div><button>搜索</button></div><!-- 右边边-->
            <div class="top2-2"><img src="image/2.png" id="img1"/></div><!-- 中间-->
        </div>
        
        <div class="top3">
        	<div class="top3-1">
            	<ul>
                	<li><a href="#">银泰百货</a></li>
                    <li><a href="#">名品馆</a></li>
                    <li><a href="#">特卖</a></li>
                    <li><a href="#">海淘馆</a></li>
                    <li><a href="#">荣耀旗舰店</a></li>
                </ul>
            </div>
            <div class="top3-2">
            	<ul>
                	<li><a href="#">积分商城</a></li>
                    <li><a href="#">全部品牌</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--内容-->
    <div class="content">
    	<div class="content1" name="content1">
        	<div class="content1-1">
            	<div class="content1-2">全部分类</div>
                <div class="content1-3">
                	<ul>
                    	<li><a href="#" id="li11">名品&nbsp;&nbsp;|&nbsp;&nbsp;春夏商新</a></li>
                        <li><a href="#" id="li12">女装&nbsp;&nbsp;|&nbsp;&nbsp;连衣裙</a></li>
                        <li><a href="#" id="li13">男装&nbsp;&nbsp;|&nbsp;&nbsp;型男单品</a></li>
                        <li><a href="#" id="li14">鞋靴&nbsp;&nbsp;|&nbsp;&nbsp;时尚鞋品</a></li>
                        <li><a href="#" id="li15">美妆&nbsp;&nbsp;|&nbsp;&nbsp;隔离防晒</a></li>
                        <li><a href="#" id="li16">名品&nbsp;&nbsp;|&nbsp;&nbsp;春夏商新</a></li>
                        <li><a href="#" id="li17">箱包&nbsp;&nbsp;|&nbsp;&nbsp;女神单肩</a></li>
                        <li><a href="#" id="li18">运动&nbsp;&nbsp;|&nbsp;&nbsp;运动鞋服</a></li>
                        <li><a href="#" id="li19">配饰&nbsp;&nbsp;|&nbsp;&nbsp;黄金饰品</a></li>
                        <li><a href="#" id="li110">婴童&nbsp;&nbsp;|&nbsp;&nbsp;母婴</a></li>
                         <li><a href="#" id="li111">家居&nbsp;&nbsp;|&nbsp;&nbsp;四件套</a></li>
                    </ul>
                </div>
               
            </div>
             <div class="content1-4"></div>
             <div  class="content1-5">
             	<ul>
                	<li id="li1">&nbsp;</li>
                    <li id="li2">&nbsp;</li>
                    <li id="li3">&nbsp;</li>
                </ul>
             </div>
             <!--隐藏div-->
             <div id="ci1">
             	<div class="item1">
                	<h3><a href="#">男装</a></h3>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">衬衫</a><a  id="item3" href="#">T恤</a><a href="#">裤装</a><a href="#">卫衣	</a></p>
                </div>
                <div class="item1">
                	<h6><a href="#">女装</a></h6>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">裙装</a><a href="#">衬衫</a><a href="#">裤装</a><a href="#">T恤	</a></p>
                </div>
                <div class="item1">
                	<h3><a href="#">鞋靴</a></h3>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">女士单鞋</a><a href="#">女士低鞋</a><a  id="item3" href="#">男鞋</a><a href="#">高跟鞋	</a></p>
                </div>
                <div class="item1">
                	<h3><a href="#">女包</a></h3>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">手提单挎包</a><a href="#">单肩包</a><a href="#">钱夹</a><a href="#">卫衣	</a></p>
                </div>
                <div class="item1">
                	<h4><a href="#">男包</a></h4>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">钱包</a><a href="#">单肩包</a><a href="#">手拿包</a><a id="item3" href="#">手提包	</a></p>
                </div>
                 <div class="item1">
                	<h4><a href="#">海淘	</a></h4>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">零食</a><a href="#">婴童</a>
                    <a href="#">服装鞋靴</a><a href="#">直邮</a><a href="#">腰带</a><a href="#">箱包	</a></p>
                </div>
                <div class="item1">
                	<h4><a href="#">男装</a></h4>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">衬衫</a><a href="#">T恤</a><a href="#">裤装</a><a href="#">卫衣	</a></p>
                </div>
                <div class="item1">
                	<h4><a href="#">婴童</a></h4>
                    <p><a id="item3" href="#" >新品</a><a  href="#">童装</a><a href="#">童鞋</a><a href="#">婴童配饰</a></p>
                </div>
             </div>
             <!--隐藏结束-->
             <div id="ci2">
             	<div class="item1">
                	<h3><a href="#">热门搜索
                    </a></h3>
                    <p><a id="item3" href="#" >新品</a><a id="item3" href="#">商品同款</a><a href="#">连衣裙</a><a href="#">打底裤</a><a href="#">裤装	</a></p>
                </div>
                <div class="item1">
                	<h6><a href="#">流行元素</a></h6>
                    <p><a id="item3" href="#" >欧美风</a><a id="item3" href="#">英伦风</a><a href="#">韩范</a><a href="#">简约风</a><a id="item3"  href="#">体现风	</a><a href="#">纯色</a><a href="#">绣花</a><a href="#">森女棉麻</a><a id="item3"  href="#">蕾丝衫</a></p>
                </div>
                <div class="item1">
                	<h3><a href="#">上装</a></h3>
                    <p><a id="item3" href="#" >针织衫</a><a id="item3" href="#">T恤</a><a href="#">衬衫</a><a href="#">吊带/马甲</a><a href="#">卫衣/泳衣	</a><a id="item3" href="#">外套</a></p>
                </div>
                <div class="item1">
                	<h3><a href="#">下装</a></h3>
                    <p><a id="item3" href="#" >牛仔裤</a><a id="item3" href="#">体闲裤</a><a href="#">西裤</a><a href="#">九分裤</a><a href="#">短裤	</a><a id="item3" href="#" >七分裤</a><a id="item3" href="#" >铅笔裤</a></p>
                </div>
                <div class="item1">
                	<h4><a href="#">裙装</a></h4>
                    <p><a id="item3" href="#" >半身裙</a><a id="item3" href="#">长袖裙</a><a href="#">牛仔裙</a><a href="#">雪纺裙</a><a href="#">连衣裙	</a></p>
                </div>
                 <div class="item1">
                	<h4><a href="#">女士内衣</a></h4>
                    <p><a id="item3" href="#" >文胸</a><a id="item3" href="#">底裤</a><a href="#">居家服</a><a href="#">束身衣</a><a href="#">吊带/背心	</a></p>
                </div>
                <div class="item1">
                	<h4><a href="#">户外体闲裤</a></h4>
                    <p><a id="item3" href="#" >运动裤</a><a id="item3" href="#">冲锋衣</a><a href="#">速干裤</a><a href="#">冲锋裤</a><a href="#">卫衣	</a></p>
                </div>
                <div class="item1">
                	<h4><a href="#">健身运动服</a></h4>
                    <p><a id="item3" href="#" >瑜伽服</a><a id="item3" href="#">男士运动服</a><a href="#">女士运动服</a><a href="#">裤装</a><a href="#">卫衣	</a></p>
                </div>
             </div>
             <!--隐藏结束-->
             <div style="clear:left"></div>
        </div>
        <a name="2F" style="float:left"></a> 
        <div class="content2">
        	<div class="content2-1">
            	<ul>
                	<li><a href="#">超值特卖</a></li>
                    <li><a href="#">爆款特卖</a></li>
                    <li><a href="#">手机特卖</a></li>
                </ul>
            </div>
            
            <%
            
   			 List<Map<String,Object>>  list=DBtool.exeQuery("select * from goods where cid='0'");
            
            %>
            <%try{%>
            	
            	 <div class="content2-2">
            	<div class="content2-3">
                	<img src="image/<%=list.get(0).get("image")%>"/>
                    <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list.get(0).get("gid")%>"><%=list.get(0).get("gintrodue") %></a>
                        <strong>银泰价：￥<%=list.get(0).get("price") %></strong>
                        <span>参考价：￥438</span>
                    </div>
                </div>
                <div class="content2-3">
                <img src="image/<%=list.get(1).get("image") %>"/>
                	<div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list.get(1).get("gid")%>"><%=list.get(1).get("gintrodue") %><br /></a>
                        <strong>银泰价：￥<%=list.get(1).get("price") %></strong>
                        <span>参考价：￥290</span>
                    </div>
                </div>
                <div class="content2-3">
                	<img src="image/<%=list.get(2).get("image") %>"/>
                    <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list.get(2).get("gid") %>"><%=list.get(2).get("gintrodue") %></a>
                        <strong>银泰价：￥<%=list.get(2).get("price") %></strong>
                        <span>参考价：￥259</span>
                    </div>
                </div>
                <div class="content2-3">
                	<img src="image/<%=list.get(3).get("image") %>"/>
                    <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list.get(3).get("gid")%>"><%=list.get(3).get("gintrodue") %></a>
                        <strong>银泰价：￥<%=list.get(3).get("price") %></strong>
                        <span>参考价：￥99</span>
                    </div>
                </div>
            </div>
            <div class="content2-5"><img src="image/<%=list0.get(3).get("image") %>" /></div>
            <div class="content2-6"><img src="image/c636c331-ee51-42c3-b284-9f3b984be9fb.jpg" /></div>
        </div>
            	
            <%}catch(IndexOutOfBoundsException e){
            	response.setContentType("text/html;charset=utf-8");
         		response.sendError(404,"工作人员正在上货....");
            } %>
           
    	<!--开始-->
        <a name="3F" style="float:left"></a> 
        <div class="content3">
        	<div class="content3-1">
            	<img src="image/<%=list0.get(4).get("image") %>" />
            </div>
            <div class="content3-2">
            	<div class="content3-3">
                	<ul>
                    	<li><a href="#">热门品牌</a></li>
                        <li><a href="#">本周推荐</a></li>
                    </ul>
                    </div>
    <%
    List<Map<String,Object>>  list1=DBtool.exeQuery("select * from goods where cid='1'");
     %>
     <%
     try{%>
    	 <div class="content3-4">    
                	<div class="content3-5">
                   		<img src="image/<%=list1.get(0).get("image") %>" />
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(0).get("gid")%>"><%=list1.get(0).get("gintrodue") %></a><br />
                       <h6>￥59--参考价：￥<%=list1.get(0).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(1).get("image") %>"/>
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(1).get("gid")%>"><%=list1.get(1).get("gintrodue") %></a><br />
                       <h6>￥179--参考价：￥<%=list1.get(1).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(2).get("image") %>"/>
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(2).get("gid")%>"><%=list1.get(2).get("gintrodue") %></a><br />
                       <h6>￥129--参考价：￥<%=list1.get(2).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(3).get("image") %>"/>
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(3).get("gid")%>"><%=list1.get(3).get("gintrodue") %></a><br />
                       <h6>￥199--参考价：￥<%=list1.get(3).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(4).get("image") %>"/>
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(4).get("gid")%>"><%=list1.get(4).get("gintrodue") %></a><br />
                       <h6>￥499--参考价：￥<%=list1.get(4).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(5).get("image") %>"/>
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(5).get("gid")%>"><%=list1.get(5).get("gintrodue") %></a><br />
                       <h6>￥229--参考价：￥<%=list1.get(5).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(6).get("image") %>"/>
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(6).get("gid")%>"><%=list1.get(6).get("price") %></a><br />
                       <h6>￥99--参考价：￥<%=list1.get(6).get("price") %></h6>
                    </div>
                   </div>
                   <div class="content3-5">
                   		<img src="image/<%=list1.get(7).get("image") %>" />
                        <div class="content2-4">
                    	<a href="/xiangmu/ShangPingServlet?gid=<%=list1.get(7).get("gid")%>"><%=list1.get(7).get("gintrodue") %></a><br />
                       <h6>￥139--参考价：￥<%=list1.get(7).get("price") %></h6>
                    </div>
                   </div>
                   
                </div>
            </div>
     <%}catch(IndexOutOfBoundsException e){
    	 response.setContentType("text/html;charset=utf-8");
     	response.sendError(404, "工作人员正在上货.....");
     }
     %>
                
                
             <div class="content3-6"><img src="image/c04abc82-4521-439f-a6ff-989e1769f74a.jpg" /></div>
        </div>
        <a name="4F" style="float:left"></a> 
        <div class="content4">
        	<div class="content4-1">
            	<div class="content4-2">
                	<ul>
                    	<li><a href="#">长袖衬衫</a></li>
                        <li><a href="#">短袖衬衫</a></li>
                        <li><a href="#">体闲裤</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">短裤</a></li>
                        <li><a href="#">牛仔裤	</a></li>
                        <li><a href="#">POLO衫</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">长袖T恤</a></li>
                        <li><a href="#">短袖T恤</a></li>
                        <li><a href="#">九分裤</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">战地吉普</a></li>
                        <li><a href="#">伯爵卓尔</a></li>
                        <li><a href="#">柏图</a></li>
                    </ul>
                    
                </div>
               	<div class="content4-3">
                	<div class="content4-4"><a href="#"><img src="image/75db6322-7918-49e9-ba1b-00176aa7202d.jpg"  width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/brand-320.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/7ff91531-112e-427b-994f-e24a33b2fec5.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/c7df0c04-cf8b-4986-af80-0c39d553191e.jpg" width="75px" height="55px" /></a></div>
                </div>
                
            </div>
           <%
    		List<Map<String,Object>>  list2=DBtool.exeQuery("select * from goods where cid='2'");
    	 %>
    	 <%
     try{%>
    	 <div class="content4-5"><img src="image/<%=list0.get(5).get("image") %>" height="390px" width="390px" /></div>
             <div class="content4-6">
             	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list2.get(0).get("image") %>" />
                </div>
                </a>
               	<a href="#"> <div class="content4-7" id="content4-7">
                	<img src="image/<%=list2.get(1).get("image") %>"/>
                </div>
                 </a>
                	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list2.get(2).get("image") %>"/>
                </div>
                 </a>
               	<a href="#"> <div class="content4-7" id="content4-7">
                	<img src="image/<%=list2.get(3).get("image") %>"/>
                </div>
                 </a>
             </div>
        </div>
     <%}catch(IndexOutOfBoundsException e){
    	 response.setContentType("text/html;charset=utf-8");
     	response.sendError(404, "工作人员正在上货.....");
     }
     %>
            
        <a name="5F" style="float:left"></a> 
        <div class="content4">
        	<div class="content4-1">
            	<div class="content4-2">
                	<ul>
                    	<li><a href="#">女鞋</a></li>
                        <li><a href="#">男鞋</a></li>
                        <li><a href="#">乐福鞋</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">女士凉鞋</a></li>
                        <li><a href="#">体现鞋</a></li>
                        <li><a href="#">商务鞋</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">高跟鞋</a></li>
                        <li><a href="#">平跟鞋</a></li>
                        <li><a href="#">坡跟鞋</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">尖头鞋</a></li>
                        <li><a href="#">鱼嘴鞋</a></li>
                        <li><a href="#">豆豆鞋</a></li>
                    </ul>
                    
                </div>
               	<div class="content4-3">
                	<div class="content4-4"><a href="#"><img src="image/brand-159.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/8ec026d8-e3e3-44ef-b6a9-7a8a2fdb7cd6.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/f2a70bf0-e257-4156-9ce2-72d92d7e35b4.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/7d0383fb-fc33-4b16-bd9f-14c59196b8df.jpg" width="75px" height="55px" /></a></div>
                </div>
                
            </div>
            <%
   			 List<Map<String,Object>>  list3=DBtool.exeQuery("select * from goods where cid='3'");
     		%>
     		<%
     try{%>
    	 <div class="content4-5"><img src="image/<%=list0.get(6).get("image") %>" height="390px" width="390px" /></div>
             <div class="content4-6">
             	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list3.get(0).get("image") %>" />
                </div></a>
               	<a href="#"> <div class="content4-7" id="content4-7">
                	<img src="image/<%=list3.get(1).get("image") %>"/>
                </div></a>
                	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list3.get(2).get("image") %>"/>
                </div></a>
               	<a href="#"> <div class="content4-7" id="content4-7">
                	<img src="image/<%=list3.get(3).get("image") %>"/>
                </div></a>
             </div>
        </div>
     <%}catch(IndexOutOfBoundsException e){
    	 response.setContentType("text/html;charset=utf-8");
     	response.sendError(404, "工作人员正在上货.....");
     }
     %>
            
        <a name="6F" style="float:left"></a> 
        <div class="content4">
        	<div class="content4-1">
            	<div class="content4-2">
                	<ul>
                    	<li><a href="#">女士单肩</a></li>
                        <li><a href="#">女士斜跨</a></li>
                        <li><a href="#">女士双肩</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">女士	钱包</a></li>
                        <li><a href="#">女士多种</a></li>
                        <li><a href="#">女士手提</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">男士单肩</a></li>
                        <li><a href="#">男士手提</a></li>
                        <li><a href="#">男士钱包</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">男士腰带</a></li>
                        <li><a href="#">旅行双肩</a></li>
                        <li><a href="#">旅游箱</a></li>
                    </ul>
                    
                </div>
               	<div class="content4-3">
                	<div class="content4-4"><a href="#"><img src="image/brand-442.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/brand-119.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/brand-125.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/47038528-ea50-47e5-9709-d05f038cd619.jpg" width="75px" height="55px" /></a></div>
                </div>
                
            </div>
            <%
    			List<Map<String,Object>>  list4=DBtool.exeQuery("select * from goods where cid='4'");
    			%>
    			<%
     try{%>
    	 <div class="content4-5"><img src="image/<%=list0.get(7).get("image") %>" height="390px" width="390px" /></div>
             <div class="content4-6">
             	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list4.get(0).get("image") %>" />
                </div></a>
                	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list4.get(1).get("image") %>" />
                </div></a>
                	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list4.get(2).get("image") %>"/>
                </div></a>
                	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list4.get(3).get("image") %>"/>
                </div></a>
             </div>
        </div>
     <%}catch(IndexOutOfBoundsException e){
    	 response.setContentType("text/html;charset=utf-8");
     	response.sendError(404, "工作人员正在上货.....");
     }
     %>
            
        <a name="7F" style="float:left"></a> 
        <div class="content4">
        	<div class="content4-1">
            	<div class="content4-2">
                	<ul>
                    	<li><a href="#">短袖T恤</a></li>
                        <li><a href="#">POLO衫</a></li>
                        <li><a href="#">短裤</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">运动裤</a></li>
                        <li><a href="#">泳装</a></li>
                        <li><a href="#">凉鞋/拖鞋</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">复古鞋</a></li>
                        <li><a href="#">帆布鞋</a></li>
                        <li><a href="#">跑步鞋</a></li>
                    </ul>
                    <ul>
                    	<li><a href="#">篮球鞋</a></li>
                        <li><a href="#">运动箱包</a></li>
                        <li><a href="#">户外装备</a></li>
                    </ul>
                    
                </div>
               	<div class="content4-3">
                	<div class="content4-4"><a href="#"><img src="image/2a96bb82-4a18-4d1f-a3a6-bb43dbd34ab7.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/47038528-ea50-47e5-9709-d05f038cd619.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/62b9e169-a6d1-4bf2-bbf1-702a0c0b7faa.jpg" width="75px" height="55px"/></a></div>
                    <div class="content4-4"><a href="#"><img src="image/5c35b5fa-2a61-4715-891c-6177532fd386.jpg" width="75px" height="55px" /></a></div>
                </div>
                
            </div>
            <%
   			 List<Map<String,Object>>  list5=DBtool.exeQuery("select * from goods where cid='5'");
    		%>
    		<%
     try{%>
    	 <div class="content4-5"><img src="image/<%=list0.get(8).get("image") %>" height="390px" width="390px" /></div>
             <div class="content4-6">
             	<a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list5.get(0).get("image")%>" />
                </div></a>
               <a href="#"> <div class="content4-7" id="content4-7">
                	<img src="image/<%=list5.get(1).get("image")%>"/>
                </div></a>
               <a href="#"> <div class="content4-7" id="content4-7">
                	<img src="image/<%=list5.get(2).get("image")%>"/>
                </div></a>
                <a href="#"><div class="content4-7" id="content4-7">
                	<img src="image/<%=list5.get(3).get("image")%>"/>
                </div></a>
             </div>
        </div>
     <%}catch(IndexOutOfBoundsException e){
    	 response.setContentType("text/html;charset=utf-8");
     	response.sendError(404, "工作人员正在上货.....");
     }
     %>
            
        <div class="content6">
        	<div class="content6-1">
            	<a href="#"><img src="image/QQ截图20160726192246.png"/></a>
            </div>
            <div class="content6-1">
            	<a href="#"><img src="image/QQ截图20160726191826.png"/></a>
            </div>
            <div class="content6-1">
            	<a href="#"><img src="image/QQ截图20160726191846.png"/></a>
            </div>
        </div>
        <div class="content7"><img src="image/phone-ft-banner.jpg"/></div>
        <div class="content7">
        	<div class="content8"><strong>400-119-1111</strong>&nbsp;&nbsp;&nbsp;&nbsp;<span>8:00-24:00</span><br /><h6>service@yintai.com</h6></div>
            <div class="content8"><strong>15天无忧退换货</strong><br /><h6>为您提供优质售后服务</h6></div>
            <div class="content8"><strong>100%正品保证</strong><br /><h6>品质护航 购物无忧</h6></div>
            <div class="content8"><strong>满199元包邮</strong><br /><h6>为您提供便利物流</h6></div>
        </div>
        
    </div>
    <!--底部-->
    <div class="bottom">
    	<div class="bottom1">
        	<ul>
            	<li><a href="#">关于银泰<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">帮助中心<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">退换货政<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">网站地图<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">代理合作<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">品牌招商<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">商务合作<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">网站联盟<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">联系我们<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">加入银泰<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">版权声明<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
                <li><a href="#">法律声明<img src="image/LBXM4GQD$(@D$%[UY8G~I90.png" /></a></li>
            </ul>
        </div>
        <div class="bottom2">
        	<h6>浙ICP备10200233号京公网安备110105019085增值电信业务经营许可证：浙B2-20110005</h6>
            <h6>Yintai © 2016, 银泰电子商务有限公司.</h6>
        </div>
        <div class="bottom3">
        	<img src="image/yt-ntegrity.png" /> <img src="image/commerce.gif" class="bottom4" />
        </div>
    </div>
    <%
	String sql="select cname from category where cid not in('6')";
	List<Map<String,Object>> lo=DBtool.exeQuery(sql);
	%>
    <div class="guding">
    	<ul>
    	<li><a href="#1F">时尚名品</a></li>
    	<% for(int o=0;o<lo.size();o++){%>
		<li><a href="#<%=o+2 %>F"><%=lo.get(o).get("cname") %></a></li>
		<%} %>
    	</ul>
    	
    	
    </div>
</body>
</html>
<script> 
	function img1(){
		var a = document.getElementById("img1");
		
			if(a.src=="http://localhost:8080/xiangmu/webs/image/2.png"){
					a.src="image/22.png"
				}else{
						a.src="image/2.png"
					}
					setTimeout(img1,1000);
		}
	
		img1();
	function li(){
			var li1 = document.getElementById("li1");
			var li2 = document.getElementById("li2");
			var li3 = document.getElementById("li3");
			var a = ['image/<%=list0.get(0).get("image") %>','image/<%=list0.get(1).get("image") %>','image/<%=list0.get(2).get("image") %>'];
			var con = document.getElementsByName("content1").item(0);
			li1.onmouseover = function(){
					con.style.backgroundImage = 'url('+a[0]+')';//改变背景图片
					clearInterval(timer);
					
				}
			li1.onmouseout = function(){
					 timer=setInterval(change,3000);
				}
			li2.onmouseover = function(){
					con.style.backgroundImage = 'url('+a[1]+')';//改变背景图片
					clearInterval(timer);
				}
			li2.onmouseout = function(){
				timer=setInterval(change,3000);
				}
			li3.onmouseover = function(){
					con.style.backgroundImage = 'url('+a[2]+')';//改变背景图片
					clearInterval(timer);
				}	
			li3.onmouseout = function(){
				 timer=setInterval(change,3000);
				}		
		}
		
		var i=1;
		function change(){
			var a = ['image/<%=list0.get(0).get("image") %>','image/<%=list0.get(1).get("image") %>','image/<%=list0.get(2).get("image") %>'];
				var li1 = document.getElementById("li1");
				var li2 = document.getElementById("li2");
				var li3 = document.getElementById("li3");
				var con = document.getElementsByName("content1").item(0);
				if(i>2){
					i=0;
					}
				con.style.backgroundImage = 'url('+a[i]+')';
				i++;	
				
			}
			 var timer=setInterval(change,3000);
			 li();
		function hidden1(){
				var li11 = document.getElementById("li11");
				var ci1 = document.getElementById("ci1");
				
				li11.onmouseover = function(){
						ci1.style.display="block";
						
					}
				li11.onmouseout = function(){
						ci1.style.display="none";
					}
				ci1.onmouseover = function(){
					//onmousemove
						ci1.style.display="block";
					}
					
				
				ci1.onmouseout = function(){
					//setTimeout(function(){
							//ci1.style.display="none";
						//},1000);
						ci1.style.display="none";
						
						
					}
				
				
			}
			hidden1();
			function hidden(){
				var li12 = document.getElementById("li12");
				var ci2 = document.getElementById("ci2");
				
				li12.onmouseover = function(){
						ci2.style.display="block";
					}
				li12.onmouseout = function(){
						ci2.style.display="none";
					}
				ci1.onmouseover = function(){
						ci2.style.display="block";
					}
				ci2.onmouseout = function(){
						ci2.style.display="none";
					}
				
				
			}
			//hidden();
			function hidden2(ci1,li1){
				
				
				li1.onmouseover = function(){
						ci1.style.display="block";
						
					}
				li1.onmouseout = function(){
						ci1.style.display="none";
					}
				ci2.onmouseover = function(){
					//onmousemove
						ci1.style.display="block";
					}
					
				
				ci1.onmouseout = function(){
					//setTimeout(function(){
							//ci1.style.display="none";
						//},1000);
						ci1.style.display="none";
						
						
					}
				
			}
				
			var li12 = document.getElementById("li12");
			var ci1 = document.getElementById("ci1");
			var ci2 = document.getElementById("ci2");
			var li14 = document.getElementById("li14");
			var li15 = document.getElementById("li15");
			var li16 = document.getElementById("li16");
			var li17 = document.getElementById("li17");
			var li18 = document.getElementById("li18");
			var li19 = document.getElementById("li19");
			var li110 = document.getElementById("li110");
			var li111 = document.getElementById("li111");
			hidden2(ci2,li12);
			var li13 = document.getElementById("li13");
			hidden2(ci1,li13);
			hidden2(ci2,li14);
			hidden2(ci1,li15);
			hidden2(ci2,li16);
			hidden2(ci1,li17);
			hidden2(ci2,li18);
			hidden2(ci1,li19);
			hidden2(ci2,li110);
			hidden2(ci1,li111);
			
			
			
			
			
			
</script>
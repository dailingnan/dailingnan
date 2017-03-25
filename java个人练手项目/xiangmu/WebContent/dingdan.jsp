<%@page import="user.User"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单信息</title>
<link rel="stylesheet" type="text/css" href="css/dingdan.css"/>
<%
ArrayList<HashMap<String, Object>> list = (ArrayList<HashMap<String, Object>>)session.getAttribute("order");
User user = (User)session.getAttribute("user");
%>
</head>

<body>
<div class="top">
    	<div class="top1">
        	<ul>
            	<li><a href="#">银泰首页</a></li>
                <li><a href="#">微信</a></li>
                <li><a href="#">手机银泰</a></li>
            </ul>
            <a name="1F" style="float:left"></a> 
           <div class="login1">您还未登录,<a href="denglu.html">请登录</a><a href="zhuce.html">注册</a></div>
            <div class="ulright">
            	<ul>
                	<li><a href="#">我的订单</a></li>
                    <li><a href="#">我的银泰</a></li>
                    <li><a href="#">银泰卡</a></li>
                    <li><a href="#">帮助中心	</a></li>
                    
                </ul>
            </div>
        </div>
        <div class="top4"></div>
        <div class="top2">
        	
        	<div class="top2-1"> </div><!-- 左边-->
            <div class="top2-3"><input /><div class="top2-4"><a href="#">购物车0件</a></div><button>搜索</button></div><!-- 右边边-->
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
    	<div class="content1">
        	<div class="content1-1"><span>您现在的位置&nbsp;：首页&nbsp;&nbsp;>&nbsp;&nbsp;我的银泰</span></div>
        </div>
        <div class="content1-2">
        	<div class="content1-3">
            	<div class="content1-5"><img src="image/QQ截图20160814101437.png" /></div>
                <div class="content1-6">
                	<ul>
                    	<li><a href="#"><div class="img1"><img src="image/QQ截图20160814102447.png" /></div>我的首页</a></li>
                        <li><a href="#"><div class="img1"><img src="image/QQ截图20160814104037.png"  height="21px" width="16" /></div>订单中心</a></li>
                       	<li><a href="#"><div class="img1"><img src="image/QQ截图20160814102500.png" height="21px" width="16" /></div>账户管理</a></li>
                       	<li><a href="#"><div class="img1"><img src="image/QQ截图20160814102509.png" height="21px" width="16" /></div>信息管理</a></li>
                        <li><a href="#"><div class="img1"><img src="image/QQ截图20160814102532.png" height="21px" width="16" /></div>收藏夹</a></li>
                       	<li><a href="#"><div class="img1"><img src="image/QQ截图20160814102539.png" height="21px" width="16" /> </div>个人资料</a></li>
                       	<li><a href="#"><div class="img1"><img src="image/QQ截图20160814102544.png" height="21px" width="16"  /></div>我的银泰卡</a></li>
                       	<li><a href="#"><div class="img1"><img src="image/QQ截图20160814102551.png" height="21px" width="16"  /></div>我的实体店贵宾卡</a></li>
                        
                    </ul>
                </div>
            </div>
            <div class="content1-4">
            	<div class="content1-7">
                	<div class="content1-8">
                    	<div class="content1-10"><img src="image/QQ截图20160814104926.png" /></div>订单中心
                    </div>
                    <div class="content1-9"><div class="content1-11"><img src="image/QQ截图20160814105142.png" /></div>售后客服</div>
                </div>
                <div class="content1-12">
                	<div class="content1-13">
                    	订单列表
                    </div>
                    <div class="content1-31">
                    
                    	<select>
                        	<option>近三个月订单</option>
                            <option>3月以前的订单</option>
                        </select>
                    </div>
                </div>
                <form action="" method="post">
               <div class="content1-14">
               		<div class="content1-15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交易提醒：<a href="#">待支付</a><a href="#">待确认收货</a><a href="#">待评论</a></div>
                    <div class="content1-16">
                    	<div class="content1-17">订单编号</div>
                        <div class="content1-18">订单商品</div>
                        <div class="content1-19">收货人</div>
                        <div class="content1-20">订单金额</div>
                        <div class="content1-21">下单日期</div>
                        <div class="content1-22">订单状态</div>
                        <div class="content1-23">操作</div>
                    </div>
                    <%for(int i=0;i<list.size();i++){%>
                    <div class="content1-26">
                    	<div class="content1-17"><%=list.get(i).get("oid") %></div>
                        <div class="content1-18"><img src="image/60681.jpg" width="47" height="63" /></div>
                        <div class="content1-19"><%=user.getUsername()%></div>
                        <div class="content1-20"><%=list.get(i).get("total") %></div>
                        <div class="content1-21"><%=list.get(i).get("ordertime") %></div>
                        <div class="content1-22">
                      
                      <%if(list.get(i).get("state").toString().equals("0")){ %>
                      		未付款
                      <%} %>
                       <%if(list.get(i).get("state").toString().equals("1")){ %>
                      		未发货
                      <%} %>
                       <%if(list.get(i).get("state").toString().equals("2")){ %>
                      		未签收
                      <%} %>
                       <%if(list.get(i).get("state").toString().equals("3")){ %>
                      		已签收
                      <%} %>
                        </div>
                        <div class="content1-23">

                        <a href="OrderServlet1?oid=<%=list.get(i).get("oid")%>">
                      
                         <%if(list.get(i).get("state").toString().equals("0")){ %>
                      		完成支付
                      <%} %>
                       <%if(list.get(i).get("state").toString().equals("1")){ %>
                      		已付款
                      <%} %>
                       <%if(list.get(i).get("state").toString().equals("2")){ %>
                      		签收
                      <%} %>
                       <%if(list.get(i).get("state").toString().equals("3")){ %>
                      		订单完成
                      <%} %>
                        </a>
                        <a href="#">订单详情</a>
                        <a href="OrderServlet3?oid=<%=list.get(i).get("oid")%>">取消订单</a>
                        </div>
                    </div>
                    <%} %>
               </div>
               </form>
               <div class="content1-27">
               		<div class="content1-29">上一页 | 下一页 共 1 页 第 1 页</div>
               		<div class="content1-28"><input type="text" /></div>
               		<div class="content1-30"><input type="button" value="确定" /></div>
               </div>
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
</body>
<script>
	function img1(){
		var a = document.getElementById("img1");
		
			if(a.src=="file:///E:/%E6%A1%8C%E9%9D%A2%E6%96%B0/html%E9%A1%B5%E9%9D%A2/image/2.png"){
					a.src="image/22.png"
				}else{
						a.src="image/2.png"
					}
					setTimeout(img1,1000);
		}
		img1();
</script>
</html>

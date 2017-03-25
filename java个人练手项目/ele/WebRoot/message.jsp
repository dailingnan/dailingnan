<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" type="text/css" href="css/gerenxinxi.css"/>
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
            
            
            <form action="updateAction" method="post">
            <div class="content1-4">
            	<p><img src="image/QQ截图20160814102539.png" />&nbsp;<font style="font-size:16px; font-weight:bold;">个人资料</font>&nbsp;&gt;&nbsp;基本资料&nbsp;&nbsp;&nbsp;<a href="cpassword.jsp">修改密码</a><p><br />
                <div style=" background:#666666; height:40px; color:#FFF; line-height:40px; text-indent:15px;">基本资料</div>
                <div style="width:100%; border:#666666 solid 1px; height:100%;">
                	<div class="yb1" name="user.username">用户帐号：${user.username} </div>
                	<div class="yb1">&nbsp;用户名：<input type="text" name="user.name" value="${user.name}" /> </div>
                    <div class="yb1">手机号码：<input type="text"  name="user.mobile_number" value="${user.mobile_number}"/> </div>
                    <div class="yb1">收货地址：<input type="text" name="user.address" value="${user.address}" /> </div>
                   
                    <div class="yb1" align="center"><input type="submit" value="保存" style="width:100px; height:30px; margin-top:10px; background:#666666; color:#FFF;" /></div>
                    <div class="yb1"> ${mess} </div>
                </div>
            </div>
            </form>
            
            
            
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

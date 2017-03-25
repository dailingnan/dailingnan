<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link rel="stylesheet" type="text/css" href="css/zhuce.css"/>

</head>

<body>
<div class="top">
    	<div class="top1">
        	<ul>
            	<li><a href="#">银泰首页</a></li>
                <li><a href="#">微信</a></li>
                <li><a href="#">手机银泰</a></li>
            </ul>
         
          
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
            <div class="top2-2"><img src="image/41.png" id="img1"/></div><!-- 中间-->
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
    <div class="content1-22">全部分类</div>
    <div class="content">
    	<div class="content1">
        	<div class="content1-1"><span class="span1">用户注册</span> <span class="span2">NEW USER LOGIN</span></div>
            
            <div class="content1-3">> 没有银泰账号，<input type="button" value="马上注册" /></div>
        </div>
        
        
        <div class="content1-2">
        <span style="margin-left: -600px; color: red">${msg}</span>
        	<div class="content1-4">
            	<span>E-mail/手机号</span>
                <div class="content1-6"><span>登录密码</span></div>
                <div class="content1-7"><span>再次输入密码</span></div>
                <div class="content1-7"><span>验证码</span></div>
                
            </div>
            <div class="content1-5">
            <form action="Regist" method="post" onsubmit="return check()">
            	<input type="text" id="text1" name="username"/>
                <div class="content1-9" id="t1">请输入E-mail或手机号码</div>
                <input type="password" id="text2"  name="password" /><span class="content1-9"></span>
                <div class="content1-9" id="t2" >请输入6-18位之间的字符</div>
                <input type="password"  id="text3" name="password"/><span class="content1-9"></span>
                <div class="content1-9" id="t3" >确认密码</div>
               <div class="content1-11"><input type="text" name="vc" /></div><div class="content1-12"><img id="img" src="/xiangmu/Verify"/></div>
               <div style="clear:left;"></div>
                <div class="content1-9">请输入右侧图中的验证码</div>
               <div class="content1-14"> <button type="submit">注册-REGISTRATION</button></div>
			</form>
              
            </div>
            
           	
            
            <div class="content1-10"></div>
          <div class="content20">
        	<div class="content1-1"> <span class="span2">您可以使用合作的网站登录</span></div>
            <div class="content1-15"><img src="image/QQ截图20160811153534.png" /></div>
            <div class="content1-15"><img src="image/QQ截图20160811153557.png" /></div>
            <div class="content1-15"><img src="image/QQ截图20160811153614.png" /></div>
            <div class="content1-15"><img src="image/QQ截图20160811153631.png" /></div>
            <div class="content1-15"><img src="image/QQ截图20160811153646.png" /></div>
        </div>
        </div>
          <div class="content7"></div>
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
		var b = document.getElementById("img1");
			
			if(b.src=="http://localhost:8080/xiangmu/image/41.png"){
					b.src="image/40.png"
					//alert("s");
				}else{
						b.src="image/41.png"
					}
					setTimeout(img1,1000);
		}
		img1();
		var text1 = document.getElementById("text1");
		var text2 = document.getElementById("text2");
		var text3 = document.getElementById("text3");
		var btn1 = document.getElementById("btn1");
		var t1 = document.getElementById("t1");
		var t2 = document.getElementById("t2");
		var t3 = document.getElementById("t3");
		var flag = true;
		
		function change(text1){
			text1.onfocus = function(){
					text1.style.borderColor="#DC014C";
				};
			text1.onblur = function(){
					text1.style.borderColor="#666666";
					var a = text1.value;
					
				}
				
				
			};
			var shouji = /^(13[0-9]|14[0-9]|15[0-9]|16[0-9])\d{8}$/;   //手机号码
			var email = /^[0-9a-zA-Z]+@[0-9a-zA-Z]+\.{1}[a-z]+$/;//邮箱
			
				function ishe1(){
						text1.onchange = function(){
							var a =(shouji.test(text1.value))||(email.test(text1.value));
								if(a){
									t1.innerHTML="&nbsp;";
								}else{
									t1.innerHTML="请输入正确的E-mail或已验证的手机号码！";
									flag = false;
									}
						}
					}	
				var mima = /^[a-zA-Z0-9]\w{6,15}$/; //密码
				function ishe2(){
						text2.onchange = function(){
						
							if(mima.test(text2.value)){
									t2.innerHTML="&nbsp;";
								}else{
									t2.innerHTML="密码可由字母、数字、特殊符号组成，长度为6-16个字符！";
									flag = false;
									}
						}
					}
				function ishe3(){
						text3.onchange = function(){
						
							if(text2.value==text3.value){
									t3.innerHTML="&nbsp;";
								}else{
									t3.innerHTML="两次密码不一致！";
									flag = false;
									}
						}
					}
			ishe2();
			ishe1();
			ishe3();
			change(text1);
			change(text2);
			change(text3);
			function check(){
				if(flag){
					flag = true;
					return true;
				}else{
					flag = true;
					return false;
				}
			}
			img.onclick = function(){
				img.src="/xiangmu/Verify?a="+new Date().getTime();
			}
</script>
</html>

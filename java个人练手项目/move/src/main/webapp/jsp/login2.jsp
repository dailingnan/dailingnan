<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>index</title>
<link rel="stylesheet" type="text/css" href="/move/css/login.css"/>
</head>

<body>
		<div class="top">
        	<div class="top1"><img src="/move/img/logo_signin.gif" /></div>
        </div>
<!----------------------------------------------------顶部-------------------------------------------------------->
      	<div class="content">
        	<div class="content1_1">
            	<img src="/move/img/1483510564030.jpg" />
            </div>
            <form method="post" action="/move/findMove.html" onsubmit="return check()">
            <div class="content1_2">
            
            	<div class="content1_3">登录<font color="red">${error}</font></div>
            	
                <div class="content1_4">
                	<div class="content1_5">
                    	<img src="/move/img/40.png" />
                    </div>
                    <div class="content1_6">
                    <input type="text" name="username" id="text1"/>
                    <div class="content1_15" id="t1">请输入E-mail或手机号码</div>
                    </div>
                    <div style="clear:left"></div>
                    
                </div>
                <div class="content1_7">
                	<div class="content1_5">
                    	<img src="/move/img/41.png" />
                    </div>
                    <div class="content1_6">
                    <input type="text" name="password" id="text2"/>
                     <div class="content1_15" id="t2">请输入登陆密码</div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div class="content1_8">
                	<div class="content1_9">
                    	<input type="text"  name="vc" id="text3"/>
                        <div class="content1_16" id="t3">请输入验证码</div>	
                        <div style="clear:left"></div>
                        
                    </div>
                    <div class="content1_10">
                    	<img src="/move/vcode.do" onclick="changecode1()" id="vcode" />
                    </div>
                      <div style="clear:left"></div>
                </div>
                  <div class="content1_11">
                	<div class="content1_12"><input type="submit" value="登录" id="btn1" /></div>
                    <div class="content1_13"><a href="#">免费注册</a></div>
                    <div style="clear:left"></div>
                </div>
                <div class="content1_14">
                	<img src="/move/img/43.png" />
                </div>
            </div>
          </form>
        </div>
<!-------------------------------底部----------------------------------------------------------------------->
        <div class="bottom">
        	 <div style="clear:left"></div>
             <div style="clear:right"></div>
        	<div class="bottom1">
            	<div class="bottom1_1">
                	<div class="bottom1_2"><img src="/move/img/10.png" /></div>
                    <div class="bottom1_3">优惠购票</div>
                    <div class="bottom1_4">在线选座</div>
                </div>
                <div class="bottom1_1">
                	<div class="bottom1_2"><img src="/move/img/11.png" /></div>
                    <div class="bottom1_3">万种报刊</div>
                    <div class="bottom1_4">在线订阅</div>
                </div>
                <div class="bottom1_1">
                	<div class="bottom1_2"><img src="/move/img/12.png" /></div>
                    <div class="bottom1_3">正品保证</div>
                    <div class="bottom1_4">假一赔三</div>
                </div>
                <div class="bottom1_1">
                	<div class="bottom1_2"><img src="/move/img/13.png" /></div>
                    <div class="bottom1_3">文化生活</div>
                    <div class="bottom1_4">e站尽享</div>
                </div>
                <div style="clear:left"></div>
            </div>
            <div style="clear:left"></div>	
           <div class="bottom2">
           		<div class="bottom2_1">
                	<div class="bottom2_2">购物指南</div>
                    <div class="bottom2_3">
                    	<ul>
                        	<li><a href="#">购物流程</a></li>
                            <li><a href="#">发票制度</a></li>
                            <li><a href="#">积分说明</a></li>
                            <li><a href="#">常见问题</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom2_1">
                	<div class="bottom2_2">支付方式</div>
                    <div class="bottom2_3">
                    	<ul>
                        	<li><a href="#">在线支付</a></li>
                            <li><a href="#">银行转账</a></li>
                            <li><a href="#">邮局汇款</a></li>
                            <li><a href="#">蜘蛛卡卷</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom2_1">
                	<div class="bottom2_2">配送方式</div>
                    <div class="bottom2_3">
                    	<ul>
                        	<li><a href="#">报刊配送</a></li>
                            <li><a href="#">礼品配送</a></li>
                            <li><a href="#">票务配送</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom2_1">
                	<div class="bottom2_2">售后服务</div>
                    <div class="bottom2_3">
                    	<ul>
                        	<li><a href="#">退换货政策</a></li>
                            <li><a href="#">退换货流程</a></li>
                            <li><a href="#">退款说明</a></li>
                            <li><a href="#">购物保障</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom2_1">
                	<div class="bottom2_2">蜘蛛特色</div>
                    <div class="bottom2_3">
                    	<ul>
                        	<li><a href="#">银联16元观影</a></li>
                            <li><a href="#">1元订杂志</a></li>
                            <li><a href="#">龙卡星期六</a></li>
                            <li><a href="#">购票无忧险</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom2_1">
                	<div class="bottom2_2">商务合作</div>
                    <div class="bottom2_3">
                    	<ul>
                        	<li><a href="#">代理商加盟</a></li>
                            <li><a href="#">刊社/供应商加盟</a></li>
                            <li><a href="#">营销合作</a></li>
                        </ul>
                    </div>
                </div>
           </div>
           <div class="bottom3">
             <div class="bottom3_1">
             	<div class="bottom3_2">
                	<div class="bottom3_3"><img src="/move/img/14.png" /></div>
                    <div class="bottom3_4">
                    	<div class="bottom3_5">蜘蛛电影APP</div>
                        <div class="bottom3_6">手机订票&nbsp;&nbsp;优惠多多</div>
                        <div class="bottom3_7"><img src="/move/img/20.png" />&nbsp;<img src="/move/img/21.png" /></div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div class="bottom3_2">
                	<div class="bottom3_3"><img src="/move/img/15.png" /></div>
                    <div class="bottom3_4">
                    	<div class="bottom3_5">蜘蛛电影APP</div>
                        <div class="bottom3_6">手机订票&nbsp;&nbsp;优惠多多</div>
                        <div class="bottom3_7"><img src="/move/img/20.png" />&nbsp;<img src="/move/img/21.png" /></div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div class="bottom3_2">
                	<div class="bottom3_3"><img src="/move/img/16.png" /></div>
                    <div class="bottom3_4">
                    	<div class="bottom3_5">蜘蛛电影APP</div>
                        <div class="bottom3_6">手机订票&nbsp;&nbsp;优惠多多</div>
                        <div class="bottom3_7"><img src="/move/img/20.png" />&nbsp;<img src="/move/img/21.png" /></div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div class="bottom3_2">
                	<div class="bottom3_3"><img src="/move/img/17.png" /></div>
                    <div class="bottom3_4">
                    	<div class="bottom3_5">蜘蛛电影APP</div>
                        <div class="bottom3_6">手机订票&nbsp;&nbsp;优惠多多</div>
                        <div class="bottom3_7"><img src="/move/img/20.png" />&nbsp;<img src="/move/img/21.png" /></div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div class="bottom3_2">
                	<div class="bottom3_3"><img src="/move/img/18.png" /></div>
                    <div class="bottom3_4">
                    	<div class="bottom3_5">蜘蛛电影APP</div>
                        <div class="bottom3_6">手机订票&nbsp;&nbsp;优惠多多</div>
                        <div class="bottom3_7"><img src="/move/img/20.png" />&nbsp;<img src="/move/img/21.png" /></div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div class="bottom3_2">
                	<div class="bottom3_3"><img src="/move/img/19.png" /></div>
                    <div class="bottom3_4">
                    	<div class="bottom3_5">蜘蛛电影APP</div>
                        <div class="bottom3_6">手机订票&nbsp;&nbsp;优惠多多</div>
                        <div class="bottom3_7"><img src="/move/img/20.png" />&nbsp;<img src="/move/img/21.png" /></div>
                    </div>
                    <div style="clear:left"></div>
                </div>
                <div style="clear:left"></div>
             </div>
           </div>
           <div class="bottom4">
           		<div class="bottom4_1">
                    <ul>
                    	<li><a href="#">笑话大全</a></li>
                        <li><a href="#">企业招聘</a></li>
                        <li><a href="#">北京旅游攻略</a></li>
                        <li><a href="#">马克波罗网</a></li>
                        <li><a href="#">天气预报查一周</a></li>
                        <li><a href="#">最新电影</a></li>
                        <li><a href="#">新东方网络课堂</a></li>
                        <li><a href="#">12345网址大全</a></li>
                        <li><a href="#">娱乐新闻</a></li>
                        <li><a href="#">12345网址之家</a></li>
                         <li><a href="#">迅雷铺</a></li>
                         <li><a href="#">更多>></a></li>
                    </ul>
                    <div style="clear:left"></div>
                </div>
                <div class="bottom4_2"></div>
                <div class="bottom4_3"></div>
           </div>
           <div style="clear:left"></div>
            <div style="clear:right"></div>
           <div class="bottom5">
           		<div class="bottom4_4">
                    <ul>
                    	<li><a href="#">公司简介</a></li>
                        <li><a href="#">分支结构</a></li>
                        <li><a href="#">联系我们</a></li>
                        <li><a href="#">诚聘英才</a></li>
                        <li><a href="#">杂志大全</a></li>
                        <li><a href="#">最新电影</a></li>
                        <li><a href="#">报纸大全</a></li>
                    </ul>
                    <div style="clear:left"></div>
                </div>
                <div style="clear:left"></div>
           		<div class="bottom5_1">版物经营许可证:沪批字第Y4574 沪ICP备12039479号 SSL证书服务商 网站安全联盟</div>
                <div class="bottom5_2">Copyright 2005-2017 © 蜘蛛网 版权所有</div>
           </div>
            <div style="clear:left"></div>
            <div style="clear:right"></div>
           <div class="bottom6">
           		<div class="bottom6_1"><img src="/move/img/img01_brand.gif" /></div>
                <div class="bottom6_1"><img src="/move/img/img02_brand.gif" /></div>
                <div class="bottom6_1"><img src="/move/img/img03_brand.gif" /></div>
                <div class="bottom6_1"><img src="/move/img/img04_brand.gif" /></div>
                <div class="bottom6_1"><img src="/move/img/92fcfaac5ceb7a024aa03ba99a0c5af0.png" height="38" width="98" /></div>
                <div class="bottom6_1"><img src="/move/img/img09_brand.gif" /></div>
                <div class="bottom6_1"><img src="/move/img/img07_brand.gif" /></div>
                <div class="bottom6_1"><img src="/move/img/img08_brand.gif" /></div>
                <div style="clear:left"></div>
           </div>
        </div>
</body>
</html>
<script type="text/javascript" src="/move/houtai/js/jquery.min.js"></script>
<script>

	var text1 = document.getElementById("text1");
	var text2 = document.getElementById("text2");
	var text3 = document.getElementById("text3");
	var btn1 = document.getElementById("btn1");
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
	var t3 = document.getElementById("t3");
	var flag = false;

	function change(text1) {
		text1.onfocus = function() {
			text1.style.borderColor = "#DC014C";
		};
		text1.onblur = function() {
			text1.style.borderColor = "#666666";
			var a = text1.value;

		}

	};
	var shouji = /^(13[0-9]|14[0-9]|15[0-9]|16[0-9])\d{8}$/; //手机号码
	var email = /^[0-9a-zA-Z]*@[0-9a-zA-Z]*\.{1}[a-z]*$/;//邮箱

	function ishe1() {
		
		text1.onchange = function() {
			var a = (shouji.test(text1.value)) || (email.test(text1.value));
			if (a) {
				t1.innerHTML = "&nbsp;"
				flag = true;
			} else {
				t1.innerHTML = "请输入正确的E-mail或已验证的手机号码！";
				flag = false;
			}
		}
	}
	var mima = /^[a-zA-Z0-9]\w{6,15}$/; //密码
	function ishe2() {
		
		text2.onchange = function() {
				
			if (mima.test(text2.value)) {
				flag = true;
				ishe1();
				t2.innerHTML = "&nbsp;";
			} else {
				t2.innerHTML = "密码长度为6-16个字符！";
				flag = false;
			}
		}
	}
	
	function isNull(){
		
		if(text1.value==null||text1.value==""){
			flag=false;
		}else if(text2.value==null||text2.value==""){
			flag=false;
		}
		ishe1();
		ishe2();
		
	}
	
	
	isNull();
	function check() {
		
		$.ajax({
	        url:"/move/findUser.html",
	        type:'post',
	        data:'username='+text1.value+'&password='+text2.value+"&vcode="+text3.value,//传送的数据
	        dataType:'html',//服务器返回的数据
	        success:function(text){//请求成功后的回调函数
	        	if(text==0){
	        		alert("正确");
	        		flag = true;
	        	}
	        	if(text==1){
	        		flag = false;
	        		alert("用户名或密码错误");
	        	}
	        	if(text==2){
	        		flag = false;
	        		alert("验证码错误");
	        	}
	        },
	        error:function(xhr,textStatus,errorThrown){//请求失败后的回调函数
	        	alert("失败");
	        }
	    });
		
		isNull();
		alert(flag);
		
			
			
		
		//if (flag) {
			//return false;
		//} else {
		//	return false;
		//}
		
		if(flag){
			return true;
		}else{
			flag = true;
			return false;
		}
	
	}

	change(text1);
	change(text2);
	change(text3);
	
	var i = 1;
	function changecode1(){
		document.getElementById('vcode').src="/move/vcode.do?v=" + (i++);
	}
</script>
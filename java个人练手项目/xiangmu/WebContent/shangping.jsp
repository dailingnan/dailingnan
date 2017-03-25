<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shangping.css"/>
</head>
<%
	ArrayList<HashMap<String,Object>> al = new ArrayList<HashMap<String,Object>>();
	al = (ArrayList<HashMap<String,Object>>)request.getAttribute("shangpin");
%>
<body>
	<!--顶部-->
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
        
        <div class="top2">
        	
        	<div class="top2-1">
            
             </div><!-- 左边-->
            <div class="top2-3"><input /><div class="top2-4"><a href="CardServlet">购物车0件</a></div><button>搜索</button></div><!-- 右边边-->
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
     <!---->
     <div class="content">
     	<div class="content1-2">全部分类</div>
       <div class="contenttop">
        <div class="content3">
        	<div class="content3-1"><span> <a href="#">首页</a> >  <a href="#">女装</a>  > <a href="#"> 上装</a>  > <a href="#">短袖T恤</a>  > <a href="#">OSCHINO</a>  > <a href="#">LOVE MOSCHINO混合材质印花休闲女士短袖T恤</a>  </span></div>
        </div>
        <div class="content3-2">
        	<div class="content3-5" id="beijin"><img width="100%" height="100%" src="image/<%=al.get(0).get("image") %>"></div>
        	<!--<div class="content3-5" id="beijin" style="background:url(image/<%=al.get(0).get("image") %>);"></div>-->
            <div class="content3-6">
            	<div class="content3-7" id="beijin1"><img src="image/<%=al.get(0).get("image") %>" height="55px" width="40px"/></div>
               <div class="content3-7" id="beijin2"><img src="image/yintai_6119462c-bb27-4d07-96c6-20f5e404f711.jpg" height="55px" width="40px"/></div>
               <div class="content3-7" id="beijin3"><img src="image/yintai_c95a94d5-757a-486d-b8b8-c6fa3e3f8f92.jpg" height="55px" width="40px" /></div>
               <div class="content3-7" id="beijin4"><img src="image/yintai_f09e943f-d4a2-4d06-93f6-5bda7f3776e2.jpg" height="55px" width="40px" /></div>
            </div>
            <div class="content3-8">
            	<div class="span8"><span >商品编号：21-155-9302</span></div>
                <div class="content3-9"><span><div class="content3-10"><img src="image/QQ截图20160809204005.png" /></div>收藏</span></div>
               <div class="content3-11"><span><img src="image/QQ截图20160809203936.png" /></span></div>
               <div class="content3-12"> <span><img src="image/QQ截图20160809203951.png"/></span></div>
            </div>
        </div>
        <div class="content3-3">
        	<div class="content3-13">
            	<div class="content3-14"><span><%=al.get(0).get("gintrodue") %></span></div>
                <div class="content3-15"><span class="span1"> 银泰价：</span><span class="span2"><%=al.get(0).get("price") %></span> <span class="span3">7.5折</span> </div>
                <div class="content3-16"><span>参考价： <span class="span4">￥1200.00</span></span></div>	
            </div>
            <div class="content3-17"><span class="span5">特例</span></div>
            <div class="content3-18">
            	<span>选择颜色：</span>
               <div class="content3-20"><span>选择尺寸：</span></div>
               <div class="content3-23"><span class="content3-21"><input type="text" id="count"  value="1"/><div class="content3-22"><button></button></div></span></div></div>
            </div>
            <div style="clear:left"></div>
            <div class="content3-19">
            	<div class="content3-24">
                	<div class="c3-28">
                    	<div class="c3-2"><img src="image/QQ截图20160810184414.png" /></div>
                        <div class="c3-3">蓝色</div>
                    </div>
                    <div class="c3-28">
                    	<div class="c3-2"><img src="image/QQ截图20160810184414.png" /></div>
                        <div class="c3-3">蓝色</div>
                    </div>
                </div>
                <div class="content3-25"><img src="image/QQ截图20160810190407.png" />尺寸说明</div>
                <div class="content3-26">
                	<div class="c3-4">M</div>
                    <div class="c3-4">X</div>
                    <div class="c3-4">XL</div>
                    <div class="c3-4">L</div>
                    <div class="c3-4">XLL</div>
                </div>
                <div class="content3-27">
                	<div class="c3-5">立即购买</div>
                    <div class="c3-6"><input type="hidden" id="gid" value='<%=al.get(0).get("gid") %>' /><a href="#" id="aaaaa">加入购物车</a></div>
                </div>
                <div class="c3-7">服务承诺：正品保障 支持无理由退换货 </div>
            </div>
            <div class="c3-8"></div>
        </div>
        
       </div>
       <div class="content9">
       		<div class="content9-1">
            	<div class="content9-3">
                	<div class="content9-4">
                    	<ul>
                    		<li><a href="#">商品介绍</a></li>
                        	<li><a href="#">商品评价</a></li>
                        	<li><a href="#">商品咨询</a></li>
                        	<li><a href="#">购买须知</a></li>
                    	</ul>
                    </div>
                   <div class="content9-5">
                   		<div class="content9-6"><span>手机收单送130元</span></div>
                        <div class="content9-7">加入购物车</div>
                   </div>
                </div>
                <div class="content9-8"></div>
                <div class="content9-9"><img src="image/yintai_410eaf1c-d408-48b6-8ac1-e511f692dcd6.jpg"></div>
                <div class="content9-9"><img src="image/yintai_0ec64db1-7dc9-47e4-935c-3d87febf8107.jpg"></div>
                <div class="content9-9"><img src="image/yintai_fbd25307-be39-4d80-b252-66c621d4e7ba.jpg"></div>
                <div class="content9-9"><img src="image/yintai_13364866-5865-4a06-913a-42c954570c20.jpg"></div>
                <div class="content9-9"><img src="image/yintai_ff908b05-bd36-4da3-9224-2fcc205bbea6.jpg"></div>
                <div class="content9-9"><img src="image/yintai_f952ff7f-d162-424e-acbf-2feff4818829.jpg"></div>
                <div class="content9-9"><img src="image/yintai_452646b2-d7c1-4f14-ba0b-cc53051fefac.jpg"></div>
                <div class="content9-9"><img src="image/yintai_12c6ac7a-f917-4825-9bc2-7277d6609b58.jpg"></div>
                <div class="content9-9"><img src="image/yintai_ff1c0b72-775c-4583-9f7c-a4855d34b1f0.jpg"></div>
                <div class="content9-9"><img src="image/yintai_ba63fa5e-96fa-4e68-b4e0-91f72d0e75d9.jpg"></div>
                
            </div>
            <div class="content9-2">
            	<div class="content9-10">人气推荐</div>
                <div class="content9-11">
                	<div class="content9-12"><img src="image/50.jpg" /></div>
                    <div class="content9-13"><a href="#">俞兆林 2016夏新款男士弹力修身短袖T恤</a></div>
                    <div class="content9-14"><span class="span6">￥139</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/51.jpg" /></div>
                    <div class="content9-13"><a href="#">俞兆林 男士休闲棉质纯色弹力T恤</a></div>
                    <div class="content9-14"><span class="span6">￥139</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/52.jpg" /></div>
                    <div class="content9-13"><a href="#">2016男士新款修身弹力青年条纹印花T恤</a></div>
                    <div class="content9-14"><span class="span6">￥89</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/53.jpg" /></div>
                    <div class="content9-13"><a href="#">2016男士新款夏季民族风短袖T恤男纯棉 弹力</a></div>
                    <div class="content9-14"><span class="span6">￥79</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/54.jpg" /></div>
                    <div class="content9-13"><a href="#">2016新款夏季男士短袖T恤纯棉 弹力修身半袖</a></div>
                    <div class="content9-14"><span class="span6">￥139</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/55.jpg" /></div>
                    <div class="content9-13"><a href="#">子初儿童牙膏 无氟可以吃可吞咽</a></div>
                    <div class="content9-14"><span class="span6">￥139</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/56.jpg" /></div>
                    <div class="content9-13"><a href="#">子初婴宝宝洗发水沐浴露新生儿童洗</a></div>
                    <div class="content9-14"><span class="span6">￥29</span><span class="span7">￥68</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/57.jpg" /></div>
                    <div class="content9-13"><a href="#">【子初】 宝宝专用手口湿巾2儿童湿纸巾</a></div>
                    <div class="content9-14"><span class="span6">29</span><span class="span7">￥138</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/58.jpg" /></div>
                    <div class="content9-13"><a href="#">顶瓜瓜彩棉雅集女中高腰内裤3条装</a></div>
                    <div class="content9-14"><span class="span6">￥139</span><span class="span7">￥398</span></div>
                </div>
                 <div class="content9-11">
                	<div class="content9-12"><img src="image/59.jpg" /></div>
                    <div class="content9-13"><a href="#">2016新款夏季男士短袖T恤纯棉 弹力修身半袖</a></div>
                    <div class="content9-14"><span class="span6">￥139</span><span class="span7">￥398</span></div>
                </div>
                
                
            </div>
            
            
       </div>
        <div class="content2">
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
	var count = document.getElementById("count").value;
	var gid = document.getElementById("gid").value;
	var url = 'ShangPinServlet1?gid='+gid+'&count='+count;
	var aaaaa = document.getElementById("aaaaa")
	aaaaa.onmouseover = function(){
		aaaaa.setAttribute("href",url);
		//alert(aaaaa.getAttribute("href"));
	}
	aaaaa.onclick = function(){
		alert("已加入购物车");
	}
	
/*
	var beijin =document.getElementById("beijin");
	var beijin1 =document.getElementById("beijin1");
	var beijin2 =document.getElementById("beijin2");
	var beijin3 =document.getElementById("beijin3");
	var beijin4 =document.getElementById("beijin4");
	var img = document.getElementById("img1");
	function img1(){
		var b = document.getElementById("img1");
			
			if(b.src=="file:///E:/%E6%A1%8C%E9%9D%A2%E6%96%B0/html%E9%A1%B5%E9%9D%A2/image/41.png"){
					b.src="image/40.png"
					//alert("s");
				}else{
						b.src="image/41.png"
					}
					setTimeout(img1,1000);
		}
		img1();
	var a = ['image/31.png','image/30.png','image/32.png','image/33.png'];
	beijin1.onmouseover = function(){
			beijin.style.backgroundImage= 'url('+a[0]+')';//改变背景图片
			beijin1.style.borderColor="#666666";
		}
	beijin2.onmouseover = function(){
			beijin.style.backgroundImage= 'url('+a[1]+')';//改变背景图片
			beijin2.style.borderColor="#666666";
		}
	beijin3.onmouseover = function(){
			beijin.style.backgroundImage= 'url('+a[2]+')';//改变背景图片
			beijin3.style.borderColor="#666666";
		}
	beijin4.onmouseover = function(){
			beijin.style.backgroundImage= 'url('+a[3]+')';//改变背景图片
			beijin4.style.borderColor="#666666";
		}
	beijin1.onmouseout = function(){
			beijin1.style.borderColor="#cccccc";
		}
	beijin2.onmouseout = function(){
			beijin2.style.borderColor="#cccccc";
		}
	beijin3.onmouseout = function(){
			beijin3.style.borderColor="#cccccc";
		}
	beijin4.onmouseout = function(){
			beijin4.style.borderColor="#cccccc";
		}*/
</script>
</html>
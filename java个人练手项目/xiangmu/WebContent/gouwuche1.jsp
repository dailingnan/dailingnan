<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/gouwuche2.css"/>
</head>
<%
	ArrayList<HashMap<String,Object>> al = new ArrayList<HashMap<String,Object>>();
	al = (ArrayList<HashMap<String,Object>>)request.getAttribute("shangpin");
%>
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
            <div class="top2-3"><input /><div class="top2-4"><a href="/xiangmu/CardServlet">购物车0件</a></div><button>搜索</button></div><!-- 右边边-->
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
     	<div class="content1">
        	<div class="content1-1">
            	<div class="content1-2">
                	<div class="content1-4"><img src="image/QQ截图20160809093722.png" /></div>
                    <div class="content1-5">
                    	<div class="content1-6"><div class="content1-7"><span>查看购物袋</span></div><p>STEP1</p></div>
                        <div class="content1-8"><div class="content1-9"><span>填写订单信息</span></div><p>STEP1</p></div>
                        <div class="content1-8"><div class="content1-9"><span>订单确认</span></div><p>STEP1</p></div>
                    </div>
                     
                </div>
                
                <form action="Orders" method="post" id="form1">
                <%for(int i = 0; i < al.size(); i++){ %>
                
                <div class="content1-3">
                	<div class="content1-20">
                    	<div class="content1-22">
                        	<div class="span1"><span><input type="checkbox" value="全选" id="all" />全选</span></div>
                            <div class="span2"><span >商品</span></div>
                            <div class="span3"><span>单价</span></div>
                            <div class="span4"><span>数量</span></div>
                            <div class="span5"><span >合计</span></div>
                            <div class="span6"><span >操作</span></div>
                        </div>
                        <div class="content1-23"><div class="content1-24">普通商品</div></div>
                        <div class="content1-24">
                        	<div class="b1"><input type="checkbox" name="shangping" value="<%=al.get(i).get("did") %>" /></div>
                            <div class="b2">
                            <a href="shangping.html"><img src="image/<%=al.get(i).get("image") %>" height="60px" width="45px" /></a>
                            <div class="b2-1">
                            <span><%=al.get(i).get("gintrodue") %></span><br />
                            <span>颜色： 白色 尺码 40</span><br />
                            <span class="b2-2">特例</span>
                            </div>
                            </div>
                            <div class="b3">
                            	
                            	<span><%=al.get(i).get("price") %></span>
                               
                            </div>
                            <div class="b4">
                            <input type="button" value="-" class="btn1" id="sub" />
                            <input type="text" class="txt1" value="<%=al.get(i).get("count") %>" disabled="disabled" id="tc" name="count"/>
                            <input type="button" value="+"  class="btn2" name="shangping1" id="add" /></div>
                            <%
                            	float sum = Float.parseFloat(al.get(i).get("price").toString()) * Float.parseFloat(al.get(i).get("count").toString());
                            %>
                            <div class="b5" name="jiage"><%=sum %><input type="hidden" value="sum" name="subtotal" /></div>
                            <div class="b6">
                            	<span><img src="image/QQ截图20160809152646.png" />移入收藏</span>
                                <a href="gouwuche.html"><span><img src="image/QQ截图20160809152759.png" /><a href="DeleteServlet?key=<%=al.get(i).get("did") %>">删除商品</a></span></a>
                            </div>
                        </div>
                    </div>   
                    </div>
                    
                    <%} %>  
                      
                      
                      
                    <div class="content1-21">
                    	<div class="c1">
                        	<div class="c3">
                            	<span><input type="checkbox" name="alll" />全选</span>
                                <span>删除选中的商品</span>
                                <span>继续购物</span>
                            </div>
                            <div class="c4">
                            	<div class="c5"><span><img src="image/QQ截图20160809154629.png" />该订单已满199元，运费以免</span></div>
                                <div class="c6"><span > 商品总价：<span  class="C7">￥900</span>- 节省金额：<span  class="C7">￥0</span>+运费￥<span  class="C7">0</span>=结算金额<span  class="C7">￥900</span></span></div>
                            </div>
                        </div>
                        <div class="c2">
                        <input type="hidden" name="total" value="0" />
                        	<div class="c8"><span>结算金额:(已免运费)<span class="c9" name="zongjiage">￥900<input type="hidden" name="total" value="900" /></span></span><span class="c10"><input  id="btn1" type="submit" value=""/></span></div>
                        </div>
                    </div>
                    </form>
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

	var shangpin = document.getElementsByName("shangping");
	var quan = document.getElementsByName("alll");
	quan[0].onclick = function(){
		if(quan[0].checked == false){
			change();
			quan[0].checked = false;
		}else{
			change();
			quan[0].checked = true;
		}
		
	}
	function change(){
		for(var i = 0; i < shangpin.length; i++){
			if(quan[0].checked == false){
				shangpin[i].checked = false;
			}else{
				shangpin[i].checked = true;
			}
		}
	}
	
	var form1 = document.getElementById("form1");
	var btn1 = document.getElementById("btn1");
	form1.onsubmit = function(){
		for(var i=0;i<shangpin.length;i++){
			if(shangpin[i].checked == true){
				return true;
			}
		}
		
		alert("请至少选择一个商品提交");
		return false;
	}
	

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
		 
		</script>

</html>
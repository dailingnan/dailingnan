<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单详情</title>
<link rel="stylesheet" type="text/css" href="css/gouwuche.css"/>
</head>

<body>
	<div class="top" >  
    	<div class="top_1">
            <div class="top_2"><img src="/ele/ele//ele/ele/img/1.png" /></div>
            <div class="top_3">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li><a href="#">加盟合作</a></li>
                </ul>
            </div>
             <div class="top_4">
       			<ul>
                	<li><a href="#"><div class="img1"><img src="/ele/ele/img/2.png" /></div>服务中心</a></li>
                    <li><a href="#"><div class="img2"><img src="/ele/ele/img/3.png" /></div>手机应用</a></li>
                </ul>
       		</div>
            <div class="top_5">
            	疯子的故事<div class="img3"><img src="/ele/ele/img/5.png" /></div>
            </div>
            
        </div>
      	<div class="top_7">
        	<div class="text1">当前位置：</div>
            <div class="text2">岳麓区银双路（奥克斯...</div>
            <div class="text3"><a href="#">[切换地址]</a></div>
            <div class="input1">
            	<div class="input2"><input  class="input4"/></div>
                <div class="input3"><img src="/ele/ele/img/6.png" /></div>
            </div>
        </div>
      
   	 </div >

    <div class="content">
    	<div class="ordercontent_1">
        	<ul>
            	<li class="orderli1"><img src="/ele/ele/img/10.png" />个人中心
                	
                </li>
                <li class="orderli1"><img src="/ele/ele/img/11.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
                <li class="orderli1"><img src="/ele/ele/img/12.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
                <li class="orderli1"><img src="/ele/ele/img/13.png" />我的订单
                	<ul>
                    	<li>近3个月订单</li>
                        <li>待评价订单</li>
                        <li>退单记录</li>
                    </ul>
                </li>
                <li class="orderli1"><img src="/ele/ele/img/14.png" />我的订单
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
       			<div class="ordercontent_3">购物车</div>
                <div class="ordercontent_4"><img src="/ele/ele/img/takeout.png" height="60px" /></div>
                <div style="clear:left;"></div>
        	</div>
            <div class="ordercontent_6">热门问题 随时关注订单状态</div>
             <div style="clear:right;"></div>
             <!--订单栏-->
             <form action="ele/deleteAction" method="post">
          	<div class="ordercontent_7">
            	<div class="ordercontent_8">全选 <input  type="checkbox"/></div>
                <div class="ordercontent_9">商品</div>
                <div class="ordercontent_10">单价</div>
                <div class="ordercontent_11">数量</div>
                <div class="ordercontent_11">合计</div>
                <div class="ordercontent_11">操作</div>
                <div style="clear:left;"></div>
            </div>
         
             <s:iterator id="cart" value="carts1" status="L">
          	   <!--订单项-->
            <div class="ordercontent_12">
            	<div class="ordercontent_13">
                	<div class="ordercontent_17"><input type="checkbox" name="shiping" value="${cart.gcid}"/></div>
                </div>
                <div class="ordercontent_14">
                	<div class="ordercontent_19"><img src="/ele/ele/img/${cart.fd.img}" /></div>
                    <div class="ordercontent_20">
                    	<div class="ordercontent_21">
                        	<div class="ordercontent_22">${cart.fd.fname}</div>
                            <div class="ordercontent_23">【抢】爆炒鸡杂1份 1 个菜品</div>
                        </div>
                    </div>
                </div>
                <div class="ordercontent_15">
                	<div class="ordercontent_25">${cart.fd.price}</div>
                </div>
                <div class="ordercontent_16">
                	<div class="ordercontent_27">
                    	   <input type="button" value="-" class="btn1" id="sub" />
                            <input type="text" class="txt1" value="1" disabled="disabled" id="tc"/>
                            <input type="button" value="+"  class="btn2" name="shangping" id="add" />
                    </div>
                </div>
                 <div class="ordercontent_16">
                	<div class="ordercontent_27">${cart.total}</div>
                </div>
                <div class="ordercontent_16">
                	<div class="ordercontent_28">
                    	<a href="#">移除收藏</a>
                    </div>
                    <div class="ordercontent_29"><a href="#">删除商品</a></div>
                </div>
                <div style="clear:left;"></div>
            </div>
           	 
              <!--订单项完成-->
             
              </s:iterator>
             	
              		<a href="/ele/ele/beforeAction" class="a2">上一页</a>
              		<s:bean name="org.apache.struts2.util.Counter" id="counter">
					    <s:param name="first" value="1" />
					    <s:param name="last" value="daxiao" />
					    <s:iterator>
					        <s:property/> <a href="/ele/ele/findoneAction?each=<s:property/>" class="a1"> <s:property/></a>
					    </s:iterator>
					</s:bean>
                    <a href="/ele/ele/afterAction" class="a2">下一页</a>
                   
              <div style="clear:right"></div>
              <div class="ordercontent_31">
              		<div class="ordercontent_34"><input type="submit"  value="购物结算"/></div>
               		<div class="ordercontent_33">￥900</div>
              		<div class="ordercontent_32">结算金额</div>                   
              </div>
              </form>
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
                	<div class="img6"><img src="/ele/ele/img/appqc.png" h eight="85px;" width="85px;" /></div>
                    <div class="img7">
                    	<div class="text9">下载手机版</div>
                        <div class="text10">扫一扫,手机订餐方便</div>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear:left;"></div>
        <div class="bottom_5">增值电信业务许可证 : 沪B2-20150033 | 沪ICP备 09007032 | 上海工商行政管理 Copyright ©2008-2016 ele.me, All Rights Reserved.			        </div>
        <div class="bottom_6"><img src="/ele/ele/img/picp_bg.jpg" height="30px"  width="85px;"/> </div>
    </div>
</body>
</html>

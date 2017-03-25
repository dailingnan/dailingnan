	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单信息_确认订单</title>
<link  rel="stylesheet" style="text/css" href="/ele/ele/css/order_confirm.css"/>
</head>

<body>
       <div class="top"> <img src="/ele/ele/img/17.PNG"/></div>
       
       <div class="content">
               <div class="left">
                       <div class="left_1">
                             <b>订单详情</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="" style="border-bottom:none">< 返回商家修改</a>
                       </div>
                       
                       <div class="left_2">
                      <font color="#999999"><b> 商品</b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#999999"><b>份数</b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#999999"><b>小计（元）</b></font>
                       </div>
                         <s:iterator id="oitm" value="oitems">
                       <div class="left_3">
                      ${oitm.fd.fname}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="-" class="min" /><input type="text" value="${oitm.counts}" class="text1" /><input type="button" value="+" class="max" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;¥${oitm.subtotal}
                       </div>
                       	 </s:iterator>
                       	
                       <div class="left_4">
                       餐盒费&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;¥1.00
                       </div>
                       <div class="left_5">
                       配送费&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;¥1.00
                       </div>
                       
                       <div class="left_6">
                       合计：<font size="+2" color="#FF0000"><b>${order.ordertotal}</b></font>
                       </div>
               </div> 
               
               
               
               <div class="right">
                        <div class="right_1">
                         <font size="+1"><b>收货地址</b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">添加新地址</a>
                        </div>
                        
                        <div class="right_2">
                               <div class="right_2_1">
                               <img src="/ele/ele/img/18.PNG"/>
                               </div>
                               <div class="right_2_2">
                                <select name="address" id="adrs">
                               	<s:iterator id="address" value="addressBean">
                               		<option>${address.addressadd}</option>
                               	</s:iterator>
                               	</select>
                               	<input type="button" onclick="getselectvalue()" value="弹出下拉列表的值" /> 
                              ${order.arderadd}
                               </div>
                               <div class="right_2_3">
                               <img  src="/ele/ele/img/19.PNG"/>
                               </div>
                        </div>
                        <div class="right_3">
                             <font size="+1" ><b>付款方式</b></font> &nbsp;&nbsp;&nbsp; <font color="#FFB400" size="-1">推荐使用在线支付，不用找零，优惠更多</font>
                        </div>
                        <div class="right_4_1">
                             在线支付 <br /><br /> <font color="#999999">支持微信、支付宝、QQ钱包及大部分银行卡</font>
                             <div class="right_4_1_1">
                                  <img  src="/ele/ele/img/19.PNG"/>
                             </div>
                        </div>
                        <div class="right_4_2">
                             货到付款 <br /><br /> <font color="#999999">送货上门后再付款</font>
                        </div>
                        <div style="clear:left"></div>
                        
                        <div class="right_5">
                             <font size="+1" ><b>选择优惠</b></font> <br /><br />使用红包 &nbsp; &nbsp;<font color="#999999">无可用红包</font>
                             <br /><br />使用优惠券&nbsp; &nbsp;<font color="#999999">网站不支持</font><font color="#F74342">（仅手机客户端可用）</font>
                        </div>
                        
                        
                        <div class="right_6">
                             <font size="+1" ><b> 其他信息</b></font><br /><br />配送方式&nbsp; &nbsp; 本订单由 [集食号（大学城新店）] 提供配送<br /><br />送达时间 &nbsp; &nbsp;
                             
                             <select>
                                  <option>10:30~11:30</option>
                                  <option>11:30~12:30</option>
                                  <option>12:30~13:30</option>
                                  <option>13:30~14:30</option>
                                  <option>17:30~18:30</option>
                                  <option>18:30~19:30</option>
                             </select> 
                             <br /><br /> 订单备注&nbsp; &nbsp;<input  type="text" name="beizhu"/>
                             <br /><br /><a href="/ele/orderAction"><input type="submit" class="input_1" onclick="getselectvalue()" value=""/></a>
                            
                        </div>
               </div>
       </div>
       
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
<script >
   function getselectvalue(oid)
 {
    var rtl=document.getElementById("adrs");
    alert(rtl.value);
    abcd();
 }
 function abcd(){
				if(XMLHttpRequest){
				var rqu = new XMLHttpRequest();
				rqu.onreadystatechange = null;
				rqu.open("get", "/ele/ele/upaddressAction?address="+document.getElementById("adrs").value,false);
				rqu.send(null);

				}else{
					alert("false");
				}
						}
 </script>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>index</title>
<link rel="stylesheet" type="text/css" href="/move/css/cart.css"/>
<style type="text/css">
.demo{width:700px; margin:40px auto 0 auto; min-height:450px;}
@media screen and (max-width: 360px) {.demo {width:340px}}

.front{width: 300px;margin: 5px 32px 45px 32px;background-color: #f0f0f0;	color: #666;text-align: center;padding: 3px;border-radius: 5px;}
.booking-details {float: right;position: relative;width:200px;height: 450px; }
.booking-details h3 {margin: 5px 5px 0 0;font-size: 16px;}
.booking-details p{line-height:26px; font-size:16px; color:#999}
.booking-details p span{color:#666}
div.seatCharts-cell {color: #182C4E;height: 25px;width: 25px;line-height: 25px;margin: 3px;float: left;text-align: center;outline: none;font-size: 13px;}
div.seatCharts-seat {color: #fff;cursor: pointer;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;}
div.seatCharts-row {height: 35px;}
div.seatCharts-seat.available {background-color: #B9DEA0;}
div.seatCharts-seat.focused {background-color: #76B474;border: none;}
div.seatCharts-seat.selected {background-color: #E6CAC4;}
div.seatCharts-seat.unavailable {background-color: #472B34;cursor: not-allowed;}
div.seatCharts-container {border-right: 1px dotted #adadad;width: 400px;padding: 20px;float: left;}
div.seatCharts-legend {padding-left: 0px;position: absolute;bottom: 16px;}
ul.seatCharts-legendList {padding-left: 0px; list-style:none;}
.seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;}
span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}
.checkout-button {display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer}
#selected-seats {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;}
#selected-seats ul{ list-style:none;}
#selected-seats li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#f7f7f7; margin:6px; font-size:14px; font-weight:bold; text-align:center}
</style>
</head>

<body>
		<div class="top">
        	<div class="top-1">
            	<div class="top_1_left">
                	<div class="top1_1">蜘蛛网首页</div>
                    <div class="top1_2">你好，15580106740</div>
                    <div class="top1_3"><div class="img1"><img src="/move/img/1.png" /></div>消息0</div>
                    <div class="top1_4">退出</div>
                    <div class="top1_5">
            			<div class="set1">
                        	<select>
                        		<option>佛山</option>
                       		 </select>
                        </div>
                    </div>
                </div>
                <div class="top_1_right">
                	<div class="top1_6">我的蜘蛛网</div>
                    <div class="top1_7">
                    	<div class="top1_8"><div class="img2"><img src="/move/img/2.png" /></div>购物车</div>
                        <div class="top1_8"><div class="img2"><img  src="/move/img/3.png" /></div>积分商城</div>
                        <div class="top1_8"><div class="img2"><img src="/move/img/4.png" /></div>手机版</div>
                    </div>
                    <div class="top1_6">蜘蛛卡使用专区</div>
                    <div class="top1_6">客服服务</div>
                </div>
            </div>
            <div class="top2">
            	<div class="top2_1"></div>
                <div style="clear:float"></div>
                <div class="top2_2">
                	<div class="top2_3"><div class="img3"><img src="/move/img/logo_spider.gif" /></div> 电影</div>
                    <div style="clear:float"></div>
                    <div class="top2_4">
                    	<div class="top2_5"><input type="text" class="txt1" /></div>
                        <div class="top2_6"><a href="#" class="a1">搜索</a></div>
                    </div>
                    <div class="top2_3"><div class="img3"><img src="/move/img/logo_yy.gif" /></div></div>
                </div>
            </div>
            <div class="top3">
            	<div class="top3_1">所有商品分类</div>
                <div class="top3_2">
                	<ul>
                    	<li><a href="#" class="a2">首页</a></li>
                        <li><a href="#">热映影片</a></li>
                        <li><a href="#">电影院</a></li>
                        <li><a href="#">观影活动</a></li>
                        <li><a href="#">电影周边</a></li>
                        <li><a href="#">快速订票</a></li>
                        <li><a href="#">约影</a></li>
                    </ul>
                </div>
            </div>
        </div>
<!----------------------------------------------------顶部-------------------------------------------------------->
   		<div id="main">
            <div class="demo">
                <div id="seat-map">
                    <div class="front">屏幕</div>					
                </div>
                <div class="booking-details">
                	<form action="/move/insertOrder.html" method="post">
                	<br/>
                	<br/>
                    <p>影片：<span>${moveArrangeBean.move.name}</span></p>
                    <p>时间：<span>${moveArrangeBean.onscreendate}</span></p>
                    <p>座位：</p>
                    <input type="hidden" value="${moveArrangeBean.move.price}" id="price"/>
                    <ul id="selected-seats"></ul>
                    <p>票数：<span id="counter">0</span></p>
                    <p>总计：<b>￥<span id="total">0</span></b></p>
                     <p>取票手机号码：<input type="text" name="telephoto"/></p>
                    <!-- -----------------应该从之前页面传值 -->
                     <input type="hidden" value="${marrangeid}" id="marrangeid" name="marrangeid"/>        
                    <button class="checkout-button" type="submit">确定购买</button> 
                    	<font color="red" size="2">座位超过15分钟未支付将会自动释放 </font>        
                    <div id="legend"></div>
                    </form>
                </div>
                <div style="clear:both"></div>
           </div>
		</div>
<script type="text/javascript" src="/move/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="/move/jsp/jquery.seat-charts.min.js"></script>
<script type="text/javascript">
var price = parseInt(document.getElementById("price").value) //票价
var count = 0; //选择座位的数量
var sc;
var marr = document.getElementById("marrangeid").value;
$(document).ready(function() {
	var $cart = $('#selected-seats'), //座位区
	$counter = $('#counter'), //票数
	$total = $('#total'); //总计金额
	
	 sc = $('#seat-map').seatCharts({
		map: [  //座位图
			'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
			'aaaaaaaaaa',
			'aaaaaaaaaa',
			'aaaaaaaaaa',
			'aaaaaaaaaa',
            'aaaaaaaaaa'
		],
		naming : {
			top : false,
			getLabel : function (character, row, column) {
				return column;
			}
		},
		legend : { //定义图例
			node : $('#legend'),
			items : [
				[ 'a', 'available',   '可选座' ],
				[ 'a', 'unavailable', '已售出']
			]					
		},
		
		click: function () { //点击事件
			if(count>3){
				alert("最多选择四个座位 ");
				}
			if (this.status() == 'available'&&count<4) { //可选座
				count++;
				$('<li>'+(this.settings.row+1)+'排'+this.settings.label+'座</li>')
					.attr('id', 'cart-item-'+this.settings.id)
					.data('seatId', this.settings.id)
					.appendTo($cart);
				$('<input type="hidden"></input>')
				.attr('name', 'cartitem')
				.attr('value',(this.settings.row)*10+(this.settings.label-1) )
				.data('seatId', this.settings.id)
				.appendTo($cart);
				
				/*
				$.ajax({
	                url:"/move/updateSeat.html",
	                type:'post',
	                data:'heng='+(this.settings.row+1)+'&zong='+(this.settings.label)+'&marrangeid='+marr,//传送的数据
	                dataType:'html',//服务器返回的数据
	                success:function(){//请求成功后的回调函数
	                	alert("成功");//返回json数组	
	                },
	                error:function(xhr,textStatus,errorThrown){//请求失败后的回调函数
	                	alert("失败");
	                }
	            });
				*/
				$counter.text(sc.find('selected').length+1);
				$total.text(recalculateTotal(sc)+price);							
				return 'selected';
			} else if (this.status() == 'selected') { //已选中
					//更新数量
					count--;
					$counter.text(sc.find('selected').length-1);
					//更新总计
					$total.text(recalculateTotal(sc)-price);
						
					//删除已预订座位
					$('#cart-item-'+this.settings.id).remove();
					//可选座
					return 'available';
			} else if (this.status() == 'unavailable') { //已售出
				return 'unavailable';
			} else {
				return this.style();
			}
			
		}
	});
	$.ajax({
        url:"/move/seat.html",
        type:'post',
        data:'marrangeid='+marr,//传送的数据
        dataType:'json',//服务器返回的数据
        success:function(jsonArray){//请求成功后的回调函数
        	for(var i=0;i<jsonArray.length;i++){
        		sc.get((parseInt(jsonArray[i]/10+1))+"_"+(jsonArray[i]%10+1)).status('unavailable');
        		seat = jsonArray;
        	}	     
        },
        error:function(xhr,textStatus,errorThrown){//请求失败后的回调函数
        }
    });
	
	//已售出的座位
	//for(var i=0;i<5;i++){
	//	sc.get((i+1)+"_"+(i+2)).status('unavailable');
	//	}
	//sc.get(['1_2', '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8', '10_1', '10_2']).status('unavailable');
	
		
});
//计算总金额
function recalculateTotal(sc) {
	var total = 0;
	sc.find('selected').each(function () {
		total += price;
	});
			
	return total;
}
</script>
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

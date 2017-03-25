<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>mark</title>
<link rel="stylesheet" type="text/css" href="/move/css/shangping.css"/>
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
		<div class="content">
        	<div class="content1">电影首页>热映电影><font color="#FF0000">${moveBean.name}</font></div>
        	<div class="content2">
            	<div class="content2_1">
                	<img src="/move/img/${cinemaBean.image}" />
                    <div class="content2_3">
                    	评分：<font color="#FF0000" size="6">8.7</font>
                    </div>
                </div>
                <div class="content2_2">
                	<div class="content2_4">
                    	<div class="content2_6">${cinemaBean.name}</div>
                        <div class="content2_7">
                        	<div class="content2_8"></div>
                            <div class="content2_9"><font color="#999999">影院简介：</font><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cinemaBean.introduction}</div>
                            <div class="content2_10"><font color="#999999">影院地址：</font>${cinemaBean.address}</div>
                            <div class="content2_9"><font color="#999999">联系方式：</font>${cinemaBean.telephoto}/${moveBean.actor}</div>
                            
                            <div class="content2_11">
                            	<div class="content2_12"><img src="/move/img/25.png" /></div>
                                <div class="content2_12"><font color="#FF0000">9</font>人想看 </div>
                                <div class="content2_12"><font color="#FF0000">50285</font>人看过</div>
                            </div>
                        </div>
                    </div>
                    <div class="content2_5"><img src="/move/img/24.png" /></div>
                </div>
                <div style="clear:left"></div>
            </div>
            <div class="content3">
            	<!---------------------------------content left--------------------------------------------------------------------->
            	<div class="content3_1">
                	<div class="content3_3">
                    	<ul>
                        	<li><a href="#">排片购票</a></li>
                            <li><a href="#">剧情影评</a></li>
                            <li><a href="#">剧照/预告片</a></li>
                            <li><a href="#">电影资讯</a></li>
                        </ul>
                          <div style="clear:left"></div>
                    </div>
                    <div class="content3_4">
                    	
                        <div style="clear:left"></div>
                        <div class="content3_8">
                         	
                        </div>
                       
                    </div>
                    <div class="content4">
                    	
                    </div>
                    <div class="content5">
                    	
                        <!-------------------------------------------------------------->
                    </div>
                    <div class="content5_6">
                    	<div class="content5_7">${cinemaBean.name}  影院简介 </div>
                        <div class="content5_8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cinemaBean.introduction}</div>
                    </div>
                    <div class="content8">
                    	<div class="content8_1">影片点评</div>
                        <div class="content8_2">我要评论</div>
                        <div style="clear:left"></div>
                    </div>
                   
                    <!------------------------------------------------------------------>
                   	<c:forEach items="${cDislist}" var="dis">
                   		 <div class="content9">
                    	<div class="content9_1">
                        	<div class="content9_3">
                            	<img src="/move/img/30.png" />
                            </div>
                            <div class="content9_4">${dis.user.username}</div>
                        </div>
                        <div class="content9_2">
                        	<div class="content9_5">
                            	${dis.discuss}
                            </div>
                            <div class="content9_6">
                            	来自：蜘蛛电影票Android版 ${dis.discussdate}
                            </div>
                        </div>
                        <div style="clear:left"></div>
                    </div>
                   	</c:forEach>
                     
                   
                    <!---------------------------------------------------------------->
                    <div class="content6">
                    	吐丝
                    </div>
                     <form action="/move/insertCinemaDiscuss.html" method="post" >
                     <input type="hidden" name="cinemaid" value="${cinemaBean.cinemaid}">
                    <div class="content7">
                    	<textarea class="text1" name="liuyan"></textarea><input type="submit" value="发表"  class="btn1"/>
                    </div>
                   </form>
                </div>
                <!---------------------------------content  right------------------------------------------------------->
                <div class="content3_2">
                     <div class="content2_13">
                        <div class="content2_14">
                            <div class="content2_15">观影车向标</div>
                            <div class="content2_16">48小时排行</div>
                            <div class="content2_17">总排行</div>
                        </div>
                        <div style="clear:left"></div>
                        <div class="content2_18">
                            <div class="content2_19">01</div>
                            <div class="content2_20">情圣</div>
                            <div class="content2_21">8.7</div>
                            <div class="content2_22">25%</div>
                        </div>
                         <div class="content2_18">
                            <div class="content2_19">01</div>
                            <div class="content2_20">情圣</div>
                            <div class="content2_21">8.7</div>
                            <div class="content2_22">25%</div>
                        </div>
                         <div class="content2_18">
                            <div class="content2_19">01</div>
                            <div class="content2_20">情圣</div>
                            <div class="content2_21">8.7</div>
                            <div class="content2_22">25%</div>
                        </div>
                         <div class="content2_18">
                            <div class="content2_19">01</div>
                            <div class="content2_20">情圣</div>
                            <div class="content2_21">8.7</div>
                            <div class="content2_22">25%</div>
                        </div>
                         <div class="content2_18">
                            <div class="content2_19">01</div>
                            <div class="content2_20">情圣</div>
                            <div class="content2_21">8.7</div>
                            <div class="content2_22">25%</div>
                        </div>
                   </div>
                    <div class="content3_22">
                	<div class="content3_27">蜘蛛热评</div>
                    <div class="content3_28">
                    	<div class="content3_29"><img src="/move/img/7.jpg" height="117" width="84"/></div>
                        <div class="content3_210">
                        	<div class="content3_211">ponyle***评&nbsp;&nbsp;&nbsp;<b>血战刚剧凌</b></div>
                            <div class="content3_212">好莱坞的主旋律电影，基本无尿点，非常好看。。。</div>
                            <div class="content3_213">更多268条影评>></div>
                        </div>
                    </div>
                     <div class="content3_28">
                    	<div class="content3_29"><img src="/move/img/8.jpg" height="117" width="84"/></div>
                        <div class="content3_210">
                        	<div class="content3_211">支付宝影迷评&nbsp;&nbsp;&nbsp;<b>情圣</b></div>
                            <div class="content3_212">新年伊始，逗大家开心的一部影片，是激。。。</div>
                            <div class="content3_213">更多45条影评>></div>
                        </div>
                    </div>
                     <div class="content3_28">
                    	<div class="content3_29"><img src="/move/img/9.jpg" height="117" width="84"/></div>
                        <div class="content3_210">
                        	<div class="content3_211">马里奥小新评&nbsp;&nbsp;&nbsp;<b>铁道飞虎</b></div>
                            <div class="content3_212">成龙父子携手演绎这部幽天道游击队。。</div>
                            <div class="content3_213">更多268条影评>></div>
                        </div>
                    </div>
                </div>
                <div class="content41">
            	<div class="content4_11">
                	<div class="content4_12">
                    	<div class="content4_13">电影周边</div>
                        <div class="content4_14">更多>></div>
                        <div style="clear:left"></div>
                    </div>
                </div>
                <div class="content4_15">
                	<div class="content4_16"><img src="/move/img/14803011578490.jpg"  height="85" width="99"/></div>
                    
                    <div class="content4_17">
                    	<div class="content4_18"><a href="#">【预售1月20号发货】FNU</a></div>
                        <div class="content4_19">￥88.00</div>
                    </div>
                      <div style="clear:left"></div>
                      <div style="clear:right"></div>
                </div>
                 <div class="content4_15">
                	<div class="content4_16"><img src="/move/img/14797213055070.jpg"  height="85" width="99"/></div>
                    
                    <div class="content4_17">
                    	<div class="content4_18"><a href="#">【预售1月20号发货】FNU</a></div>
                        <div class="content4_19">￥88.00</div>
                    </div>
                      <div style="clear:left"></div>
                      <div style="clear:right"></div>
                </div>
                 <div class="content4_15">
                	<div class="content4_16"><img src="/move/img/14797214117750.jpg"  height="85" width="99"/></div>
                    
                    <div class="content4_17">
                    	<div class="content4_18"><a href="#">【预售1月20号发货】FNU</a></div>
                        <div class="content4_19">￥88.00</div>
                    </div>
                      <div style="clear:left"></div>
                      <div style="clear:right"></div>
                </div>
                 <div class="content4_15">
                	<div class="content4_16"><img src="/move/img/14803014038620.jpg"  height="85" width="99"/></div>
                    
                    <div class="content4_17">
                    	<div class="content4_18"><a href="#">【预售1月20号发货】FNU</a></div>
                        <div class="content4_19">￥88.00</div>
                    </div>
                      <div style="clear:left"></div>
                      <div style="clear:right"></div>
                </div>
                
            </div>
        </div>
        <div style="clear:left"></div>
         <div style="clear:right"></div>
                
                
            </div>
            
            
            
        </div>

		    <!-------------------------------底部----------------------------------------------------------------------->
       	<div style="clear:left"></div>
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

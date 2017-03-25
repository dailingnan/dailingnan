<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>serach</title>
<link rel="stylesheet" type="text/css" href="/move/css/search.css"/>
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
                    <!-- 搜索 -->
                    <form action="/move/serachMove.html" method="post">
                    <div class="top2_4">
                    	<div class="top2_5"><input type="text" class="txt1" name="moveName" /></div>
                        <div class="top2_6"><button class="sousuo" type="submit">搜索</button></div>
                    </div>
                    </form>
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
        	<div class="content1">搜索 "<font color="#FF0000">${moveName}</font>" 共 <font>${fn:length(moveBean)}</font> 条相关结果 包括1条影片信息，0条影院信息</div>
            <c:forEach items="${moveBean}" var="move">
            <!-----------------------------------------------电影------------------------------------------------------------------------->
            <div class="content2">
            	<div class="content2_1">
                	<img src="/move/img/${move.image}" height="170" width="117" />
                    <a href="/move/dianying.html?moveId=${move.moveid}"><div class="content2_3">选座购票</div></a>
                </div>
                <div class="content2_2">
                	<div class="content2_4">
                    	<div class="content2_5">${move.name}</div>
						<div class="content2_6">[已热映4天] </div>
                        <div class="content2_7">评分：<font size="5" color="#FF0000">7.5</font></div>
                         <div style="clear:left"></div>
                    </div>
                    <div class="content2_8"><img src="/move/img/25.png" /></div>
                    <div class="content2_9">类型： ${move.classes}</div>
                    <div class="content2_9">片长/语言：${move.time}分钟/${move.language}</div>
                    <div class="content2_9">导演/演员： ${move.director}/${move.actor}</div>
                    <div class="content2_9">今日至01月13日 33家影院热映 22元起</div>
                </div>
                <div style="clear:left"></div>
            </div>
           <!-------------------------------------电影---------------------------------------------------------------------------------->
           </c:forEach>
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

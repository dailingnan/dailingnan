// JavaScript Document
$(function(){
	//初始化
	var size = $(".img li").length;
	$(".num li").first().addClass("active");
	$(".img li").first().show();
	//手动控制轮播
	$(".num li").mouseover(function(){
			$(this).addClass("active").siblings().removeClass("active");
			var index  = $(this).index();
			i=index;
			$(".img li").stop().eq(index).fadeIn().siblings().stop().fadeOut();
		})
		
	//自动轮播
	var t = setInterval(move,1500);
	var i=-1;
	function move(){
			i++;
			if(i==size){
				i=0;
				}
			$(".img li").eq(i).fadeIn().siblings().fadeOut();
			$(".num li").eq(i).addClass("active").siblings().removeClass("active");
		}
	$(".content1_1").hover(
		function(){
			clearInterval(t);
			},
		function(){
			t = setInterval(move,1500);
				});
	
	//图片详情
	$(".content2_3 .content2_4").hover(
			
			function(){
				$(this).find(".span").stop().slideDown();
				},
			function(){
				$(this).find(".span").stop().slideUp();
				})
				
		$(".content2_2").hover(
		function(){
			$(this).find(".span3").stop().slideDown();
			},
		function(){
			$(this).find(".span3").stop().slideUp();
			})
			
			$(".content3_6").hover(
	
		function(){
			$(this).find(".span4").stop().slideDown();
			},
		function(){
			$(this).find(".span4").stop().slideUp();
			})
		//图片文字切换
			
		//初始化
			$(".content2_13 .content2_18").first().find(".content2_21").hide();
	        $(".content2_13 .content2_18").first().find(".content2_211").show();
	        $(".content2_13 .content2_18").eq(5).find(".content2_21").hide();
	        $(".content2_13 .content2_18").eq(5).find(".content2_211").show();
			$(".content2_13 .content2_18").mouseover(function(){
				$(this).find(".content2_21").hide();
				$(this).find(".content2_211").show();
				$(this).siblings().find(".content2_21").show();
				$(this).siblings().find(".content2_211").hide();
			})
	
	})
	
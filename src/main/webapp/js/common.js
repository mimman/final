(function($){
	$(function(){
		"use strict";
		/*
		 * gnb script
		 *
		 * */
		var $body = jQuery('body');
		var $mobopenbtn = jQuery('.header-mobgnb-open');
		var $mobclosebtn = jQuery('.header-mobgnb-close');
		var $wrapper= jQuery('.wrapper');
		var $moveTarget= jQuery('.header-menu');
		var $gnb= jQuery('.gnb');
		var mobgnb = $wrapper.find('.mobgnb:first-child');
		var $dep1lnk= jQuery('.gnb>ul>li>a');
		var $dep2box= jQuery('.gnb>ul>li>ul');
		var $dimmd= jQuery('.js-dimd');
		var focusback, navHtml;
		var animatespeed = 800;
		var animateeffect =  "easeOutQuart";

		jQuery(document).on('ready', init);

		function init(){
			navHtml = $moveTarget.html();
			var gnblast = focuseable($('.gnb'));
			var gnblastelem = gnblast[gnblast.length-1];
			$(gnblastelem).on('keydown', focuscheck);
			$dep1lnk.on('mouseenter focus', menuopen);
			$moveTarget.on('mouseleave', menuclsoe);
			$mobopenbtn.on('click keydown', mobmenuOpen);
			$dimmd.on('click touchstart', mobgnbclose);
			jQuery(window).on('resize', resizegnb);
		}

		function focuscheck (e){
			if(HAP.IS_VIEWTYPE == "web") {
				if (e.keyCode == 9 && e.shiftKey) {
				} else if (e.keyCode == 9) {
					menuclsoe();
				}
			}
		}

		function mobmenuOpen(e){
			if(e.type == 'click' || e.keyCode == 13) {
				//console.log("open gnb : "+Session_info.currentLogin);
				makegnbBox();
				mobgnb = $wrapper.find('.mobgnb:first-child');
				mobgnbopen(e, mobgnb);
				focusback = $(this);
			}
		}

		function mobgnbopen(e, target){
			if(e.keyCode == 13 || e.type=="click") {
				$body.css({
                    'position' : 'fixed',
					'width':HAP.VIEWPORT_WIDTH,
					'height':HAP.VIEWPORT_HEIGHT,
					'overflow':"hidden"
				});
				$wrapper.addClass('dimd');
				target.stop().animate({
					'left': 0
				}, animatespeed, animateeffect);
				keytab(e);
				if(Session_info.currentLogin=='Y'){
					$(".logoutlim").css("display","table-cell");        
					$(".loginlim").css("display","none");			
				}else{
					$(".logoutlim").css("display","none");        
					$(".loginlim").css("display","table-cell");
				}
				
        
        

			}

			function keytab(e){
				var fistelem = target.find('.mob-lobin li:first-child>a');
				var lastelem = target.find('.header-mobgnb-close');
				//if(e.type != 'click') {
				fistelem.focus();
				//}
				fistelem.on('keydown', tabFirstfocus);
				lastelem.on('keydown', tabLastfocus);
				lastelem.on('click', mobgnbclose);


				function tabFirstfocus (e){
					if(e.type =="keydown") {
						if (e.keyCode == 9 && e.shiftKey) {
							e.preventDefault();
							lastelem.focus();
						} else if (e.keyCode == 9) {
						}
					}
				}
				function tabLastfocus(e) {
					if(e.type =="keydown") {
						if (e.keyCode == 9 && e.shiftKey) {
						} else if (e.keyCode == 9) {
							e.preventDefault();
							fistelem.focus();
						}
					}
				}
			}
		}

		function mobgnbclose(){
			$wrapper.removeClass('dimd');
			$body.css({
				'position' : 'static',                
				'width':'auto',
				'height':'auto',
				'overflow':"auto"
			});
			mobgnb.stop().animate({
				'left': -mobgnb.width()
			}, animatespeed, animateeffect, function(){
				mobgnb.remove();
			});
			focusback.focus();
		}

		function makegnbBox(){
			var mobgnbNum = $wrapper.find('.mobgnb').length;
			var $mobgnb;
			if(mobgnbNum < 1) {
				$wrapper.prepend('<div class="mobgnb"></div>');
				$mobgnb = $wrapper.find('.mobgnb:first-child');
				$wrapper.find('.mobgnb').css('z-index','1000').append(navHtml);
			}
		}

		function resizegnb(){
			$dep2box.attr('style','');
			if(HAP.VIEWPORT_WIDTH >= 1000) {
				$body.css({
					'width':'auto',
					'height':'auto',
					'overflow':"auto"
				});
				mobgnb.remove();
				$wrapper.removeClass('dimd');
			}
		}

		function menuopen(){
			$dep2box.stop().slideDown('fast');
		}

		function menuclsoe(){
			$dep2box.stop().slideUp('fast');
		}


		$(window).load(function(){
//	(function($){
			var width_size = window.outerWidth;
			if (width_size >= 1000) {
				wowFn();
				/*
				if ($(window).scrollTop() == 0) {
					wowFn();
					$('.brand-history-wrap>div').removeClass('fadeIn');
				}
				*/
				var $wowTarget = $('.wow');
				$(document).on({
					keydown:function(e) {
						if (e.keyCode == 9) {
							$wowTarget.css('visibility','visible');
							wowRmClass($wowTarget, 'fadeInUp');
						}
					}
				})
			}
//	})(jQuery);
		});

		function wowRmClass($wow, targetClass) {
			$wow.removeClass(targetClass)
			$wow.removeClass('animated')
		}

		function wowFn () {

			if (!HAP.IS_IE8 || $(window).scrollTop() == 0) {
				if(!HAP.IS_IE8) {
					var wow = new WOW({
						boxClass:     'wow',      	// animated element css class (default is wow)
						animateClass: 'animated',	// animation css class (default is animated)
						offset:       1,
						mobile:       false,			// distance to the element when triggering the animation (default is 0)
						live:         true
						/*callback:     function(box) {
						 // the callback is fired every time an animation is started
						 // the argument that is passed in is the DOM node being animated
						 }*/
					});
					wow.init();
				}
			} else {
				//$('.wow').css('vis','')
			}
		}
		// 디바이스별 이미지 변경
		var $reitnaItem = $('.retinaimg');
		if($reitnaItem.length > 0) {
			$reitnaItem.RetinaImg();
		}

	})
})(jQuery);


$(function() {
	//셀렉트 디자인 바인딩
	var $footselect = $('.foot').find('select');
	$footselect.jqListBox('init');

	var $uiselect = $('.uiselect').find('select');
	$uiselect.jqListBox('init');

});


/* 유튜브 api */
function callPlayer(frame_id, func, args) {
	if (window.jQuery && frame_id instanceof jQuery) frame_id = frame_id.get(0).id;
	var iframe = document.getElementById(frame_id);
	if (iframe && iframe.tagName.toUpperCase() != 'IFRAME') {
		iframe = iframe.getElementsByTagName('iframe')[0];
	}
	if (iframe) {
		// Frame exists, 
		iframe.contentWindow.postMessage(JSON.stringify({
			"event": "command",
			"func": func,
			"args": args || [],
			"id": frame_id
		}), "*");
	}
}


/* youtube */
$(document).on("click",".video-play-btn",function(){
	callPlayer('cf_view_box','playVideo');//유튜브 재생버튼
	$(this).hide();
	$(".yt_thumb").fadeOut();
	$("#cf_view_box").css('display', 'block').attr('tabindex', '0').focus();
});



/* skip */
jQuery(function(){
	jQuery('.skip').on('click', function () {
		jQuery('#container').attr('tabindex', '-1')
	})
})


var Session_info = Session_info || {};
    Session_info.currentLogin = 'N';



function doLogout(){
    if(confirm("로그아웃 하시겠습니까?")){
		location.href="/kr/ko/bin/api/happybath/logoutexec";
    }
}




/* top button */
$(document).ready(function(){

	// hide .topbtn first
	$(".topbtn").hide();

	// fade in .topbtn
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('.topbtn').fadeIn();
			} else {
				$('.topbtn').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('.topbtn a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});


/* modal popup */
$(function() {

	$(document).on('click', '[data-modal]', function (e) {
		e.preventDefault();
		if ($(this).data('requireLogin') /*&& isLogin() == 'N'*/) {

		} else {
			$(this).jqModal($(this).attr('href'));
		}
	});
});








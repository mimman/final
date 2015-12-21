	
			
	$(document).ready(function(){
			$('#fullpage').fullpage({
				anchors: ['firstPage', 'secondPage', '3rdPage', '4rdPage'],
				sectionsColor: ['', '', '#f6f6f7', ''],
				navigation: true,
				navigationPosition: 'right',
				navigationTooltips: ['', '', '', ''],
				responsiveWidth: 760
			});
			
		var page = "";
	
			
		moveStatus = false,
		menuState = false;
		
		$('#menuOpen').on('click',function(){
			if(menuState == false){
				menuOn();
			}else{
				menuOff();			
			}
		});
	
		$('#menuClose').click(menuOff);
	
		function menuOn(){
			menuState = true;
			 $('#m_menu').animate({
				  left:'0px', opacity:1,
			  }, 500)
			  
			  $('#content').animate({
				  left:'150px', opacity:1,
			  }, 500)	
			  
			  $('#menuOpen').toggleClass("Open Open1") ;
			  
			  /*$('.gnb_web#gnb .two_depth').animate({
				  left:'150px', opacity:1,
			  }, 500)*/
			  
			  
			  
			 // $menu.stop().animate({'margin-left' : 0}, 350);
			  //$content.stop().animate({left : 0, 'margin-left' : detailLeft + 'px'}, 350);
			  //$header.stop().animate({left : menuWidth}, 350);
			 // $container.addClass('overFlow');
		 
		}		  
	
		function menuOff(){
			menuState = false;
			$('#m_menu').animate({
				  left:'-150px', opacity:1,
			  }, 500)
			  
			  $('#content').animate({
				  left:'0px', opacity:1,
			 }, 500)	 
			  
			 $('#menuOpen').toggleClass("Open1 Open") ; 
			 
			/* $('.gnb_web#gnb .two_depth').animate({
				  left:'-150px', opacity:1,
			  }, 500)*/
		}	 
	

	
	/*�޴� ������*/
	
	//************************************

	
		//gnb Ŭ����
		$("#m_a_gnb #gnb > ul > li > a").click(function(){
			var w_width1 = $(document).width();
			var $gnb_class = $("#m_a_gnb #gnb").attr("class");
			if($gnb_class == "m_gnb_mob"){   //����~
				
				var $length = $(this).siblings("ul").children("li").length;
				var $height = ($length * 40); // ���̰��� 2��
				$(".two_depth").stop().animate({"height" : "0"},200);
				$(this).siblings("ul").stop().animate({"height" : $height},200);
			}
		});
		
	/*���� ���ϸ��̼�*/
		
		 $(function(){
			var mv = new main_Visual();
		})

		function main_Visual(){
			var root = this;
			this.num = 0;
			this.item = null;
			this.dot;
			this.timer;
			this.autoPlay = true;
			this.delay = 0;
			this.nextN = 0;
			this.maxN = 0;
			this.dotW = 22;
			this.defDelay = 3*1000;

			this.init = function(){
				root.item = $("#main-background").find(".main-banner-item");
				root.item.find(".wrap .mv-img3").hide();
				root.item.find(".wrap .ac").hide();
				root.dot = $("#main-background").find(".main-banner-dot");
				root.maxN = $(root.item).size();

				$(root.dot).each(function(idx){
					var _dml = parseInt(-parseInt((root.maxN*(root.dotW))/2)+((root.maxN*(root.dotW) - (root.maxN-idx)*(root.dotW))));
					$(this).css("margin-left", _dml);

					$(this).find("a").click(function(e){
						e.preventDefault();
						root.chk(idx);
					});
				});
				if (root.maxN != 1){
					//var c_pos = parseInt($("#main-background").find(".main-banner-dot").eq(root.maxN-1).css("margin-left"))+this.dotW;
					//$("#main-background").find(".main-banner-controler").css("margin-left", c_pos);
				}else{
					$("#main-background").find(".main-banner-controler").hide();
				}

				if (root.autoPlay == false){
					$('.main-banner-controler a').addClass("busy");
				}

				$("#main-background").find('.main-banner-controler a').click(function(e){
					e.preventDefault();
					if ( $(this).parents("dt").hasClass("busy") ){
						root.autoPlay = true;
							setTimeout(function(){
							root.chk('next');
						},root.delay);
						$(this).parents("dt").removeClass("busy");
					}else{
						root.autoPlay = false;
						if (root.timer) clearTimeout(root.timer);
						$(this).parents("dt").addClass("busy");
					}
				});
			}

			this.chk = function(t){
				if (t == "next"){
					root.nextN = ( (root.num+1) > root.maxN-1 ) ? 0 : root.num+1;
				}else{
					root.nextN = t;
				}
				root.delay = ( $(root.dot).eq(root.nextN).attr("data-delay")) ? parseInt($(root.dot).eq(root.nextN).attr("data-delay"))*1000 : root.defDelay;
				root.move(root.nextN);
			}
			this.move = function(num){
				$(root.dot).removeClass("on").eq(root.nextN).addClass("on");
				$(root.item).eq(root.num).removeClass("on").fadeOut({duration:700, queue:false, complete:function(){
					$(this).find(".wrap .mv-img3").hide();
					$(this).find(".wrap .ac").hide();
				}});
				$(root.item).eq(num).addClass("on").fadeIn({duration:500, queue:false, complete:function(){
						if ( $(this).find(".mv-img3").length != 0 ){
							$(this).find(".mv-img3").css({'margin-left': '-='+200, 'display': 'block'}).delay(400).animate({'margin-left': '+='+200, 'opacity': 1}, 1500, function(){
								$(this).parents(".wrap").find(".ac").each(function(idx){
									$(this).delay((idx+2)*180).fadeIn(700);
								});
							});
						}else{
							$(this).find(".ac").each(function(idx){
								$(this).delay((idx+2)*180).fadeIn(700);
							});
						}

				}});
				root.num = num;
				if ( $(root.item).eq(num).find(".wrap").length ) root.delay = root.delay + 2000;
				if (root.timer) clearTimeout(root.timer);
				if (root.autoPlay){
					root.timer = setTimeout(function(){
						root.chk('next');
					},root.delay);
				}
			}

			this.init();
			$('#main-background .main-banner-dot a').eq(0).click();
			$(window).load(function(){

			});
		
    }
    

	
	
	
	
	});
	
	$(window).load(function(){
	
		//ó�� ���۽� gnb
		$("#m_a_gnb #gnb > ul > li > a").each(function(){
			var $id = $(this).attr("id");
			if($id == "od_on"){
				$(this).next("ul").css("z-index", "100");
			}
		});
	
		
		
		$(window).resize(function(){
	
			var w_width3 = $(window).width();
	
			var w_width3 = $(window).width();
			var w_height2 = $(window).height();
			var d_height2 = $(document).height();
			if (w_height2 < d_height2){
				w_width3 = w_width3 + 17;
			}
			
			if(w_width3 >= 0){
				//gnb web css
				/*$("#gnb").removeClass("gnb_web");
				$("#gnb").addClass("m_gnb_mob");
				$("#gnb").css("left", "-232px");
				$("#gnb").css("width", "200px");*/
				$("#m_a_gnb #sub_container").css("width", "100%");
				$(".two_depth").css("height", "0");
				$(".two_depth").css("width", "150");
				$("#m_menu").css("width", "100%");
	
				$(".search_keyword input").attr("placeholder", "");
				
				
				
				var w_width5 = $(window).width();
	
				var w_width5 = $(window).width();
				var w_height4 = $(window).height();
				var d_height4 = $(document).height();
				if (w_height4 < d_height4){
					w_width5 = w_width5 + 17;
				}
				
			}else{
	
			}
			
		}).resize();
		
	
	});
	

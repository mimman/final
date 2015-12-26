/**
 * Created by Administrator on 2015-10-16.
 */
(function(){
    if(!window.UZ) return;
    window.UZ.Slide = window.UZ.Slide || {};

    UZ.Slide.Events 					= UZ.Slide.Events || {};
    UZ.Slide.Events.CHANGE 				= "Slide.Events.CHANGE";
    UZ.Slide.HappayBath = {};
    UZ.Slide.HappayBath.Accordion = function( $target ){
        function UZComponent(){
            var size = 70;
            var view;
            var lists;
            var active = null;
            this.init = function(){
                view = $target.find(".accordion-con");
                lists = view.find("li");
                lists.prop("tabIndex", "0");
                lists.on("mouseenter", mouseenter);
                lists.on("mouseleave", mouseleave);
                lists.on("click", click);
                lists.on("focus", click);
            }

            var mouseenter = function(e){
                $(e.currentTarget).trigger("click");
            }
            var mouseleave = function(e){
                standby(1);
            }
            var click = function(e){
                var current = $(e.currentTarget);
                $(".accordion-con .tit").addClass("active");
                if( active ) active.removeClass( "active" );
                active = current;
                active.addClass("active");
                var idx = active.index();
                var increase = 0;
                var gap = (100 - size) / (lists.length-1);
                lists.each(function(i){
                    var item = $(lists[i]);
                    var x = increase;
                    TweenMax.killTweensOf(item);
                    TweenMax.to(item, 1, {left:x+"%", ease:Expo.easeOut});
                    if(i == idx) increase += (size-gap);
                    increase += gap;
                });
            }
            var standby = function($speed){
                var w = 100/lists.length;
                var gap = 0;
                var speed = ($speed)?$speed:0;
                lists.each(function(i){
                    var item = $(lists[i]);
                    TweenMax.killTweensOf(item);
                    TweenMax.to(item, speed, {left:gap+"%", ease:Expo.easeOut});
                    item.removeClass("active");
                    $(".accordion-con .tit").removeClass("active");
                    gap += w;
                })

                active = null;
            }
            this.start = function(){
                standby();
            }
            this.setDisplaySize = function( $percent ){
                size = $percent;
            }
        }
        return UZ.Component.Register( UZComponent );
    }
})(jQuery);
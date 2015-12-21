/**
 * Created by Administrator on 2015-10-16.
 */
/* Opacity Slider Event Dispatcher */
(function(){
    if(!window.UZ) return;
    window.UZ.Slide = window.UZ.Slide || {};

    UZ.Slide.Events 					= {};
    UZ.Slide.Events.INIT				= "Slide.Events.INIT";
    UZ.Slide.Events.CHANGE 				= "Slide.Events.CHANGE";

    UZ.Slide.Events.Direction 			= {};
    UZ.Slide.Events.Direction.PREV 		= "Slide.Events.Direction.PREV";
    UZ.Slide.Events.Direction.NEXT 		= "Slide.Events.Direction.NEXT";
    UZ.Slide.Events.Direction.DIRECT 	= "Slide.Events.Direction.DIRECT";

    UZ.Slide.Events.Controller 			= {};
    UZ.Slide.Events.Controller.PLAY 	= "Slide.Events.Controller.PLAY";
    UZ.Slide.Events.Controller.PAUSE 	= "Slide.Events.Controller.PAUSE";
})();


/* Opacity Slider Base */
(function($){
    if(!window.UZ) return;
    window.UZ.Slide = window.UZ.Slide || {};

    UZ.Slide.Opacity = function( $target ){
        function UZComponent(){
            var items;
            var duration = 1;
            var activate = 0;
            var self = this;
            var swap = [];
            var depth = [];
            var dispacher = new UZ.EventDispatcher();
            var autoRolling = true;
            var container = null;
            this.init = function(){
                container = $target.find(".opacity-con");
                items = container.find(".item");

                items.prop("tabIndex","0");
                items.eq(0).addClass("active");
                items.on( "focus", focus );
                items.each(function(i){
                    swap[i] = this;
                    depth[i] = i;
                });
                TweenMax.to( items, 0, {alpha:0} );
                TweenMax.to( items.eq(0), 0, {alpha:1} );

                dispacher.addEventListener( UZ.Slide.Events.Direction.PREV, prev );
                dispacher.addEventListener( UZ.Slide.Events.Direction.NEXT, next );
                dispacher.addEventListener( UZ.Slide.Events.Direction.DIRECT, direct );

                dispacher.addEventListener( UZ.Slide.Events.Controller.PLAY, self.play );
                dispacher.addEventListener( UZ.Slide.Events.Controller.PAUSE, self.stop );
            }
            this.setAutoDuration = function( $duration ){
                duration = $duration;
            }
            this.getDispatcher = function(){
                return dispacher;
            }
            var prev = function(e){
                var i = activate-1;
                if( i < 0 ) i = items.length-1;

                animate(i);
                /*if( e ){
                 items.eq(i).focus();
                 } else {
                 animate(i);
                 }*/
            }
            var next = function(e){
                var i = activate+1;
                if( i >= items.length ) i = 0;

                animate(i);
                /*if( e ){
                 items.eq(i).focus();
                 } else {
                 animate(i);
                 }*/
            }
            var direct = function(e){
                //animate(e.index);
                items.eq(e.index).focus();
            }
            var focus = function(e){
                var currentTarget = $(e.currentTarget);
                animate(currentTarget.index());
            }

            this.stop = function(){
                autoRolling = false;
                timerEnd();
            }
            this.play = function(){
                autoRolling = true;
                timerStart();
            }

            this.start = function(){
                timerStart();

                var evt = {};
                evt.type = UZ.Slide.Events.INIT;
                evt.items = items;
                dispacher.dispatchEvent( evt );

                dispatch();
            }

            var interval;
            var timerStart = function(){
                if(autoRolling) {
                    clearInterval( interval );
                    interval = setInterval(next, duration*1500);
                }
            }
            var timerEnd = function(){
                clearInterval( interval );
            }
            var animate = function($num){
                TweenMax.killTweensOf(items.eq(activate));
                TweenMax.to( items.eq(activate), 1.5, { alpha:0 } );
                items.eq(activate).removeClass("active");
                activate = $num;

                var idx = depth.indexOf(activate);
                var d = depth.splice(idx, 1);
                depth = depth.concat(d);

                var s = swap.splice(idx, 1);
                swap = swap.concat(s);

                var len = swap.length;
                for(var i = 0; i<len; i++){
                    swap[i].style.zIndex = i;
                }

                dispatch();

                TweenMax.killTweensOf(items.eq(activate));
                TweenMax.to( items.eq(activate), 1.5,{alpha:1} );
                items.eq(activate).addClass("active");
                timerStart();
            }

            var dispatch = function(){
                var evt = {};
                evt.type = UZ.Slide.Events.CHANGE;
                evt.index = activate;
                dispacher.dispatchEvent( evt );
                self.dispatchEvent(evt);
            }
        }

        return UZ.Component.Register( UZComponent );
    }
})(jQuery);











/* Opacity Slider Direction Button */
(function($){
    if(!window.UZ) return;
    window.UZ.Slide = window.UZ.Slide || {};
    UZ.Slide.DirectionButton = function( $target ){
        function UZComponent(){
            var dispatcher;
            this.init = function(){
                $target.on("click", buttonsClick);
            }
            this.setDispatcher = function( $dispatcher ){
                dispatcher = $dispatcher;
            }

            var buttonsClick = function(e){
                var currentTarget = $(e.currentTarget);
                var evt = {};
                if( currentTarget.hasClass("prev") ){
                    evt.type = UZ.Slide.Events.Direction.PREV;
                    dispatcher.dispatchEvent( evt );
                } else if( currentTarget.hasClass("next") ){
                    evt.type = UZ.Slide.Events.Direction.NEXT;
                    dispatcher.dispatchEvent( evt );
                } else {
                    console.log( "error" );
                }
            }
            this.start = function(){

            }
        }
        return UZ.Component.Register( UZComponent );
    }
})(jQuery);












/* Opacity Slider Indicate Button */
(function($){
    if(!window.UZ) return;
    window.UZ.Slide = window.UZ.Slide || {};
    UZ.Slide.IndicateButton = function( $target ){
        function UZComponent(){
            var items;
            var model;
            var activate = 0;
            var lists;
            var dispatcher;
            this.init = function(){
                var template = $target.find( "script[type='text/template']" );
                //console.log(template.length);
                if(template.length>0){
                    model = template[0].innerHTML;
                }else{
                    model = template.innerHTML;
                }

            }

            this.setDispatcher = function( $dispatcher ){
                dispatcher = $dispatcher;
            }
            var change = function(e){
                lists.eq(activate).removeClass("active");
                activate = e.index;
                lists.eq(activate).addClass("active");
            }
            var buttonsClick = function(e){
                var currentTarget = $(e.currentTarget);
                var evt = {};
                evt.type = UZ.Slide.Events.Direction.DIRECT;
                evt.index = currentTarget.parent().index();
                dispatcher.dispatchEvent( evt );
            }
            var render = function(e){
                var struct = "";
                var len = e.items.length;
                for(var i = 0; i<len; i++){
                    struct += model.replace(/\t|\n/g, "");
                }

                var elements = $(struct);
                buttons = elements.find("button");
                buttons.text(function(i) {
                    return i + 1;
                });
                buttons.on("click", buttonsClick);
                $target.find(".indicate-lists").append(elements);

                lists = $target.find(".indicate-lists li");
            }
            this.start = function(){
                dispatcher.addEventListener( UZ.Slide.Events.INIT, render );
                dispatcher.addEventListener( UZ.Slide.Events.CHANGE, change );
            }
        }
        return UZ.Component.Register( UZComponent );
    }
})(jQuery);




/* Opacity Slider Indicate Button */
(function($){
    if(!window.UZ) return;
    window.UZ.Slide = window.UZ.Slide || {};
    UZ.Slide.Controller = function( $target ){
        function UZComponent(){
            var dispatcher;
            var play;
            var pause;
            this.init = function(){
                play = $target.find(".play");
                pause = $target.find(".pause");

                play.on("click", play, playClick);
                pause.on("click", pause, pauseClick);
            }

            var playClick = function(e){
                dispatch( UZ.Slide.Events.Controller.PLAY );
            }
            var pauseClick = function(e){
                dispatch( UZ.Slide.Events.Controller.PAUSE );
            }
            var dispatch = function($type){
                var evt = {};
                evt.type = $type;
                dispatcher.dispatchEvent( evt );
            }

            this.setDispatcher = function( $dispatcher ){
                dispatcher = $dispatcher;
            }

            this.start = function(){

            }
        }
        return UZ.Component.Register( UZComponent );
    }
})(jQuery);
(function($){
    window.UZ = window.UZ || {};
    UZ.Ui = {};
    UZ.Ui.KeyCode = {};
    UZ.Ui.KeyCode.TAB 			= 9;
    UZ.Ui.KeyCode.ENTER 		= 13;
    UZ.Ui.KeyCode.UP 			= 38;
    UZ.Ui.KeyCode.DOWN 			= 40;
    UZ.Ui.KeyCode.LEFT 			= 37;
    UZ.Ui.KeyCode.RIGHT 		= 39;
    UZ.Ui.KeyCode.ESC 			= 27;
    UZ.Ui.KeyCode.BACKSPACE 	= 8;
    UZ.Ui.KeyCode.SPACE	 		= 32;

    UZ.Extends = function($base, $super){
        var base = $base;
        $base.prototype = new $super;
        $base.prototype.constructor = base;
        return $base;
    };
    UZ.EventDispatcher = function(){
        var event = [];
        var self = this;
        this.addEventListener = function( $event, $listener ){
            if( typeof event[ $event ] == 'undefined' ) event[ $event ] = [];
            event[ $event ].push( $listener );
        }
        this.removeEventListener = function( $event, $listener ){
            if( event[ $event ] ){
                var len = event[ $event ].length;
                for(var i = 0; i<len; i++){
                    if( event[ $event ][i] == $listener ){
                        event[ $event ].splice(i, 1);
                        break;
                    }
                }
            }
        }
        this.hasEventListener = function( $event ){
            return ( typeof event[ $event ] == 'undefined' ) ? false : true ;
        }
        this.dispatchEvent = function( $event, $data ){
            var evt = (typeof $event == "string")?$event:$event.type;
            var sender = (typeof $event == "string")?this:$event;
            if( typeof event[ evt ] == 'undefined' ){
            } else {
                var len = event[ evt ].length;
                for(var i = 0; i<len; i++){
                    this.type = evt;
                    if( $data ) this.data = $data;
                    event[ evt ][i]( sender );
                }
            }
        }
    }
    UZ.System = {};
    UZ.System.Request = {};
    UZ.System.Request.Param = [];
    UZ.System.Request.Parse = function(){
        var href = window.location.href;
        var parameters = {};
        var arr = (href.slice(href.indexOf("?")+1,href.length)).split("&");
        for(var i = 0 ; i < arr.length ; i++){
            var param = arr[i].split("=");
            parameters[param[0]]=param[1];
        }
        UZ.System.Request.Param = parameters;
    }
    UZ.System.Request.Parse();

    UZ.Component = {};
    UZ.Component.Register = function( comp ){
        UZ.Extends(comp, UZ.EventDispatcher);
        var component = new comp();
        component.init();
        return component;
    }
})(jQuery);

/* Extension */
(function(){
    if( !Array.prototype.indexOf ){
        Array.prototype.indexOf = function(obj, start) {
            for (var i = (start || 0), j = this.length; i < j; i++) {
                if (this[i] === obj) { return i; }
            }
            return -1;
        }
    }
})();
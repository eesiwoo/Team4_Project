/*!
 * Contained Sticky Scroll v1.1
 * http://blog.echoenduring.com/2010/11/15/freebie-contained-sticky-scroll-jquery-plugin/
 *
 * Copyright 2010, Matt Ward
*/
(function($){
  $.fn.containedStickyScroll = function(options) {
    var defaults = {
        offsetTop: 380,
        topClass: '',
        scrollClass: '',
        bottomClass: ''
    }

    options = $.extend(defaults, options);

    var $object = $(this);
    $object.addClass(options.topClass);
    $(window).scroll(function() {
        if (($object.parent().height() + $object.parent().position().top - 30) <
                 ($(window).scrollTop() + $object.height())) {
            $object.removeClass(options.scrollClass).removeClass(options.topClass)
                .addClass(options.bottomClass);
        }
        else if($(window).scrollTop() < ($object.parent().offset().top)){
            $object.css("top", "380px");
            $object.removeClass(options.scrollClass).removeClass(options.bottomClass)
                .addClass(options.topClass);
        } else {
            var offset = ($(window).scrollTop() - $object.parent().offset().top + options.offsetTop);
            $object.css("top",  offset + "px");
            $object.removeClass(options.topClass).removeClass(options.bottomClass)
                .addClass(options.scrollClass);
        }
    });

  };
})(jQuery);

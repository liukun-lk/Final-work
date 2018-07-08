//= require jquery
//= require imagesloaded.min
//= require jquery.skidder
//= require jquery.lazyload.min

(function($,sr){

  // from: http://www.paulirish.com/2009/throttled-smartresize-jquery-event-handler/
  // debouncing function from John Hann
  // http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
  var debounce = function (func, threshold, execAsap) {
      var timeout;

      return function debounced () {
          var obj = this, args = arguments;
          function delayed () {
              if (!execAsap)
                  func.apply(obj, args);
              timeout = null;
          };

          if (timeout)
              clearTimeout(timeout);
          else if (execAsap)
              func.apply(obj, args);

          timeout = setTimeout(delayed, threshold || 100);
      };
  }
  // smartresize
  jQuery.fn[sr] = function(fn){  return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };

})(jQuery,'smartresize');

$('.slideshow').each( function() {
    var $slideshow = $(this);
    $slideshow.imagesLoaded( function() {
      $slideshow.skidder({
        slideClass    : '.slide',
        animationType : 'css',
        scaleSlides   : true,
        maxWidth : 1300,
        maxHeight: 500,
        paging        : true,
        autoPaging    : true,
        pagingWrapper : ".skidder-pager",
        pagingElement : ".skidder-pager-dot",
        swiping       : true,
        leftaligned   : false,
        cycle         : true,
        jumpback      : false,
        speed         : 400,
        autoplay      : true,
        autoplayResume: true,
        interval      : 3000,
        transition    : "slide",
        afterSliding  : function() {},
        afterInit     : function() {}
      });
    });
});

$(window).smartresize(function(){
    $('.slideshow').skidder('resize');
});
$(".artwork .preview img").lazyload();
$(".slideshow img").lazyload();

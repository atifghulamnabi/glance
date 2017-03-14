// By : Codicode.com
// Source : http: //www.codicode.com/art/jquery_endless_div_scroll.aspx
// Licence : Creative Commons Attribution license (http://creativecommons.org/licenses/by/3.0/)

// You can use this plugin for commercial and personal projects.
// You can distribute, transform and use them into your work,
// but please always give credit to www.codicode.com

// The above copyright notice and this permission This notice shall be included in
// all copies or substantial portions of the Software.
$(function() {

  var $window           = $(window),
      win_height_padded = $window.height() * 1.1,
      isTouch           = Modernizr.touch;

  if (isTouch) { $('.revealOnScroll').addClass('animated'); }

  $window.on('scroll', revealOnScroll);

  function revealOnScroll() {
    var scrolled = $window.scrollTop(),
        win_height_padded = $window.height() * 1.1;

    // Showed...
    $(".revealOnScroll:not(.animated)").each(function () {
      var $this     = $(this),
          offsetTop = $this.offset().top;

      if (scrolled + win_height_padded > offsetTop) {
        if ($this.data('timeout')) {
          window.setTimeout(function(){
            $this.addClass('animated ' + $this.data('animation'));
          }, parseInt($this.data('timeout'),10));
        } else {
          $this.addClass('animated ' + $this.data('animation'));
        }
      }
    });
    // Hidden...
   $(".revealOnScroll.animated").each(function (index) {
      var $this     = $(this),
          offsetTop = $this.offset().top;
      if (scrolled + win_height_padded < offsetTop) {
        $(this).removeClass('animated fadeInUp flipInX lightSpeedIn')
      }
    });
  }

  revealOnScroll();
});

(function (e) { e.fn.endlessScroll = function (t) { function a(e, t, n) { e.css({ left: n ? "0px" : e.width() + "px" }); t.css({ left: n ? -1 * e.width() + "px" : "0px" }) } var t = e.extend({ width: "400px", height: "100px", steps: -2, speed: 40, mousestop: true }, t); var n = e(this); var r = e(this).attr("id"); var i = t.steps; n.css({ overflow: "hidden", width: t.width, height: t.height, position: "relative", left: "0px", top: "0px" }); n.wrapInner("<nobr />"); n.mouseover(function () { if (t.mousestop) { i = 0 } }); n.mouseout(function () { i = t.steps }); n.wrapInner("<div id='" + r + "1' />"); var s = e("#" + r + "1"); s.css({ position: "absolute" }).clone().attr("id", r + "2").insertAfter(s); var o = e("#" + r + "2"); a(s, o, t.steps > 0); var u = setInterval(function () { s.css({ left: parseInt(s.css("left")) + i + "px" }); o.css({ left: parseInt(o.css("left")) + i + "px" }); if (parseInt(s.css("left")) < 0 || parseInt(s.css("left")) > s.width()) { a(s, o, t.steps > 0) } }, t.speed); return n } })(jQuery)
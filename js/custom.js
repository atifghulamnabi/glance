// JavaScript Document
//new UISearch( document.getElementById( 'sb-search' ) );
$(document).ready(function() {
	 $(window).load(function() {
         //$('.loading').hide();
         //$('#pagecontent').show();
		 $('body').addClass('ovrfl');
		 $("#top_bar_nav").sticky({ topSpacing: 0 });
    });
	
	
	$('#menu_super, .menuSupper').superfish({
	//add options here if required
	});
	// initialise plugin
	$('#menu_super').slicknav({
		prependTo:'nav.navi',
		label: ''
});

$('#side_tabs_slick').slicknav({
		prependTo:'.side_tabs_slick',
		label: 'SubMenu'
});



	$('.fancybox').fancybox();
	$(".switch_btn").click(function(){
		$(".porfolio_section_head").toggleClass("gry_bg");
	});
	});
	//$("#digital_Banner_slider").scrollForever();
	
	$('#career_page, .txt_side_port, #nav').onePageNav();
	
	
$(function(){
  $('#portfolio').mixitup({
    targetSelector: '.item',
    transitionSpeed: 1000
  });
  
  $('#portfolioCustomer').mixitup({
    targetSelector: '.item',
    transitionSpeed: 1000
  });
 
  //Check to see if the window is top if not then display button
	
		
		 jQuery(window).scroll(function() {
			 
			 
       if (jQuery(this).scrollTop() > 200) {
            jQuery('.scrollToTop').fadeIn('slow');
        } else {
            jQuery('.scrollToTop').fadeOut('slow');
        }
    });
    jQuery('.scrollToTop').click(function() {
        jQuery("html,body").animate({
            scrollTop: 0
        }, 1000);
        return false;
    });  
});
	
	
$(function(){
		var count = 0;
		function onScrollInit( items, trigger ) {
			items.each( function() { 
			
			var osElement = $(this),
				osAnimationClass = osElement.attr('data-os-animation'),
				osAnimationDelay = osElement.attr('data-os-animation-delay');
			  
				osElement.css({
					'-webkit-animation-delay':  osAnimationDelay,
					'-moz-animation-delay':     osAnimationDelay,
					'animation-delay':          osAnimationDelay
				});

				var osTrigger = ( trigger ) ? trigger : osElement;
				
				osTrigger.waypoint(function() {
					osElement.addClass('animated').addClass(osAnimationClass); //console.log(osElement.attr('class'));
					
					if(osElement.attr('class') == 'circle os-animation animated fadeInLeft'){ //console.log('here');
						//osElement.children('div.CBox').circliful();
						var targetId = osElement.attr('id'); 
						var percentage = percentageObject[count];//console.log(count);
						var color = colors[count];
						createCircle(targetId,percentage,color);
						count++;
					}
					},{
						triggerOnce: true,
						offset: '90%'
				});
			});
		}

		onScrollInit( $('.os-animation') );
		onScrollInit( $('.staggered-animation'), $('.staggered-animation-container') );
});  
$('#carousel-OutSource').carousel({
  interval: 2000,
  pause:"hover"
});
$('#carousel-SocialMedia').carousel({
  interval: 2500,
  pause:"hover"
});

$('#carousel-About').carousel({
  interval: 5000,
  pause:"hover"
});
$('#carousel-portfolio').carousel({
  interval: 5000,
  pause:"hover"
});

$('#carousel-event').carousel({
  interval: 5000,
  pause:"hover"
});
$('.shadow img').hover(function(){ 
	$('.shadow').attr('id','cf4a'); 
	return; 
	},function(){ 
	$('.shadow').attr('id',''); 
}); 


jQuery("#layerslider").layerSlider({
		/*autoStart : false,*/
		
		responsive: true,
		responsiveUnder: 1200,
		layersContainer: 1200,
		pauseOnHover: true,
		autoPlayVideos: false,
		navButtons : true,
		skinsPath:'layerslider/skins/'
	});
	
	//@ http://jsfromhell.com/array/shuffle [v1.0]
		function shuffle(o){ //v1.0
			for(var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
			return o;
		}

		var colors = [
			['#E0A799', '#DF6C4F'], ['#F2E6B9', '#ECD06F'], ['#8EBBB7', '#3C948B'], ['#7dbec7', '#1a99aa'], ['#F07A7A', '#EE4444']
		],percentageObject = ['44','80','83','85','87'], circles = [];

		for (var i = 1; i <= 5; i++) {
			/*var targetId = 'circles-' + i;
			var percentage = percentageObject[i-1];
			var color = colors[i - 1];
			createCircle(targetId,percentage,color);*/
		}

function createCircle(targetId,percentage,color){
	circles.push(Circles.create({
				id:         targetId,
				value:		percentage,
				radius:     95,
				width:      12,
				colors:     color
			}));
	}
	
	$('.bxslider').bxSlider({
  minSlides: 1,
  maxSlides: 1,
  slideWidth: 2500,
  slideMargin: 0,
  ticker: true,
  speed: 60000,
  tickerHover: false
});
$(".drpdwn dt a").on('click', function () {
          $(".drpdwn dd ul").slideToggle('fast');
      });

      $(".drpdwn dd ul li a").on('click', function () {
          $(".drpdwn dd ul").hide();
      });

      function getSelectedValue(id) {
           return $("#" + id).find("dt a span.value").html();
      }

      $(document).bind('click', function (e) {
          var $clicked = $(e.target);
          if (!$clicked.parents().hasClass("drpdwn")) $(".drpdwn dd ul").hide();
      });


      $('.mutliSelect input[type="checkbox"]').on('click', function () {
        
          var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
              title = $(this).val() + ",";
        
          if ($(this).is(':checked')) {
              var html = '<span title="' + title + '">' + title + '</span>';
              $('.multiSel').append(html);
              $(".hida").hide();
          } 
          else {
              $('span[title="' + title + '"]').remove();
              var ret = $(".hida");
              $('.drpdwn dt a').append(ret);
              
          }
      });
$( ".mobility_vas_section_inner .icon1" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon1').fadeIn("slow");
});

$( ".mobility_vas_section_inner .icon2" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon2').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon3" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon3').fadeIn("slow");
});



$( ".mobility_vas_section_inner .icon4" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon4').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon5" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon5').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon6" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon6').fadeIn("slow");
});



$( ".mobility_vas_section_inner .icon7" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon7').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon8" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon8').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon9" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon9').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon10" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon10').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon11" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon11').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon12" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon12').fadeIn("slow");
});



$( ".mobility_vas_section_inner .icon13" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon13').fadeIn("slow");
});


$( ".mobility_vas_section_inner .icon14" ).mouseenter(function() {
$('.MoblMobilePhone_txt div').fadeOut("slow");
$('.Divicon14').fadeIn("slow");
});

 
 
 
 
 
 
jQuery(function(){jQuery("#content img").wrap("<div />")}),$.fn.preloader=function(e){var n,i={delay:200,check_timer:300,ondone:function(){},oneachload:function(){},fadein:500},e=$.extend(i,e),a=$(this),t=a.find("img").css({visibility:"hidden",opacity:0}),r=0,o=0,d=[],l=e.delay,c=function(){n=setInterval(function(){if(r>=d.length)return clearInterval(n),void e.ondone();for(o=0;o<t.length;o++)1==t[o].complete&&(0==d[o]&&(d[o]=!0,e.oneachload(t[o]),r++,l+=e.delay),$(t[o]).css("visibility","visible").delay(l).animate({opacity:1},e.fadein,function(){$(this).parent().removeClass("preloader")}))},e.check_timer)};t.each(function(){0==$(this).parent(e.preload_parent).length?$(this).wrap("<div class='preloader' />"):$(this).parent().addClass("preloader"),d[o++]=!1}),t=$.makeArray(t);var s=jQuery("<img />",{id:"loadingicon",src:"assets/loader.gif"}).hide().appendTo("body");n=setInterval(function(){return 1==s[0].complete?(clearInterval(n),c(),void s.remove()):void 0},100)};
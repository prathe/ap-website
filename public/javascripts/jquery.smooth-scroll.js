/*!
 * jQuery Smooth Scroll Plugin v1.3
 *
 * Date: Wed Dec 1 15:03:21 2010 -0500
 * Requires: jQuery v1.3+
 *
 * Copyright 2010, Karl Swedberg
 * Dual licensed under the MIT and GPL licenses (just like jQuery):
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 *
 *
 *
*/
(function(b){function k(e){var c=[],a=false;this.each(function(){if(!(this==document||this==window)){var d=b(this);if(d.scrollTop()>0)c.push(this);else{d.scrollTop(1);a=d.scrollTop()>0;d.scrollTop(0);a&&c.push(this)}}});if(e==="first"&&c.length)c=[c.shift()];return c}function l(e){return e.replace(/^\//,"").replace(/(index|default).[a-zA-Z]{3,4}$/,"").replace(/\/$/,"")}var m=l(location.pathname);b.fn.extend({scrollable:function(){return this.pushStack(k.call(this))},firstScrollable:function(){return this.pushStack(k.call(this,
"first"))},smoothScroll:function(e){e=e||{};var c=b.extend({},b.fn.smoothScroll.defaults,e);this.die("click.smoothscroll").live("click.smoothscroll",function(a){var d=b(this),f=location.hostname===this.hostname||!this.hostname,g=c.scrollTarget||(l(this.pathname)||m)===m,i=this.hash,h=true;if(!c.scrollTarget&&(!f||!g||!i))h=false;else{f=c.exclude;g=0;for(var j=f.length;h&&g<j;)if(d.is(f[g++]))h=false;f=c.excludeWithin;g=0;for(j=f.length;h&&g<j;)if(d.closest(f[g++]).length)h=false}if(h){c.scrollTarget=
e.scrollTarget||i;c.link=this;a.preventDefault();b.smoothScroll(c)}});return this}});b.smoothScroll=function(e,c){var a,d,f,g=0;d="offset";var i={};if(typeof e==="number"){a=b.fn.smoothScroll.defaults;f=e}else{a=b.extend({},b.fn.smoothScroll.defaults,e||{});if(a.scrollElement){d="position";a.scrollElement.css("position")=="static"&&a.scrollElement.css("position","relative")}f=c||b(a.scrollTarget)[d]()&&b(a.scrollTarget)[d]()[a.direction]||0}a=b.extend({link:null},a);if(a.scrollElement){d=a.scrollElement;
g=d.scrollTop()}else d=b("html, body").firstScrollable();i["scroll"+{top:"Top",left:"Left"}[a.direction]]=f+g+a.offset;d.animate(i,{duration:a.speed,easing:a.easing,complete:function(){a.afterScroll&&b.isFunction(a.afterScroll)&&a.afterScroll.call(a.link,a)}})};b.smoothScroll.version="1.3.1";b.fn.smoothScroll.defaults={exclude:[],excludeWithin:[],offset:0,direction:"top",scrollElement:null,scrollTarget:null,afterScroll:null,easing:"swing",speed:400}})(jQuery);
$(document).ready(function(){$(document).mousemove(function(p){TweenLite.to($("body"),.5,{css:{backgroundPosition:""+parseInt(p.pageX/8)+"px "+parseInt(p.pageY/"12")+"px, "+parseInt(p.pageX/"15")+"px "+parseInt(p.pageY/"15")+"px, "+parseInt(p.pageX/"30")+"px "+parseInt(p.pageY/"30")+"px","background-position":parseInt(p.pageX/8)+"px "+parseInt(p.pageY/12)+"px, "+parseInt(p.pageX/15)+"px "+parseInt(p.pageY/15)+"px, "+parseInt(p.pageX/30)+"px "+parseInt(p.pageY/30)+"px"}})})});
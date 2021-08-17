$(function(){
  $(window).scroll(function(){
  var navbar =$(document).height() - $(window).height() - $(window).scrollTop();
  // console.log(navbar);
  var $tip = $('.change-color');
  var ki = $("#hi").position().top +250;
  console.log(ki);
  if(navbar < ki){
      $tip.addClass('activated');
  }else{
      $tip.removeClass('activated');
  }
})
})

var top1 = $('#one').top;
var top2 = $('#two').top;
var top3 = $('#three').top;
var top4 = $('#four').top;

var goto1 = document.querySelector('#go1');
var goto2 = document.getElementById('go2');
var goto3 = document.getElementById('go3');
var goto4 = document.getElementById('go4');

function moveScrollTo(par){
  window.scrollTo({top:par, behavior:'smooth'})
}
goto1.addEventListener("click",function(){moveScrollTo(top1)})
goto2.addEventListener("click",function(){moveScrollTo(top2)})
goto3.addEventListener("click",function(){moveScrollTo(top3)})
goto4.addEventListener("click",function(){moveScrollTo(top4)})
$(function(){
  $(window).scroll(function(){
  var navbar =$(document).height() - $(window).height() - $(window).scrollTop();
  console.log(navbar);
  var $tip = $('.change-color');
  var ki = $('.hello').height()+300;
  // console.log(ki);
  if(navbar < ki){
      $tip.addClass('activated');
  }else{
      $tip.removeClass('activated');
  }
})
})
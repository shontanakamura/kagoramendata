$(function(){
  $(window).scroll(function (){
      $('.header__image').each(function(){
          var targetElement = $(this).offset().top;
          var scroll = $(window).scrollTop();
          var windowHeight = $(window).height();
          if (scroll > targetElement - windowHeight + 200){
              $(this).css('opacity','1');
              $(this).css('transform','translateY(0)');
          }
      });
  });
  



  $('.menu__list').on('mouseover', function(){
    $('.menu__list').css('color', '#ecb000');
  }).mouseout(function() {
    $('.menu__list').css('color', 'red');
  });




  

});


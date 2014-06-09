$(function(){
  //show notices for a while, then remove.
  $(".notice").delay(3000).slideUp(400);
  $(".notice").click(function(){
    $(this).hide();
  });
});
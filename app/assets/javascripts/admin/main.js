$(function() {
    $("#image_left").click(function(){
        $('.image_left_form').toggle(200);
        $('.image_right_form').hide();
        $('.no_image_form').hide();
    });
});
$(function() {
    $("#image_right").click(function(){
        $('.image_right_form').toggle(200);
        $('.image_left_form').hide();
        $('.no_image_form').hide();
    });
});
$(function() {
    $("#no_image").click(function(){
        $('.no_image_form').toggle(200);
        $('.image_right_form').hide();
        $('.image_left_form').hide();
    });
});
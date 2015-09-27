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
        $('.image_top_form').hide();
        $('.no_image_form').hide();
    });
});
$(function() {
    $("#image_top").click(function(){
        $('.image_top_form').toggle(200);
        $('.image_left_form').hide();
        $('.image_right_form').hide();
        $('.no_image_form').hide();
    });
});
$(function() {
    $("#no_image").click(function(){
        $('.no_image_form').toggle(200);
        $('.image_left_form').hide();
        $('.image_right_form').hide();
        $('.image_top_form').hide();
    });
});

$(function() {
    $("#text_add").click(function(){
        $('.text_add_form').toggle(200);
    });
});

$(function() {
    $("#itemtext").click(function(){
        $('.itemtext_form').toggle(200);
        $('.itemmovie_form').hide();
    });
});

$(function() {
    $("#itemmovie").click(function(){
        $('.itemmovie_form').toggle(200);
        $('.itemtext_form').hide();
    });
});

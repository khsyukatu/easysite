// Paper
// Bootswatch
// bootswatch.js

$(function() {
    $("#itemtext").click(function(){
        $('.itemtext_form').toggle(200);
        $('.itemimage_form').hide();
        $('.itemmovie_form').hide();
    });
});

$(function() {
    $("#itemmovie").click(function(){
        $('.itemmovie_form').toggle(200);
        $('.itemimage_form').hide();
        $('.itemtext_form').hide();
    });
});

$(function() {
    $("#itemimage").click(function(){
        $('.itemimage_form').toggle(200);
        $('.itemmovie_form').hide();
        $('.itemtext_form').hide();
    });
});

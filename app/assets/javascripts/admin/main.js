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


$(function() {
    $(".textedit").click(function(){
        var item_id = $(this).data("item-id");
        $(".itemtext_edit_" + item_id).toggle(200);
    });
});

$(function() {
    $(".movieedit").click(function(){
        var item_id = $(this).data("item-id");
        $('.itemmovie_edit_' + item_id).toggle(200);
    });
});

$(function() {
    $(".imageedit").click(function(){
        var item_id = $(this).data("item-id");
        $('.itemimage_edit_' + item_id).toggle(200);
    });
});

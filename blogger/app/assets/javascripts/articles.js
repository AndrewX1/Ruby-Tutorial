$(document).ready(function(){
    $("#submit").click(function(event){
        if (
            !$("#article_title").val() ||
            !$("#article_body").val() ||
            !$("#article_tag_list").val()
        ) {
            $("span.flash").html('Title, Body and Tag List cannot be empty!');
            return false;
        }
    });
});

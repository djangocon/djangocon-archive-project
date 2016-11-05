$(document).ready(function(){

    if (typeof console === "undefined"){
        console={};
        console.log = function(){
            return;
        }
    }

    $("#logout_link").on("click", function(e) {
        var form = $($(this).data("form-submit"));
        form.submit();
        return false;
    });
    $(".required-field").prepend("<span style='color:red;'>* </div>");
});

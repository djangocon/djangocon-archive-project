jQuery.fn.autoscroll = function() {
    $('html,body').animate({scrollTop: this.offset().top}, 500);
}

$(function() {
    $(".sponsors .row article:last-child").addClass('last');
    $(".sponsors header").append('<h3 id="sponsor-hd"></h3>');
    var hd = $("#sponsor-hd");
    var inners = $('#sponsor-slideshow section').cycle({cleartypeNoBg: true}).cycle('stop');
    var slideshow = $("#sponsor-slideshow").cycle({
        cleartypeNoBg: true,
        fx: 'scrollUp',
        pause: true,
        speed: 500,
        timeoutFn: function() {
            return ($(this).children().length > 1) ? 8000 : 4000;
        },
        before: function() {
            hd.fadeOut();
            // stop all inner slideshows
            inners.cycle('stop');
            // start the new slide's slideshow
            $(this).cycle({
                cleartypeNoBg: true,
                fx: 'fade',
                pause: true,
                timeout: 4000,
                speed: 500,
                autostop: true,
                end: function() {
                    // when inner slideshow ends, advance the outer slideshow
                    slideshow.cycle('next');
                }
            });
        },
        after: function() {
            hd.hide().empty().html($(this).attr('title'));
            hd.fadeIn();
        }
    });

    $("#messages li a").click(function() {
        $(this).parent().fadeOut();
        return false;
    });
});

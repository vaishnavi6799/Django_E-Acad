$(document).ready(function (){

    // scroll check for fade in
    $(window).scroll(function () {
        if ($(window).scrollTop() > 300) {

            $('nav').addClass('active');
        }
        if ($(window).scrollTop() > 300) {

            $('.features').addClass('active');
        }
    });

});


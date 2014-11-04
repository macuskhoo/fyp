$(document).ready(function() {
    function showAchievement() {
        $('.achievement-pane').css('display', 'inline-block');
        $('icon').css('opacity', '1');
        $('.entypo-flash').css('display', 'block');
        $('.text').css('display', 'block');
        $('.unlocked').css('display', 'block');
        $('.name').css('display', 'block');
        $('.tk').css('display', 'block');

        $('.achievement-pane').children().css({opacity: 0});

        var middle = ($(window).width() / 2) - ($('.achievement-pane').width() / 2);

        $('.icon').animate({top: 250, left: 0, opacity: 1}, 600);
        $('.text').delay(1100).animate({top: 250, left: 0, opacity: 1}, 600);
        $('.achievement-pane').delay(700).animate({left: middle + 'px'}, 600);
        $('.text').children().eq(0).delay(2500).animate({position: 'relative', left: '120%'});
        $('.text').children().eq(1).delay(2700).animate({position: 'relative', top: '-18px'});

        $('.icon').delay(4500).animate({top: '-20px', left: '-0px', opacity: 0}, 300);
        $('.text').delay(3700).animate({top: '-20px', left: '-0px', opacity: 0}, 300);

    }

});
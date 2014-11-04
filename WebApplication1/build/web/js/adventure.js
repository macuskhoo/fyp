/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function doFunction(id,redirectLink){
        var ele = document.getElementById(id);
        if(redirectLink == '#'){
        if(id=='asd'){
        bootbox.alert("Complete the previous quiz/division before attemping this");
    }
        }
    }
$(document).ready(function() {
    
    var q1 = localStorage.getItem('quiz1');
    var q2 = localStorage.getItem('quiz2');
    var q3 = localStorage.getItem('quiz3');
    if (q1 != null && q1.indexOf('done') > -1) {
        $('#tick1').css('display', 'inline-block');
        $('#lock2').css('display', 'none');
        $('.question2').attr("href","/WebApplication1/q1.jsp");
        if(q2!=null && q2.indexOf('done')>-1){
            $('#tick2').css('display','inline-block');
            $('#lock3').css('display','none');
        }if(q3!=null && q3.indexOf('done')>-1){
            $('#tick3').css('display','inline-block');
        }
    }
    var currentWidth = $(window).width();
    $('.sea').click(function() {
        $('#first').fadeOut();
        $('#third').fadeOut();
        $('#forth').fadeOut();
        $('#fifth').fadeOut();
        $('#second').fadeIn();
        if (currentWidth > 767) {
            $('.sea').css('background-color', '#336699');
            $('.sea').css('opacity', '1');
            $('.sea').css('text-decoration', 'underline');
            $('.beach').css('background-color', '');
            $('.beach').css('text-decoration', '');
            $('.beach').css('color', '');
            $('.beach').css('opacity', '');
            $('.reef').css('background-color', '');
            $('.reef').css('text-decoration', '');
            $('.reef').css('color', '');
            $('.reef').css('opacity', '');
            $('.dune').css('background-color', '');
            $('.dune').css('text-decoration', '');
            $('.dune').css('color', '');
            $('.dune').css('opacity', '');
        } else {
            $('.as:hover').css('color', '');
        }
    });
    $('.reef').click(function() {
        $('#second').fadeOut();
        $('#first').fadeOut();
        $('#forth').fadeOut();
        $('#fifth').fadeOut();
        $('#third').fadeIn();
        if (currentWidth > 767) {
            $('.reef').css('background-color', '#658B9E');
            $('.reef').css('opacity', '1');
            $('.reef').css('text-decoration', 'underline');
            $('.sea').css('background-color', '');
            $('.sea').css('text-decoration', '');
            $('.sea').css('color', '');
            $('.sea').css('opacity', '');
            $('.beach').css('background-color', '');
            $('.beach').css('text-decoration', '');
            $('.beach').css('color', '');
            $('.reef').css('opacity', '');
            $('.dune').css('background-color', '');
            $('.dune').css('text-decoration', '');
            $('.dune').css('color', '');
            $('.dune').css('opacity', '');
        } else {
            $('.as:hover').css('color', '');
        }
    });
    $('.beach').click(function() {
        $('#second').fadeOut();
        $('#first').fadeOut();
        $('#third').fadeOut();
        $('#fifth').fadeOut();
        $('#forth').fadeIn();
        if (currentWidth > 767) {
            $('.beach').css('background-color', '#C9D4A7');
            $('.beach').css('opacity', '1');
            $('.beach').css('color', '#333333');
            $('.beach').css('text-decoration', 'underline');
            $('.sea').css('background-color', '');
            $('.sea').css('text-decoration', '');
            $('.sea').css('color', '');
            $('.sea').css('opacity', '');
            $('.reef').css('background-color', '');
            $('.reef').css('text-decoration', '');
            $('.reef').css('color', '');
            $('.reef').css('opacity', '');
            $('.dune').css('background-color', '');
            $('.dune').css('text-decoration', '');
            $('.dune').css('color', '');
            $('.dune').css('opacity', '');
        }
    });
    $('.dune').click(function() {
        $('#second').fadeOut();
        $('#first').fadeOut();
        $('#forth').fadeOut();
        $('#third').fadeOut();
        $('#fifth').fadeIn();
        if (currentWidth > 767) {
            $('.dune').css('background-color', '#FBF9AC');
            $('.dune').css('opacity', '1');
            $('.dune').css('color', '#333333');
            $('.dune').css('text-decoration', 'underline');
            $('.sea').css('background-color', '');
            $('.sea').css('text-decoration', '');
            $('.sea').css('color', '');
            $('.sea').css('opacity', '');
            $('.reef').css('background-color', '');
            $('.reef').css('text-decoration', '');
            $('.reef').css('color', '');
            $('.reef').css('opacity', '');
            $('.beach').css('background-color', '');
            $('.beach').css('text-decoration', '');
            $('.beach').css('color', '');
            $('.beach').css('opacity', '');
        }
    });
});
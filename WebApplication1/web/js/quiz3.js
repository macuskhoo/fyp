$var = "";
$text = "Please select your answer";
$storage = localStorage.getItem('counter1');
if ($storage == null) {
    $counter = 3;
} else {
    $counter = $storage;
}
var a3 = localStorage.getItem('quiz3');


function flash() {
    $('#first').click(function() {
        $('#first').css("background", "rgb(0,69,75)");
        $('#second').css("background", "turquoise");
        $('#third').css("background", "turquoise");
        $('#forth').css("background", "turquoise");
        $('.btn-green').fadeIn();
        $var = "A";
    });

    $('#second').click(function() {
        $('#second').css("background", "rgb(0,69,75)");
        $('#first').css("background", "turquoise");
        $('#third').css("background", "turquoise");
        $('#forth').css("background", "turquoise");
        $('.btn-green').fadeIn();
        $var = "B";
    });

    $('#third').click(function() {
        $('#third').css("background", "rgb(0,69,75)");
        $('#second').css("background", "turquoise");
        $('#first').css("background", "turquoise");
        $('#forth').css("background", "turquoise");
        $('.btn-green').fadeIn();
        $var = "C";
    });

    $('#forth').click(function() {
        $('#forth').css("background", "rgb(0,69,75)");
        $('#second').css("background", "turquoise");
        $('#third').css("background", "turquoise");
        $('#first').css("background", "turquoise");
        $('.btn-green').fadeIn();
        $var = "D";
    });
}
$(document).ready(function() {
    flash();
    if ($counter == 3) {
        //show 1 empty heart
        $('div.lifebar1').toggleClass("fontawesome-heart");
        $('div.lifebar2').toggleClass("fontawesome-heart");
        $('div.lifebar3').toggleClass("fontawesome-heart");

    } else if ($counter == 2) {
        $('div.lifebar1').toggleClass("fontawesome-heart-empty");
        $('div.lifebar2').toggleClass("fontawesome-heart");
        $('div.lifebar3').toggleClass("fontawesome-heart");
    } else if ($counter == 1) {
        //show 2 empty heart
        $('div.lifebar1').toggleClass("fontawesome-heart-empty");
        $('div.lifebar2').toggleClass("fontawesome-heart-empty");
        $('div.lifebar3').toggleClass("fontawesome-heart");
    } else if ($counter == 0) {
        $('div.lifebar1').toggleClass("fontawesome-heart-empty");
        $('div.lifebar2').toggleClass("fontawesome-heart-empty");
        $('div.lifebar3').toggleClass("fontawesome-heart-empty");
        bootbox.dialog({
            message: "You have finished all your life bars! Please try again!",
            buttons: {
                tryAgain: {
                    label: "Try again!",
                    className: "btn-try-again",
                    callback: function() {
                        window.location.href = "/WebApplication1/quiz1.jsp";
                    }
                },
                exit: {
                    label: "Exit!",
                    className: "btn-exit",
                    callback: function() {
                        window.location.href = "/WebApplication1/adventure.jsp";
                    }
                }
            }
        });
    }
    $('#submitBtn').click(function() {
        if ($('#btnSubmit').text() == "Submit") {
            if ($var == "") {
                $('.ribbon-content').html($text);
                $('.ribbon').fadeIn();
            } else if ($var == "A") {
                $('.ribbon').css('background-color','#16a085');
                $('.ribbon .ribbon-content').toggleClass('correct');
                $('.ribbon-content').html("Bingo! Press Continue!");
                $('.ribbon').fadeIn();
                $('#btnSubmit').html("Continue");
                $('.bar').css('width','100%');
                $('.figures').html('3/3');
                if (a3 == null) {
                    localStorage.setItem('quiz1', 'done');
                    localStorage.setItem('leaderboard','update');
                }
            } else {
                $('.ribbon-content').html($var += " is incorrect! Please try again!");
                $('.ribbon').css('background-color','#C3243B');
                if(!$('.ribbon-content').hasClass('changed'))
                $('.ribbon .ribbon-content').toggleClass('changed');
                $('.ribbon').fadeIn();
                $('#btnSubmit').html("Try Again");
                $('#first').off();
                $('#second').off();
                $('#third').off();
                $('#forth').off();
                $counter--;
                if ($counter == 3) {


                } else if ($counter == 2) {
                    //show 2 empty heart
                    $('div.lifebar1').removeClass("fontawesome-heart");
                    $('div.lifebar1').toggleClass('fontawesome-heart-empty');
                } else if ($counter == 1) {
                    $('div.lifebar2').removeClass('fontawesome-heart');
                    $('div.lifebar2').toggleClass('fontawesome-heart-empty');
                } else if ($counter == 0) {
                    $('div.lifebar3').removeClass('fontawesome-heart');
                    $('div.lifebar3').toggleClass('fontawesome-heart-empty');
                    bootbox.dialog({
                        message: "You have finished all your life bars! Please try again!",
                        buttons: {
                            tryAgain: {
                                label: "Try again!",
                                className: "btn-try-again",
                                callback: function() {
                                    window.location.href = "/WebApplication1/quiz1.jsp";
                                }
                            },
                            exit: {
                                label: "Exit!",
                                className: "btn-exit",
                                callback: function() {
                                    window.location.href = "/WebApplication1/adventure.jsp";
                                }
                            }
                        }
                    });
                }
            }

        } else if ($('#btnSubmit').text() == "Continue") {
            window.location = "/WebApplication1/adventure.jsp";
            $('.ribbon-content').html("");
        } else {
            $('.ribbon').fadeOut();
            $('#btnSubmit').html("Submit");
            flash();
            $('#forth').css("background", "turquoise");
            $('#second').css("background", "turquoise");
            $('#third').css("background", "turquoise");
            $('#first').css("background", "turquoise");
            $('.ribbon-content').html("");
            $('.btn-green').fadeOut();
        }
    });

    jQuery(".quiz-step").click(function() {
        var asd = $('.resultTxt').text();
        if (asd === $text) {
            $('.result').animate({width: 'toggle'}, 350);
            $('.resultTxt').html("");
        }
    });
});
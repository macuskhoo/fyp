<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.mmenu.min.all.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
    <script src="js/bootbox.min.js"></script>
    <title>Envision by Envisage</title>

    <!-- Bootstrap core CSS -->

    <!-- Custom styles for this template -->

    <!-- Custom styles for this template -->

    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/quiz1.css" rel="stylesheet">
            <script src="js/jquery-1.8.3.min.js"></script>
<link href="css/navbar.css" rel="stylesheet">
<link href="css/navbar-fixed-top.css" rel="stylesheet">
</head>
<body>
    
    <div class="lifebar1"></div>
    <div class="lifebar2"></div>
    <div class="lifebar3"></div>
<div class="help">
  <div id="nav-trigger" class="nav-trigger open" >
  <span class="line"></span>
  <span class="line"></span>
  <span class="line"></span>
</div>
    
<nav id="nav" class="out">
  <div class="somelist">
    <li class="someli"><a class="nav-label" href="homepage.jsp">Home</a></li>
    <li class="someli"><a class="nav-label"href="achievement.jsp">Achievements</a></li>
    <li class="someli"><a class="nav-label"href="adventure.jsp">Adventure</a></li>
    <li class="someli"><a class="nav-label"href="leaderboard.jsp">Leaderboard</a></li>
    <li class="someli"><a class="nav-label"href="faq.jsp">Ask for Help</a></li>
    <li class="someli"><a class="nav-label"href="submission.jsp">Submission</a></li>
    <li class="someli"><a class="nav-label"href="login.jsp">Logout</a></li>
  </div>
    </div>
</nav>
     <script src="js/navbar.js"></script>
     <div class="navigation">
        <div id="title">Quiz 2</div>
    </div>


    <div id="quizzie">

        <h1 class="ribbon">
  <strong class="ribbon-content">Correct! Click continue!</strong>
</h1>
        <ul class="quiz-step step1 current">

            <li class="question">
                <div class="question-wrap">
                    <h2>Question #2: What is the use of Empathy Map?</h2>
                </div>
            </li>
            <li class="quiz-answer low-value" data-quizIndex="2">
                <div class="answer-wrap" id="first"> 
                    <div class="choice">A: Help you synthesis your observations</div>
                </div>
            </li>
            <li class="quiz-answer high-value" data-quizIndex="4">
                <div class="answer-wrap" id="second"> 
                    <div class="choice">B: Has the same benefits as concept map</div>
                </div>
            </li>
            <li class="quiz-answer low-value" data-quizIndex="2">
                <div class="answer-wrap" id="third"> 
                    <div class="choice">C: Has the same benefits as world map</div>
                </div>
            </li>
            <li class="quiz-answer low-value" data-quizIndex="2">
                <div class="answer-wrap" id="forth"> 
                    <div class="choice">D: None of the above</div>
                </div>
            </li>
        </ul>

        <div class="btn-green" id="submitBtn"> 
            <div class="choice" id="btnSubmit">Submit</div>
        </div>
        <div class="container1">
            <div class="prog">
                <div class="bar" style='width:33%'></div>
            </div>
        </div>
        <div class="figures" style="text-align:center;padding-top:5px;">1/3</div>
    </div>
    <script>
        $var = "";
$text = "Please select your answer";
$storage = localStorage.getItem('counter');
if ($storage == null) {
    $counter = 3;
} else {
    $counter = $storage;
}
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
                        window.location.href = "/WebApplication1/q1.jsp";
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
                $('.resultTxt').html($text);
                $('.resultTxt').css("color", "#000");
                $('.result').animate({width: 'toggle'}, 350);
            } else if ($var == "A") {
                $('.ribbon').css('background-color','#16a085');
                $('.ribbon .ribbon-content').toggleClass('correct');
                $('.ribbon-content').html("Bingo! Press Continue!");
                $('.ribbon').fadeIn();
                $('#btnSubmit').html("Continue");
                localStorage.setItem('counter1', $counter);
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
                                    window.location.href = "/WebApplication1/q1.jsp";
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
            window.location = "/WebApplication1/q3.jsp";
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
        var asd = $('.ribbon-content').text();
        if (asd === $text) {
            $('.ribbon').animate({width: 'toggle'}, 350);
            $('.ribbon-content').html("");
        }
    });
});
    </script>

</body>
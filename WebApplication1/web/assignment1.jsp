<%-- 
    Document   : tutorial
    Created on : Oct 18, 2014, 5:27:22 AM
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href="css/tutorial.css" rel="stylesheet">
    
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
    <script src="js/bootbox.min.js"></script>
<link href="css/navbar.css" rel="stylesheet">
<link href="css/navbar-fixed-top.css" rel="stylesheet">

</head>
<body>    <div class="help">
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
        <div id="title">Submission</div>
    </div>
    <div class="container">  
        <form id="contact" action="" method="post">
            <h3>Submission</h3>
            <fieldset>
                <div class="btn-blue" style="cursor:pointer"> 
                    <div class="choice">Upload photo</div>
                </div>
            </fieldset>
            <fieldset>
                <input id="submissionTitle" placeholder="Title of submission" type="email">
            </fieldset>
            <fieldset>
                <textarea id="description" placeholder="Type your project write up here...."></textarea>
            </fieldset>
            <fieldset>
                <div  id="contact-submit" onclick="doFunction();">Submit</div>
            </fieldset>
        </form> 
        <div class="btn-green">Requirements</div>
    </div>

    <script>
        function doFunction() {
            var title = $('#submissionTitle').val();
            var des = $('#description').val();
            if (title == '' || des == '') {
                bootbox.dialog({
                    message: "Please input your title and description",
                    buttons: {
                        continue: {
                            label: "Ok",
                            className: "btn-exit",
                            callback: function() {
                                bootbox.hideAll();

                            }
                        }
                    }
                });
            } else {
                bootbox.dialog({
                    message: "Submit your assignment?",
                    buttons: {
                        continue: {
                            label: "Continue",
                            className: "btn-continue",
                            callback: function() {
                                localStorage.setItem("assignment1", "done");
                                bootbox.hideAll();
                                bootbox.dialog({
                                    message: "Your assignment has been submitted. Press Confirm to continue",
                                    buttons: {
                                        confirm: {
                                            label: "Confirm",
                                            className: "btn-confirm",
                                            callback: function() {
                                                window.location.href = '/WebApplication1/submission.jsp';
                                            }

                                        }
                                    }
                                });

                            }
                        },
                        exit: {
                            label: "Exit",
                            className: "btn-exit",
                            callback: function() {
                                bootbox.hideAll();
                            }
                        }
                    }
                });
            }

        }
        $(document).ready(function() {
            $('.btn-green').click(function() {
                window.location.href = './requirements.jsp'
            });
            $('.btn-blue').click(function() {
                window.location.href = './gallery.jsp';
            });
            var imageRetrieved = "";
            imageRetrieved = localStorage.getItem("continue");
            localStorage.removeItem("continue");
            if (imageRetrieved.indexOf("jpg") > 0) {
                $('.btn-blue').css('background-image', 'url(' + imageRetrieved + ')');
                $('.btn-blue').css('background-size', '100% 120px');
                $('.choice').html('');
            } else {
                $('.choice').html("Upload Photo");
            }

        });

    </script>
</body>
</html>

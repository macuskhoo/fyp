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
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <link href="css/jquery.mmenu.all.css" rel="stylesheet">
    <script src="js/jquery.mmenu.min.all.js"></script>
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet" type="text/css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="js/bootbox.min.js"></script>


</head>
 <script src="js/jquery-1.8.3.min.js"></script>
<link href="css/navbar.css" rel="stylesheet">
<link href="css/navbar-fixed-top.css" rel="stylesheet">
</head>

<body> <div class="help">
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
        <div id="title">FAQ</div>
    </div>
    <div class="container" style="padding-left:0px; padding-right:0px;" >  
        <form id="contact" action="" method="post">
            <h3>Ask a question</h3>
            <fieldset>
                <input id="input" placeholder="Title" type="email">
            </fieldset>
            <fieldset>
                <textarea id="description" placeholder="Description"></textarea>
            </fieldset>
            <fieldset>
                <div  id="contact-submit" onclick="doFunction();">Submit</div>
            </fieldset>
        </form> 
    </div>

    <script>
        function doFunction() {
            var title = $('#input').val();
            var description = $('#description').val();
            if(title =="" || description==""){
              bootbox.alert("Please input your question!",function(){
                  $('.overlay').fadeIn();
              });
              
          }else{
              bootbox.alert("Your response has been recorded",function(){window.location.href='/WebApplication1/faq.jsp'});
              $("#inputTitle").val("");
              $("#describe_your_issue").val("");
          }
            
        }

    </script>
</body>
</html>

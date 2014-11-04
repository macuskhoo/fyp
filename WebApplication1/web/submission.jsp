<%-- 
    Document   : submissionhome
    Created on : Oct 22, 2014, 12:40:52 AM
    Author     : King
--%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Envision by Envisage</title>

    <!-- Bootstrap core CSS -->

    <!-- Custom styles for this template -->

    <!-- Custom styles for this template -->
    <link href="css/submissionhome.css" rel="stylesheet">
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet" type="text/css">
    <script src="js/jquery.mmenu.min.all.js"></script>
    <link href="css/jquery.mmenu.all.css" rel="stylesheet">
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
        <div id="title">Submissions</div>
    </div>
    <div class="user-profile">
        <ul>

            <li>
                <div class="as">
                    <a style="text-decoration:none;color:#000;" href="requirements.jsp">
                        <div class="sea" id="dierge">Encapsulate <br> <div class="submission">Assignment 1 - <b>Due on 27 Jan 2014</b><i class="fa fa-check" id="tick"></i></div></div>
                    </a>
            </li>
            <li>
                <div class="as">
                    <div class="reef" id="disange">Empower<br> <div class="submission">Assignment 2<i class="fa fontawesome-lock" id ="lock"></i></div></div>
                    <div>        
                    </div>
            </li>
            <li>
                <div class="as">
                    <div class="beach" id="disige">Endeavour<br> <div class="submission">Assignment 3<i class="fa fontawesome-lock" id ="lock"></i></div></div>
                    <div>        
                    </div>
            </li>
            <li>
                <div class="as">
                    <div class="dune">Envision<br> <div class="submission">Assignment 4<i class="fa fontawesome-lock" id ="lock"></i></div></div>
                    <div>        
                    </div>
            </li>
        </ul>
    </div>
    <script>
        var tick = localStorage.getItem('assignment1');
        if (tick != null) {
            if (tick.indexOf('done') > -1) {
                $('#tick').css('display', 'inline-block');
            }
        }
    </script>
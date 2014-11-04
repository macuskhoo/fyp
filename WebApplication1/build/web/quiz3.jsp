<%@page import="controller.QuizController"%>
<%@page import="entity.Quiz"%>
<%@page import="entity.Quiz"%>
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
    <link rel='stylesheet' href='css/animation.css'>
    <title>Envision by Envisage</title>

    <!-- Bootstrap core CSS -->

    <!-- Custom styles for this template -->

    <!-- Custom styles for this template -->

    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jquery.mmenu.all.css" rel="stylesheet">
    <link href="css/quiz1.css" rel="stylesheet">
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
        <div id="title">Quiz 1</div>
    </div>
<div class="lifebar1"></div>
    <div class="lifebar2"></div>
    <div class="lifebar3"></div>
    <div id="quizzie">
<h1 class="ribbon">
  <strong class="ribbon-content">Correct! Click continue!</strong>
</h1>
        <%
            Quiz q = QuizController.retrieveQuiz("3");
        %>
        <ul class="quiz-step step1 current">

            <li class="question">
                <div class="question-wrap">
                    <h2>Question #3: <%=q.getQuestion()%></h2>
                </div>
            </li>
            <li class="quiz-answer low-value" data-quizIndex="2">
                <div class="answer-wrap" id="first"> 
                    <div class="choice">A: <%=q.getOptionA()%></</div>
                </div>
            </li>
            <li class="quiz-answer high-value" data-quizIndex="4">
                <div class="answer-wrap" id="second"> 
                    <div class="choice">B: <%=q.getOptionB()%></div>
                </div>
            </li>
            <li class="quiz-answer low-value" data-quizIndex="2">
                <div class="answer-wrap" id="third"> 
                    <div class="choice">C: <%=q.getOptionC()%></div>
                </div>
            </li>
            <li class="quiz-answer low-value" data-quizIndex="2">
                <div class="answer-wrap" id="forth"> 
                    <div class="choice">D: <%=q.getOptionD()%></div>
                </div>
            </li>
        </ul>

        <div class="btn-green" id="submitBtn"> 
            <div class="choice" id="btnSubmit">Submit</div>
        </div>
        <div class="container1">
            <div class="prog">
                <div class="bar" style="width:66%;"></div>
            </div>
        </div>
        <div class="figures" style="text-align:center;padding-top:5px;">2/3</div>
    </div>
    <script src="js/quiz3.js"></script>

</body>
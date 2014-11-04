<%-- 
    Document   : faqs
    Created on : Oct 11, 2014, 2:34:10 PM
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
     <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href="css/faqs.css" rel="stylesheet">
   
    <link href="css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
    <script src="js/bootbox.min.js"></script>
        <link href="http://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet" type="text/css">
    
    
<link href="css/navbar.css" rel="stylesheet">
<link href="css/navbar-fixed-top.css" rel="stylesheet">

  </head>
  
<body>
    <div class="overlay">
        <div class="frame">
            
            <span class="close fontawesome-remove-sign" style="font-size:2em"></span>
            <br>
            <div class="title">Ask a question</div>
            <form class="form-horizontal">
        <div class="form-group">
            <label for="inputTitle" class="control-label col-xs-2"></label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="inputTitle" placeholder="Title" style="width:80%">
            </div>
        </div>
        <div class="form-group">
            <label for="inputDescription" class="control-label col-xs-2"></label>
            <div class="col-xs-10">
                <textarea class="description" id="describe_your_issue" name="describe_your_issue" placeholder="Description" style="overflow-y: hidden; overflow-x: auto; box-sizing: border-box; height: 100px; padding-bottom: 7px; width:80%; resize:none;" rows="1"></textarea>
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <div class="btn btn-primary">Submit</div>
            </div>
        </div>
    </form>
        </div>
    </div>
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
        <div id="title">FAQ</div>
    </div>
    <script>
        $(document).ready(function () {
  
  $('.faq-p').hide();
  
  
  $('h5').click(function () {
    $(this).next('.faq-p').slideToggle(500);
    $(this).siblings().next('.faq-p').slideUp(500);
    $(this).addClass('active');
    $(this).siblings('h5').removeClass('active');
    
    if($(this).children('img').attr("src") == "images/plus.png")
    {
        $(this).children('img').attr("src" , "images/minus.png")
        $(this).siblings('h5').children('img').attr("src" , "images/plus.png")
    }
    else{
       $(this).children('img').attr("src" , "images/plus.png")
       $(this).removeClass('active');
    }
  });
  
  $('.btn-orange').click(function(){
      var windowWidth = $(window).width();
      if (windowWidth <=560){
          window.location.href='askaquestion.jsp';
      }else{
           $('.overlay').fadeIn();
              $('.frame').fadeIn();
      }
      
  });
  $('.btn').click(function(){
              $('.overlay').fadeOut();
              if($('#inputTitle').val() =="" || $('.description').val()==""){
              bootbox.alert("Please input your question!",function(){
                  $('.overlay').fadeIn();
              });
              
          }else{
              bootbox.alert("Your response has been recorded");
              $("#inputTitle").val("");
              $("#describe_your_issue").val("");
          }
          });
          
          $('.close').click(function(){
              $('.overlay').fadeOut();          
          });
  
});
    </script>
<div class="container" >
      <h1 class="heading_h2_mediumblue_underlined_cst">Frequently Asked Questions</h2>
    <br />
    <h5 id="head-1" class="header-h5 clear">
        <img id="img-1" class="img" src="images/plus.png" alt="collapse" />
        <span class="question-Q">Q:</span>
        <span class="question">When will rewards be handed out?</span>
    </h5>
    <p id="faq-p1" class="faq-p radiusAndShadow">
       <span class="answer-A">A.</span> Rewards are handed out to students at the end of their final project!
    </p>
    <h5 id="head-2" class="header-h5 clear">
        <img id="img-2" class="img" src="images/plus.png" alt="collapse" />
        <span class="question-Q">Q:</span>
        <span class="question">How do I submit an existing photo?</span>
    </h5>
    <p id="faq-p2" class="faq-p radiusAndShadow">
        <span class="answer-A">A.</span>On the camera screen there will be an icon to redirect you to your photo albums when clicked. It is placed at the bottom left!
    </p>
    <h5 id="head-3" class="header-h5 clear">
        <img id="img-3" class="img" src="images/plus.png" alt="collapse" />
        <span class="question-Q">Q:</span>
        <span class="question">How many times can I do a quiz?</span>
    </h5>
    <p id="faq-p3" class="faq-p radiusAndShadow">
        <span class="answer-A">A.</span> You can attempt a quiz as many times as you like if you want to unlock achievements!
    </p>
    <h5 id="head-4" class="header-h5 clear">
        <img id="img-4" class="img" src="images/plus.png" alt="collapse" />
        <span class="question-Q">Q:</span>
        <span class="question">Can I view what badges other students have?</span>
    </h5>
    <p id="faq-p4" class="faq-p radiusAndShadow">
        <span class="answer-A">A.</span> Sure! Just click on the leaderboard and click on their name to show their existing badges, clicking on the badges will show you how to unlock it!
    </p>
    <h5 id="head-5" class="header-h5 last-h5 clear">
        <img id="img-5" class="img" src= "images/plus.png" alt="collapse" />
        <span class="question-Q">Q:</span>
        <span class="question">What if there is a tie for first place?</span>
    </h5>
    <p id="faq-p5" class="faq-p radiusAndShadow last-faq-p">
        <span class="answer-A">A.</span> In that case, don't worry! Envisage will give out two prizes for the students, so keep trying to get top!
    </p>
    <br>
    
    <a class="btn-orange" href="#">Ask a Question!</a>
    
  

  
  
</div>
</body>
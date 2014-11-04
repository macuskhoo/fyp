
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Envision by Envisage</title>


    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
    <script src="js/jquery-1.8.3.min.js"></script>

  </head>

  <body>
<div class="login">
	<h1>Login</h1>
    <form method="post" action='LoginServlet'>
    	<input type="text" name="u" placeholder="Username" required="required"/>
        <input type="password" name="p" placeholder="Password" required="required"/>
        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
    </form>
</div>
      <script>
          window.onload = function()
{
 window.localStorage.clear();
}
      </script>

  </body>
</html>

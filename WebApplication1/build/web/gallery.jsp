<!DOCTYPE html><html>
<head>
	<title>Camera</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
	<link href="css/photoswipe.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="js/bootbox.min.js"></script>
  <link href="css/navbar-fixed-top.css" rel="stylesheet">
  
        
        
	
	
</head>
<body>

<div id="Header">
	Camera
        <div class="ahome">
 <a  href="/WebApplication1/assignment1.jsp" ><i class="fa icon-remove-sign"></i></a>
 </div>
</div>

<div id="MainContent">

	
	<div id="Gallery">
	
		<div class="gallery-row">
	
			<div class="gallery-item" id="first"><a><img onclick="getAttr(this.src)" src="full/001.jpg" alt="Image 001" /></a></div>
			
			<div class="gallery-item" id="two"><a href="#"><img onclick="getAttr(this.src)" src="full/003.jpg" alt="Image 002" /></a></div>
			
			<div class="gallery-item"><a href="#"><img onclick="getAttr(this.src)" src="full/006.jpg" alt="Image 003" /></a></div>
			
		</div>

	
		<div class="gallery-row">
	
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/008.jpg" alt="Image 004" /></a></div>
			
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/009.jpg" alt="Image 005" /></a></div>
			
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/011.jpg" alt="Image 006" /></a></div>
	
		</div>
	
		<div class="gallery-row">
	
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/013.jpg" alt="Image 007" /></a></div>
			
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/014.jpg" alt="Image 008" /></a></div>
			
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/016.jpg" alt="Image 009" /></a></div>

		</div>
	
		<div class="gallery-row">
	
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/017.jpg" alt="Image 010" /></a></div>
			
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/019.jpg" alt="Image 011" /></a></div>
			
			<div class="gallery-item" style="cursor:pointer"><a href="#"><img onclick="getAttr(this.src)" src="full/001.jpg" alt="Image 012" /></a></div>
	
		</div>

	</div>
	
	
</div>	


    
    <script>
          var src = "";
            function getAttr(_src){
            src = _src
        }
        $(document).ready(function(){
          
            $('.gallery-item').click(function(){
               bootbox.dialog({
                    message: "Continue uploading this photo?",
                    buttons: {
                        continue: {
                            label: "Continue",
                            className: "btn-continue",
                            callback: function() {
                                localStorage.setItem("continue",src);
                                window.location.href = "/WebApplication1/assignment1.jsp";
                                
                            }
                        },
                        exit: {
                            label: "Exit",
                            className: "btn-exit",
                            callback: function() {
                                window.location.href = "/WebApplication1/gallery.jsp";
                            }
                        }
                    }
                });
            });
        });
    </script>

</body>
</html>
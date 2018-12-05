<!DOCTYPE html>
<html lang="en">
<head>
  <title>Oozan's</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="./shared/Header.jsp"/>

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/image1.jpg" alt="Image not available" style="height:380px;width:1400px">
    </div>

    <div class="item">
      <img src="images/images3.jpg" alt="Image not available" style="height:380px;width:1400px">
    </div>

    <div class="item">
      <img src="images/image2.jpg" alt="Image not available" style="height:380px;width:1400px">
    </div>
    
    <div class="item">
      <img src="images/images4.jpg" alt="Image not available" style="height:380px;width:1400px">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="jumbotron" style="margin-top:20px">
    <h1>BAGS</h1>      
    <p>An invitation to change inspired by nature; a new attitude towards daily urban full of new spaces where you can be yourself.</p>
  </div>
  
  <hr/> 
 <footer>
 	<div class="container">
		<div class="row">
			<div class="col-md-4 widget">
				<h2 class="widget_title green">Feedback</h2>

			</div>
			<div class="col-md-4 widget">
				<h2 class="widget_title green">Quick Links</h2>
				<ul>
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="AboutUs.jsp">About us</a></li>
					<li><a href="">Services</a></li>
					<li><a href="ContactUs.jsp">Contact us</a></li>
				</ul>
			</div>
			<div class="col-md-4 widget">
				<h2 class="widget_title green">Contact Us</h2>
				<div class="row1">Thanks for visiting our site</div>
				<div class="row2">
					<strong>Address:</strong> [ New Delhi ]
				</div>
				<div class="row3">
					<strong>Email us:</strong> sanyadhall94@gmail.com
				</div>
			
		

    <!-- Footer Elements -->
   

      <!-- Social buttons -->
      <ul class="list-unstyled list-inline text-center">
        <li class="list-inline-item">
          <a class="btn-floating btn-fb mx-1">
            <i class="fa fa-facebook"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-tw mx-1">
            <i class="fa fa-twitter"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-gplus mx-1">
            <i class="fa fa-google-plus"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-li mx-1">
            <i class="fa fa-linkedin"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-dribbble mx-1">
            <i class="fa fa-dribbble"> </i>
          </a>
        </li>
      </ul>
      <!-- Social buttons -->

    </div>
    </div>
    

 </div>
 </footer>
</body>
</html>
  
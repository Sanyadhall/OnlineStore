<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<style>

body {
  min-height: 100%;
  display: grid;
  grid-template-rows: 1fr auto;
}
.footer {
  grid-row-start: 2;
  grid-row-end: 3;
}
}
</style>

  <title>Oozan's</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="./shared/Header.jsp"/>

<br>

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/img1.jpg" alt="Image not available" style="height:600px;width:100%">
    </div>

    <div class="item">
      <img src="resources/images/img4.jpg" alt="Image not available" style="height:600px;width:100%">
    </div>

    <div class="item">
      <img src="resources/images/img5.jpg" alt="Image not available" style="height:600px;width:100%">
    </div>
    
    <div class="item">
      <img src="resources/images/image1.jpg" alt="Image not available" style="height:600px;width:100%">
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
</div>
<br>

<div class="container">
    <h1>BAGS</h1>      
    <p>An invitation to change inspired by nature; a new attitude towards daily urban full of new spaces where you can be yourself.</p>
    
    <hr/>
    <br>
    <div class="row">
    <div class="col-lg-6">
    
    
    <img src="resources/images/img3.jpg"class="img-responsive" alt="Image not available" style="height:600px; width:1000px">
    
  
  <div class="col-lg-6">
  

         <p>
         
         A Signature Surprise
    Minimalist, retro or ladylike get them
   a Signature gift in their signature style.
         </p>
         </div>
  
         </div>
  </div>

  <div class="col">
  
  <div class="col-lg-6 container">
  
 
  
  <div class="col-lg-6">
  
  <img src="resources/images/Woody3.jpg"class="img-responsive" alt="Image not available" style="height:600px; width:3600px">
     
  </div>
  </div>
  
  </div>
  
 </div>
 
 
 <br>
 <br>
 <br>
 <hr/>
 <div class="container">
 <footer class="footer">
 
 	<div class="container">
		<div class="row">
			<div class="col-md-3 widget">
				<h2 class="widget_title green">Feedback</h2>

			</div>
			<div class="col-md-3 widget">
				<h2 class="widget_title green">Quick Links</h2>
				<ul>
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="AboutUs.jsp">About us</a></li>
					<li><a href="">Services</a></li>
					<li><a href="ContactUs.jsp">Contact us</a></li>
				</ul>
			</div>
			<div class="col-md-3 widget">
				<h2 class="widget_title green">Contact Us</h2>
				<div class="row1">Thanks for visiting our site</div>
				<div class="row2">
					<strong>Address:</strong> [ New Delhi ]
				</div>
				<div class="row3">
					<strong>Email us:</strong> sanyadhall94@gmail.com
				</div>
				</div>
				<div class="col-md-3 widget">
				<h2 class="widget_title green">Follow Us</h2>
			<ul>
            <li class="col-sm-12">
              <i class="fa fa-facebook"> </i>
              <a class="btn-floating btn-fb mx-1"> Facebook
              
              </a>
             </li>
            <li class="list-inline-item col-sm-12">
                <i class="fa fa-twitter"> </i>
              <a class="btn-floating btn-tw mx-1">Twitter

              </a>
        </li>
        <li class="list-inline-item col-sm-12">
                 <i class="fa fa-google-plus"> </i>
              <a class="btn-floating btn-gplus mx-1">Google Plus</a>
        </li>
        <li class="col-sm-12">
        <i class="fa fa-linkedin"> </i>
            <a class="btn-floating btn-li mx-1"> Linkedin
            
            </a>
        
      </ul>
      </div>
      
      </div>
				
			</div>
		
			
			
			
				</footer>
		</div>	
    


 
</body>
</html>
  
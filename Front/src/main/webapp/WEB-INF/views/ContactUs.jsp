<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<style>
font-family: 'Roboto', sans-serif;

body {
  background: #D9B280;
  font-family: "Roboto", sans-serif;
}

.container {
  background: #FFFFFF;
  width: 900px;
  height: 650px;
  margin: 5% auto;
  position: relative;
}
.container .map {
  width: 45%;
  float: left;
}
.container .contact-form {
  width: 53%;
  margin-left: 2%;
  float: left;
}
.container .contact-form .title {
  font-size: 2.5em;
  font-family: "Roboto", sans-serif;
  font-weight: 700;
  color: #E65FAC;
  margin: 5% 8%;
}
.container .contact-form .subtitle {
  font-size: 1.2em;
  font-weight: 400;
  margin: 0 4% 5% 8%;
}
.container .contact-form input,
.container .contact-form textarea {
  width: 330px;
  padding: 3%;
  margin: 2% 8%;
  color: #242424;
  border: 1px solid #B7B7B7;
}
.container .contact-form input::placeholder,
.container .contact-form textarea::placeholder {
  color: #242424;
}
.container .contact-form .btn-send {
  background: #E65FAC;
  width: 180px;
  height: 60px;
  color: #FFFFFF;
  font-weight: 700;
  margin: 2% 8%;
  border: none;
</style> 

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>


<div class="container">

	<div class="map">
	<iframe src=""https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d112061.09262729759!2d77.208022!3d28.632485!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x644e33bc3def0667!" width="100%" height="650px" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	
	<div class="contact-form">
		<h3 class="title">CONTACT US</h3>
		<h5 class="subtitle">We are here assist you.</h5>
		<form action="${contextRoot}">
			<input type="text" name="name" placeholder="Your Name" />
			<input type="email" name="e-mail" placeholder="Your E-mail Adress" />
			<input type="tel" name="phone" placeholder="Your Phone Number"/>
			<textarea name="text" id="" rows="8" placeholder="Your Message"></textarea>
			<button class="btn-send">Get a Call Back</button>
		</form>
	</div>
</div>
</body>
</html>

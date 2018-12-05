<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>bag Store</title>
</head>
<body>
	
<jsp:include page="./shared/Header.jsp"/>	
<div>
<h3 align="center" style="color:#E65FAC">Login or create an Account</h3>
</div>
<hr/>
<br/>

<div class="col-lg-6">
 <h3 align="center" style="color:#E65FAC">NEW CUSTOMERS</h3>
 
 <hr/>
 
  <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
  
  <br>
  
  <div class="row">
  <div class="col-sm-12">
  
    <div class="text-center">
      <a href="signUpForm" class="btn btn-default" id="singlebutton" style="background-color:#E65FAC;color:white">
      Create Account
      </a>
    </div>
     </div>
</div>
 </div>

<div class="col-lg-6">
  <h3 align="center" style="color:#E65FAC">REGISTERED CUSTOMERS</h3>
  <hr/>
    <h6 align="center" class="text-info"> If you have an account with us,Please Log In</h6>
  <f:form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
    </div>
    <div class="row">
  <div class="col-sm-12">
    <div class="text-center">
      <button class="btn btn-default"id="singlebutton" style="background-color:#E65FAC;color:white">Login</button>
    </div>
  </div>
</div>
  </f:form>
</div>


	
</body>
</html>
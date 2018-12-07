<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Bag Store</title>
</head>
<body>
	
<jsp:include page="./shared/Header.jsp"/>	


<br/>

<div class="container">
	<h1 align="center" style="color:#E65FAC">SignUp Form</h1>
	<f:form class="form-horizontal" action="${contextRoot}/registerUser" method="post" modelAttribute="rObj">
		<div class="form-group">
			<label class="control-label col-sm-2" for="email" >Email:</label>
			<div class="col-sm-10">
			<f:input type="email" class="form-control" id="email" path="email"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="userName"> Name:</label>
			<div class="col-sm-10">
			<f:input type="text" class="form-control" id="userName" placeholder="Enter the User name" path="userName"/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="password">Password:</label>
			<div class="col-sm-10">
			<f:input type="password" class="form-control" id="password" placeholder="Enter Password" path="password"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="password2">Confirm Password:</label>
			<div class="col-sm-10">
			<f:input type="password" class="form-control" id="password2" placeholder="Confirm Password" path="password2"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="mobileNo">Mobile Number:</label>
			<div class="col-sm-10">
			<f:input type="text" class="form-control" id="mobileNo" placeholder="Enter the Mobile Number" path="mobileNo"/>
			</div>
		</div>
		<div class="text-center">
      <button class="btn btn-default"id="singlebutton" style="background-color:#E65FAC;color:white">Sign Up</button>
    </div>
    	</f:form>
  </div>

      	
      	
      

		
		

	
</body>
</html>
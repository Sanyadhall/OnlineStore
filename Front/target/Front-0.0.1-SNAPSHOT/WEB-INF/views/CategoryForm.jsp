<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
<h1 align="center">Category Form</h1>
<f:form class="form-horizontal" action="addCategoryProcess" method="post" modelAttribute="catObj">
<div class="form-group">
<label class="control-label col-sm-2" for="categoryName"> Category name:</label>
<div class="col-sm-10">
<f:input type="text" class="form-control" id="categoryName" placeholder="Enter the category name" path="categoryName"/>
</div>	
</div>

<div class="form-group">
<lable class="control-label col-sm-2" for="categoryDesc"> Category Description:</lable>
<div class="col-sm-10">
<f:input type="text" class="form-control" id="categoryDesc" placeholder="Enter the category Description" path="categoryDesc"/>
</div>
</div>
<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Add Category</button>
      </div>
    </div>
 </f:form>
</div>
	
</body>
</html>
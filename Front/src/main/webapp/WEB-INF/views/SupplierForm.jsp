<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
<h2 align="center">Supplier Form</h2>
<s:form class="form-horizontal" action="${contextRoot}/addSupplierProcess" method="post" modelAttribute="supObj">

<c:if test="${not empty operations}">
<div class="form-group">
<label class="control-label col-sm-2" for="supplierId"> Supplier Id:</label>
<div class="col-sm-10">
<s:input type="text" class="form-control" id="supplierId" path="supplierId" readonly="true"/>
</div>
</div>
</c:if>


<div class="form-group">
<label class="control-label col-sm-2" for="supplierName"> Supplier Name:</label>
<div class="col-sm-10">
<s:input type="text" class="form-control" id="supplierName" placeholder="Enter Supplier Name" path="supplierName"/>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" for="supplierAddr"> Supplier Address:</label>
<div class="col-sm-10">
<s:input type="text" class="form-control" id="supplierAddr" placeholder="Enter Supplier Name" path="supplierAddr"/>
</div>
</div>

<div class="form-group">
  <div align="center" >
  <button type="submit" class="btn btn-default"> Add Supplier </button>
  </div>
</div>
</s:form>
</div>	
</body>
</html>
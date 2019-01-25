<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://"src/main/webapp/WEB-INF/views/ViewCategories.jsp"www.w3.org/TR/html4/loose.dtd">
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

<br>
<c:if test="${not empty msg}">
<div class="alert alert-success">
  <strong>${msg}</strong>
</div>
</c:if>

<div class="container">
<div class="table-responsive">
<table class="table">
<thead>
<tr>
       <th>Category Name</th>
       <th>Category Desc</th>
       <th>Delete</th>
       <th>Edit</th>
</tr>
</thead>
 <tbody>
 <c:forEach items="${categories}" var="cObj">
 <tr>
    <td>${cObj.categoryName}</td>
    <td>${cObj.categoryDesc}</td>
    <td>
    <a href="${contextRoot}/delete/${cObj.categoryId}">
    <span class="glyphicon glyphicon-trash"></span>
    </a>
    </td>
    <td>
    <a href="${contextRoot}/edit/${cObj.categoryId}">
    <span class="glyphicon glyphicon-edit"></span>
    </a>
    </td>
 </tr>
 </c:forEach>
 </tbody>
</table>
</div>
</div>
</body>
</html>
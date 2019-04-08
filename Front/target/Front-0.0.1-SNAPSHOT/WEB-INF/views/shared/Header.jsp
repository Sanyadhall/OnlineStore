<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" scope="session"/>


<nav class="mainNav navbar navbar-expand-md justify-content-center navbar-inverse">
 <div class="container-fluid">
 <div align="center">

      <br>
      
        <a class="navbar-brand-justify" href="home">Oozan's</a>
       
     
</div>
<br>

    <div  style="height:50px" class="navbar-header container-fluid">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="container">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li><a href="${contextRoot}/aboutUs">About Us</a> </li>
        <li class="active"><a href="${contextRoot}/home">Home</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop By Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        
        <c:forEach items="${sessionScope.categories}" var="catObj">
         <li><a href="${contextRoot}/getAllProductsByCategory/${catObj.categoryId}">${catObj.categoryName}</a></li>
          </c:forEach>
        </ul>
      </li>
      
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin Options
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${contextRoot}/addCategory">Add Category</a></li>
          <li><a href="${contextRoot}/viewAllCategories">View All Categories</a></li>
          <li><a href="${contextRoot}/addSupplier">Add Supplier</a></li>
          <li><a href="${contextRoot}/viewAllSuppliers">View All Suppliers</a></li>
          <li><a href="${contextRoot}/addProducts">Add Product</a></li>
          <li><a href="${contextRoot}/viewAllProducts">View All Products</a></li>
        </ul>
      </li>
        
        
        <li><a href="${contextRoot}/contactUs">Contact Us</a></li>
        
      </ul>
     

      <ul class="nav navbar-nav navbar-right">
      
      
      
     	<sec:authorize access="isAnonymous()">
        <li><a href="${contextRoot}/login"><span class="glyphicon glyphicon-user"></span></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
         </sec:authorize>
         
         <sec:authorize access="isAuthenticated()">
         	<li  style="color:white">Welcome : ${sessionScope.userObject.userName}</li>
         	<li><a href="${contextRoot}/perform-logout">Logout</a></li>
         	<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
       		<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
       	</sec:authorize>	 
      </ul>
   
      
  </div>
  
    </div>
  </div>
</nav>
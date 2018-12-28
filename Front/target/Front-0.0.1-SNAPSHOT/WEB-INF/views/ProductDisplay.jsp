<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<sp:url value="/resources/images" var="images"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
.product-grid{font-family:Raleway,sans-serif;text-align:center;padding:0 0 72px;border:1px solid rgba(0,0,0,.1);overflow:hidden;position:relative;z-index:1;display:block}
.product-grid .product-image{position:relative;transition:all .3s ease 0s}
.product-grid .product-image a{display:inline-block}
.product-grid .product-image img{width:100%;height:auto}
.product-grid .pic-1{opacity:1;transition:all .3s ease-out 0s}
.product-grid:hover .pic-1{opacity:1}
.product-grid .pic-2{opacity:0;position:absolute;top:0;left:0;transition:all .3s ease-out 0s}
.product-grid:hover .pic-2{opacity:1}
.product-grid .social{width:150px;padding:0;margin:0;list-style:none;opacity:0;transform:translateY(-50%) translateX(-50%);position:absolute;top:60%;left:50%;z-index:1;transition:all .3s ease 0s}
.product-grid:hover .social{opacity:1;top:50%}
.product-grid .social li{display:inline-block}
.product-grid .social li a{color:#fff;background-color:#333;font-size:16px;line-height:40px;text-align:center;height:40px;width:40px;margin:0 2px;display:block;position:relative;transition:all .3s ease-in-out}
.product-grid .social li a:hover{color:#fff;background-color:#ef5777}
.product-grid .social li a:after,.product-grid .social li a:before{content:attr(data-tip);color:#fff;background-color:#000;font-size:12px;letter-spacing:1px;line-height:20px;padding:1px 5px;white-space:nowrap;opacity:0;transform:translateX(-50%);position:absolute;left:50%;top:-30px}
.product-grid .social li a:after{content:'';height:15px;width:15px;border-radius:0;transform:translateX(-50%) rotate(45deg);top:-20px;z-index:-1}
.product-grid .social li a:hover:after,.product-grid .social li a:hover:before{opacity:1}


.product-grid .product-content{background-color:#fff;text-align:center;padding:12px 0;margin:0 auto;position:absolute;left:0;right:0;bottom:-27px;z-index:1;transition:all .3s}
.product-grid:hover .product-content{bottom:0}
.product-grid .title{font-size:13px;font-weight:400;letter-spacing:.5px;text-transform:capitalize;margin:0 0 10px;transition:all .3s ease 0s}
.product-grid .title a{color:#828282}
.product-grid .title a:hover,.product-grid:hover .title a{color:#ef5777}
.product-grid .price{color:#333;font-size:17px;font-family:Montserrat,sans-serif;font-weight:700;letter-spacing:.6px;margin-bottom:8px;text-align:center;transition:all .3s}
.product-grid .price span{color:#999;font-size:13px;font-weight:400;margin-left:3px;display:inline-block}
.product-grid .add-to-cart{color:#000;font-size:13px;font-weight:600}
@media only screen and (max-width:990px){.product-grid{margin-bottom:40px}

}
</style>
</head>

<body>

<jsp:include page="./shared/Header.jsp"/>

<br>


  <div class="container">
  
  
  <h1 align="center" style="color:#E65FAC">${products[0].category.categoryName}</h1>
  <hr/>
  <div class="col">
     
     <br>
     <br>
     <c:forEach items="${products}" var="pObj">
 
        <div class="col-md-4 ">
        	
        	 <br>
           <br> 
            <div class="product-grid d-inline-block">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="${images}/${pObj.imgName}">
                         <img class="pic-2" src="${images}/${pObj.imgName2}">
                        
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="${contextRoot}/addToCart/${pObj.productId}" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>

              
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="#">${pObj.productName}</a></h3>
                    <div class="price">
                        <span>Rs.${pObj.price}</span>
                    </div>
                    <a class="add-to-cart" href=""> Add </a>
                </div>
            </div>
            
            
 
        </div>
        </c:forEach>
        </div>
    </div>       
       
       
      

</body>
</html>
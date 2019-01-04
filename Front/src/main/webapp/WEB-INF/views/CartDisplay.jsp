<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!------ Include the above in your HEAD tag ---------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 -->
<title>Bag Store</title>

</head>
<body>



<jsp:include page="./shared/Header.jsp"/>

<br/>

 	<h1 align="center" style="color:#E65FAC"> Shopping Bag</h1>
 	
 	<br/>
 	<br/>
 	
 	<hr/>

<div class="container">


	
	<c:choose>
		<c:when test="${not empty status}">
			<div class="alert alert-danger">
				<h3>${msg}</h3>
			</div>
		</c:when>
	<c:otherwise>
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    
                    <c:forEach items="${cartItems}" var="itemObj">
                    <tr>
                        <td class="col-sm-5 col-md-4">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" 
                            src="${contextRoot}/resources/images/${itemObj.product.imgName}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${itemObj.product.productName}</a></h4>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <div class="row">
                        <a type="button" href="${contextRoot}/decreaseQuantity/${itemObj.itemId}" class="quantity-left-minus btn btn-default btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </a>
                        ${itemObj.quantity}
                        <a type="button" href="${contextRoot}/increaseQuantity/${itemObj.itemId}" class="quantity-right-plus btn btn-default btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </a>
                                        
                                        </div>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${itemObj.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>
                        	${itemObj.quantity*itemObj.price}
                        	
                        	
                        </strong></td>
                        
                             
                        
                        <td class="col-sm-1 col-md-1">
                        <a href="${contextRoot}/removeItem/${itemObj.itemId}" type="button" class="btn btn-default">
                         <span class="glyphicon glyphicon-trash"></span>                      
                         </a>
                         </td>
                        
                    </tr>
                    </c:forEach>
                    
                    
                    
                    
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>Rs. ${total}</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>Rs. 100</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>Rs. ${total+100}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="${contextRoot}/continueShopping" type="button" class="btn btn-default" style="background-color:#970576;color:white">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a></td>
                        <td>
                     <a href="${contextRoot}/checkout"  type="button" class="btn btn-default"  style="background-color:#E65FAC;color:white">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        
                        </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </c:otherwise>
    </c:choose>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <td></td>
                        <td></td>
                        <th>Quantity</th>
                        <td></td>
                        <td></td>
                        <td></td>
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
                        <td>
                        <td>
                        ${itemObj.quantity}
                        </td>
                        </td>
                        </td>
                      
                       
                        <td class="col-sm-1 col-md-1 text-center">
                        
                        
                         <td>
                          <td>
                           <td>
                          <strong>${itemObj.price}</strong>
                         </td>
                         </td>
                          </td>
                         
                         
                         
                         
                         
                       
                             
                          
                        <td class="col-sm-1 col-md-1 text-center"><strong>
                           
                        	${itemObj.quantity*itemObj.price}
                        	
                        	
                        </strong></td>
                        
                             
                        

         
                        
                    </tr>
                    </c:forEach>
           
                    
                    
                    
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <td><h5>Subtotal</h5></td></td>
                        <td class="text-right"><h5><strong>Rs. ${total}</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>Rs. 100</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>Rs. ${total+100}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                     <a href="${contextRoot}/order"  type="button" class="btn btn-lg btn-block" style="background-color:#E65FAC;color:white" >
                            Order <span class="glyphicon glyphicon-play"></span>
                        
                        </a>
                        
                        
                                
                    
                        </td>
                    </tr>
                </tbody>
                            
          <div class="container">
            <h1 align="justify" style="color:#E65FAC">Receipt</h1>
         <h4>Address Details</h4>
          <address>	
      
            
    	    ${addressObj.houseNumber}
    	    
    	    ${addressObj.locality} 
    	    ${addressObj.city}
    	    ${addressObj.state}
    	    ${addressObj.pinCode}
    	     ${addressObj.country}
    	  
         </address>     
         </div>
                    
            </table>
        </div>
    </div>
    
    <hr/>
    
    
    

</body>
</html>
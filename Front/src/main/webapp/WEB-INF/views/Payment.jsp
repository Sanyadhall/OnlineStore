<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

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
  
  <div class="container">
  
  
 
   <div class="col-md-10 offset-md-2">
                    <span class="anchor" id="formPayment"></span>
                    <hr class="my-5">

                    <!-- form card cc payment -->
                    <div class="card card-outline-secondary">
                        <div class="card-body">
                            <h3 class="text-center" style="color:#E65FAC">Credit Card Payment</h3>
                            <hr>
                            <div class="alert alert-info">
                                <a class="close font-weight-normal initialism" data-dismiss="alert" href="#"><samp>×</samp></a> 
                                CVC code is required.
                            </div>
                            
                            
                            <f:form class="form-horizontal" action="${contextRoot}/addToCart/processOrder" method="post" modelAttribute="orderObj">
                                <div class="form-group">
                                    <label for="nameOnCard">Card Holder's Name</label>
                                    <f:input type="text" class="form-control" id="nameOnCard" path="nameOnCard" pattern="\w+ \w+.*" title="First and last name" required="required"></f:input>
                                </div>
                                <div class="form-group">
                                    <label for="cardNumber">Card Number</label>
                                    <f:input type="text" class="form-control" path="cardNumber" autocomplete="off" maxlength="20" pattern="\d{16}" title="Credit card number" required=""></f:input>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-12">Card Exp. Date</label>
                                    <div class="col-md-4">
                                        <f:select class="form-control" path="month" size="0">
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                        </f:select>
                                    </div>
                                    <div class="col-md-4">
                                        <f:select class="form-control" path="year" size="0">
                                            <option>2018</option>
                                            <option>2019</option>
                                            <option>2020</option>
                                            <option>2021</option>
                                            <option>2022</option>
                                        </f:select>
                                    </div>
                                    <div class="col-md-4">
                                   
                                       
       <f:input type="text" class="form-control" path="cvv" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required="" placeholder="CVV" />
                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <label class="col-md-12">Amount</label>
                                </div>
                                <div class="form-inline">
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text"></span></div>
                                          
                                        <f:input path="totalPrice" type="text" class="form-control text-right" readonly="true"/> 
                                        <div class="input-group-append"><span class="input-group-text"></span></div>
                                    </div>
                                </div>
                                <hr>
                            <div class="form-group">
                                    <div class="text-center" >
                                        <button type="submit" class="btn btn-lg btn-default btn-block" style="background-color:#E65FAC;color:white">Submit</button>
                                    </div>
                               
                              </div>
                                </div>
                              
                            </f:form>
                        </div>
                    </div>
                    <!-- /form card cc payment -->
                
          </div>
          </div>
          </body>
          </html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,com.project.BeanAdd" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

	<%if(session.getAttribute("name")==null || (!session.getAttribute("name").equals("admin") && !session.getAttribute("name").equals("checker")))
		response.sendRedirect("login.jsp");%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 

<title>Set Rules And Category</title>
</head>
<body class="header" style=" height:100vh; background-image:url('https://as1.ftcdn.net/jpg/02/12/24/60/500_F_212246099_sVEyvJRPw4IFOf5spHuDF1mAyUU9ePrN.jpg'); background-position: center;background-repeat: no-repeat;background-size: cover;">
<div >
	<%if(session.getAttribute("name").equals("admin")) {%>
	<h1><a href="weladmin.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h1>
	<%}else{ %>
	<h1><a href="welchecker.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h1>
	<%} %>
</div>
<br><br>
<div class="container-fluid " >
		<div class="row justify-content-center" >
			<div class="col-12 col-sm-6 col-md-3">
			
				<form class="form-container" action="makerules" method="post">
				
				<div class="form-group">
				    
				    <input type="text" class="form-control" name="vendorcode" aria-describedby="emailHelp" placeholder="Type vendor code" required autofocus>
				  </div>
				  
					<div class="form-group">
				    <input type="text" class="form-control" name="category" aria-describedby="emailHelp" placeholder="Type category name" required>
				    
				  </div>
				
				  <div class="form-group">
				    
				    <input type="number" class="form-control" name="threshold" aria-describedby="emailHelp" placeholder="Type threshold value" required>
				    <small id="emailHelp" class="form-text text-muted">Minimum number of stock to notify refill</small>
				  </div>
				  <div class="form-group">
				    
				    <input type="number" class="form-control" name="enotify" id="exampleInputPassword1" placeholder="Type number of days"reuired>
				    <small id="emailHelp" class="form-text text-muted">Number of days before expiry date to notify</small>
				  </div>
				  
				  <button class="btn btn-lg btn-primary btn-block" type="submit">Set Rules</button>
				</form>
				
			</div>
			
		</div>
		
		<%if(request.getAttribute("rulemake") != null){
	boolean result=(Boolean)request.getAttribute("rulemake"); 
	if(result==true){%>
	<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Rules have been set for the category</strong> You will be notified.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <%
  request.setAttribute("rulemake",null);}else{%>
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Item not found in shelf.</strong> Checker has not moved the item yet.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
	<%request.setAttribute("rulemake",null);}  }%>
  
</div>
		
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
		
</body>
</html>
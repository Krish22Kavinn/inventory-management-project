<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,com.project.BeanAdd" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%
	if(session.getAttribute("name")==null || !session.getAttribute("name").equals("admin"))
		response.sendRedirect("login.jsp");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 

<title>Generate Invoice</title>
</head>
<body style=" height:100vh; background-image:url('https://www.freeimageslive.com/galleries/workplace/office2/pics/tax_invoice.jpg'); background-position: center;background-repeat: no-repeat;background-size: cover;">
	<div class="header">
	<header><h2><a href="weladmin.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h2></header>
</div>
<br>
<div class="container-fluid ">
		<div class="row justify-content-center" >
			<div class="col-12 col-sm-6 col-md-3">
			
				<form class="form-container" action="invoice" method="post" >
				
				<div class="form-group">
				    
				    <input type="text" class="form-control" name="vendorcode" aria-describedby="emailHelp" placeholder="Type vendor code" required autofocus>
				  </div>
				  
					<div class="form-group">
				    <input type="date" class="form-control" name="date" aria-describedby="emailHelp" placeholder="Select a Date" required>
				  </div>
				
				  
				  <button class="btn btn-lg btn-primary btn-block"  type="submit">Generate Invoice</button>
				</form>
				
			</div>
			
</div>
		
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<br>
<% if(session.getAttribute("naani")!= null && session.getAttribute("naani").equals("fail")){ %>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Match Not Found</strong> Enter correct details again.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>		
  </div>
  <%session.setAttribute("naani","boom");} else if(session.getAttribute("naani")!= null &&  session.getAttribute("naani").equals("pass")){%>
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Match Found</strong> Click on button below to view invoice
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>		
  </div>
  <br><br>
  <a href="displayinvoice.jsp" target="_blank" ><button class="btn btn-md btn-primary btn-block"  type="submit">Generate Invoice</button></a>
  <%session.setAttribute("naani","boom");} %>
</body>
</html>
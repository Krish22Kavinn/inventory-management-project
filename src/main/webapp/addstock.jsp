<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
	if(session.getAttribute("name")==null || !session.getAttribute("name").equals("admin"))
		response.sendRedirect("login.jsp");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="addstockcss.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title>Add Stock</title>
</head>
<body class="text-center"  style=" height:100vh; background-image:url('https://specials-images.forbesimg.com/imageserve/1124405618/960x0.jpg?fit=scale'); background-position: center;background-repeat: no-repeat;background-size: cover;">
<div class="header">
	<header><h1><a href="weladmin.jsp">Back to Dashboard</a></h1></header>
</div>
	<div class="img"></div>
		<form class="form-signin" action="makestock" method="post" >
			<h1 class="h3 mb-3 font-weight-normal">Enter Stock Details</h1><br>
			<input type="number" name="vendorcode" class="form-control" placeholder="Vendor Code" required autofocus>
			<input type="text" name="category" class="form-control" placeholder="Category" required >
			<input type="text" name="description" class="form-control" placeholder="Description" required>
			<input type="number" name="count" class="form-control" placeholder="Count" required>
			<input type="number" name="cost" class="form-control" placeholder="Cost" required>
			<input type="text" name="currency" class="form-control" placeholder="Currency" required autofocus>
			<br><strong>Date of Expiry</strong><input type="date" name="expiry" class="form-control" placeholder="Date of Expiry" required>
			
			<br>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Add Stock</button>
		</form>

		
			
</body>
</html>
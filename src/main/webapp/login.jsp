<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 
<link rel="stylesheet" href="logincss.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body style=" height:100vh; background-image:url('https://smartmoneymamas.com/wp-content/uploads/2019/01/Online-Grocery-Ordering-Online.jpg'); background-position: center;background-repeat: no-repeat;background-size: cover;">

	 <div class="container-fluid " >
		<div class="row justify-content-center" >
			<div class="col-12 col-sm-6 col-md-3">
			
				<form class="form-container" action="checklogin" method="post">
				
				
				  <div class="form-group">
				    <label for="exampleInputEmail1">User Name</label>
				    <input type="text" class="form-control" name="name" aria-describedby="emailHelp" placeholder="Type your username">
				    <small id="emailHelp" class="form-text text-muted">Authorization Required.</small>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Type your password">
				  </div>
	
				  <input type="submit"  value="submit">
				</form>
			</div>
		</div>
	</div>  


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	
</body>
</html>
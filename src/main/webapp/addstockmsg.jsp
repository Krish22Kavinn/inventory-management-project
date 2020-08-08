<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Stock</title>
<style>
	body{
	font-family: 'Roboto', sans-serif;
	color: #000;
}

#container{
	width:800px;
	margin:50px auto;
	padding: 20px;
	width:50%;
}
#container h2{
	text-align:center;
	color:#045;
}

#quoteContainer{
	width:75%;
	background: #fff;
	padding:10px;
	margin:30px auto;
	text-align: center;
  height:70px;
}
#buttonContainer{
	width: 100%;
	text-align: center;
}
#quoteButton{
	width:200px;
	margin-top: 10px;
	border:2px solid #46b8da;
	color:#045;
	font-family: inherit;
	font-weight: bold;
	padding:5px;
	text-decoration: none;
	text-align: center;
}

#quoteButton:hover{
	cursor:pointer;
	background:#09c;
	color: #fff;	
}
#quoteButton:active{
	cursor: pointer;
}
#quoteButton{
	display: inline-block;
}



/*MEDIA QUERIES*/
@media screen and(max-width:760px){
	#quoteButton,#addNew{
		display: block;
	}
}
</style>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
</head>
<body style=" height:100vh; background-image:url('https://image.freepik.com/free-photo/grocery-cart-with-light-green-handles-white-isolated-background-close-up_120739-593.jpg'); background-position: center;background-repeat: no-repeat;background-size: cover;">
	<div id="container">
		<%if((Boolean)request.getAttribute("success")) {%>
		<h2>Item added to stock successfully</h2>
		<%}else{ %>
		<h2>Failed to add item. Try again</h2>
		<%}%>
			
				
			<div id="buttonContainer">
				<a href="addstock.jsp" id="quoteButton">Add Stock Again</a>
		


	</div>
</body>
</html>
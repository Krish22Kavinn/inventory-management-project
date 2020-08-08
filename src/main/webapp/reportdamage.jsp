<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 

<title></title>
</head>
<body>
<div class="header">
	<header><h2><a href="welchecker.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h2></header>
</div>
<br><br>
	<div class="container-fluid " >
		<div class="row justify-content-center" >
			<div class="col-12 col-sm-6 col-md-3">
			
				<form class="form-container" action="reportdamage" method="post">
				
				<div class="form-group">
				    
				    <input type="text" class="form-control" name="vendorcode" aria-describedby="emailHelp" placeholder="Type vendor code" required autofocus>
				  </div>
				  
					<div class="form-group">
				    <input type="text" class="form-control" name="description" aria-describedby="emailHelp" placeholder="Type product description" required>
				    
				  </div>
				
				  <div class="form-group">
				    
				    <select class="form-control" name="dstatus" value="warehouse"><option value="warehouse">In Warehouse</option><option value="transport">During Transport</option><option value="shelf">In Shelf</option></select>
				    <small id="emailHelp" class="form-text text-muted">Mode of Damage</small>
				  </div>
				  
				  <button class="btn btn-lg btn-primary btn-block" type="submit">Report Damage</button>
				</form>
				
			</div>
			
		</div>
		
		<%if(request.getAttribute("reported")!= null && (Boolean)request.getAttribute("reported")==true) {%>
		<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Reported as Damaged</strong>Admin will be notified
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  </div>
  <%request.setAttribute("reported",null);} %>
  <%if(request.getAttribute("reported")!= null && (Boolean)request.getAttribute("reported")==false) {%>
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Problem reporting item</strong>Enter the details correctly
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  </div>
  <%request.setAttribute("reported",null);} %>
</body>
</html>
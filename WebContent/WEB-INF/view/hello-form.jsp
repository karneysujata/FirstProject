<html>
	<head>
		<title>LOGIN FORM</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
		<div class="container-fluid">
      		<div class="row jumbotron">
       		 	<div class="col-sm-12 text-center">
       		 		<h1 class="hcolor"> Fill the form below to get registered </h1>
					<form action="processformv2" method ="GET" >
						<div class="form-group">
							<label>Name:</label>
							<input  type="text" name="Studentname" placeholder="enter full name" />
						</div>
						<div class="form-group">
							<label>Email:</label>
							<input  type="text" name="email" placeholder="enter emailaddress" />
						</div>
						<div class="form-group">
							<label>Contact num:</label>
							<input  type="text" name="cellnum" placeholder="enter your contact number" />
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
			</div>
		</div>
	</body>
</html>
<html>
	<head>
		<title>LOGIN FORM</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
		<div class="h-100 row align-items-center">
       		 	<div class="col-sm-12 text-center ">
       		 		<h1 class="hcolor "> Fill the form below to get registered </h1>
					<form action="processform" method ="GET" >
						<div class="form-group">
							<label>Name:</label>
							<input  type="text" name="Studentname" placeholder="enter registered name" />
						</div>
						<div class="form-group">
							<label>Password:</label>
							<input  type="password" name="Password" />
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
			</div>
	</body>
</html>
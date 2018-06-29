<html>
	<head>
		<title>LOGIN FORM</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
		<!-- Navigation bar -->
		<div id="nav-placeholder">
			<nav class="navbar navbar-expand-lg navbar-custom ">
			  <img class="img-responsive" width = "50px" src="${pageContext.request.contextPath}/resources/images/ki.png" alt="lk">
		      <a class="navbar-brand acolor" href="#">SunRisers</a>
		      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <form class="form-inline my-2 my-lg-0">
		        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		      </form>
		      <div class="collapse navbar-collapse"id="navbarSupportedContent">
		        <ul class="navbar-nav ml-auto">
		          <li class="nav-item active">
		            <a class="nav-link acolor" href="#">Home <span class="sr-only">(current)</span></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="#">Signup</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="login/showform">Login</a>
		          </li>
		        </ul>
		      </div>
		    </nav>
		</div>
		<div class="h-100 row align-items-center">
       		 	<div class="col-sm-12 text-center ">
       		 		<h1 class="hcolor "> Login Here </h1>
					<form action="processform" method ="GET" >
						<div class="form-group">
							<label>Name:</label>
							<input  type="text" name="Studentname" placeholder="enter registered name" />
						</div>
						<%--have to cut password DB dint include password field will update soon 
						<div class="form-group">
							<label>Password:</label>
							<input  type="password" name="Password" />
						</div>
						--%>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
			</div>
	</body>
</html>
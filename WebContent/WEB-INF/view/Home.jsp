z<html>
	<head>
		<title>Spring learning home page</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
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
		            <a class="nav-link acolor" href="student/showform">Signup</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="login/showform">Login</a>
		          </li>
		        </ul>
		      </div>
		    </nav>
		</div>
		<div> </div>
		<div class="body">
		<div class="mt-5" > 
       		 	<div class="col-sm-12 text-center  pt-5 pb-5">
					<h1>Welcome to my first web page</h1>
					<hr>
					<p> Iam still developing this website by leaning some topics and practicing them here.</p> 
				</div>
			</div>
	</div>
	</body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Spring learning home page</title>
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
		            <a class="nav-link acolor" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="${pageContext.request.contextPath}/student/showform">Signup</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="${pageContext.request.contextPath}/login/showform">Login</a>
		          </li>
		        </ul>
		      </div>
		    </nav>
		</div>
		
		<div class="container">
      		<div class="h-100 row align-items-center">
					<form:form action="processform" modelAttribute="student" method="POST">
						<form:hidden path="id"/>
						First Name(*):<form:input path="firstname"/> 
						<form:errors path="firstname" cssClass="error"></form:errors>
						<br></br>
						Last Name(*):<form:input path="lastname"/>
						<form:errors path="lastname" cssClass="error"></form:errors><br>	
						<br>
						Email ID:<form:input path="email"/> 
						<form:errors path="email" cssClass="error"></form:errors>	
						<br></br>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</body>
	
						
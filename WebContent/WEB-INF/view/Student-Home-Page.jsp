<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Student confirmation</title>
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
		      <div class="collapse navbar-collapse"id="navbarSupportedContent">
		        <ul class="navbar-nav ml-auto">
		          <li class="nav-item active">
		            <a class="nav-link acolor" href="#">Mycourses <span class="sr-only">(current)</span></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="#">profile</a>
		          </li>
		        </ul>
		      </div>
		    </nav>
		</div>
		<div class="col-sm-12 text-center">
			 <form:form action="processform" modelAttribute="login">
		       Search courses:<form:input path="search"/>
						<form:errors path="search" cssClass="error"></form:errors><br>	
		        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		      </form:form>
		  </div>
	</body>
</html>
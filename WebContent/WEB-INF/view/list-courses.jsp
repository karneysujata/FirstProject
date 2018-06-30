<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Courses page</title>
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
		            <a class="nav-link acolor" href="${pageContext.request.contextPath}/course/list">Mycourses <span class="sr-only">(current)</span></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link acolor" href="${pageContext.request.contextPath}/student/liststudent">profile</a>
		          </li>
		        </ul>
		      </div>
		    </nav>
		</div>
		<div class= "container">
			<div class="row login" >
				<div class="col-sm-6">
					<table>
							<tr>
								<th class="pr-5">Course Id</th>
								<th>Course Name</th>
							
							</tr>
							
							<!-- loop over and print our customers -->
							<c:forEach var="temp" items="${courses}">
							
								<tr>
									<td> ${temp.id} </td>
									<td> ${temp.title} </td>
									
								</tr>
							
							</c:forEach>
									
						</table>
					</div>
				</div>
			</div>
	</body>
</html>
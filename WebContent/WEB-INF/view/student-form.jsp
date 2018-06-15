<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Spring learning home page</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
		<div class="container">
      		<div class="h-100 row align-items-center">
      			<div class="col-sm-5">
      				<img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/signup.png" alt="Image of signup">
      			</div>
       		 	<div class="col-sm-7 text-center">
					<h3> SignUp here </h3>
					<h5> Interesting stuff waiting for you </h5>
					<hr>
       		 		<form:form action="processform" modelAttribute="student">
						First Name:<form:input path="firstname"/> 
						<br></br>
						Last Name:<form:input path="lastname"/> <br>
						<br>
						Email ID:<form:input path="email"/> 
						<br></br>
						Password:<form:input  type="password" path="password"/> 
						<br></br>
						I am : 
						Male<form:radiobutton path="gender" value="Male"/>
						Female<form:radiobutton path="gender" value="Female"/>
						<br></br>
						Country:<form:select path="country">
							<form:option value="India" label="India"/>
							<form:option value="USA" label="USA"/>
							<form:option value="canada" label="canada"/>
							<form:option value="Australia" label="Australia"/>
							<form:option value="France" label="France"/>
						</form:select>
						<br></br>
						Select your favourite programming Language:
						Java:<form:checkbox path="favlanguage" value="java"/>
						Python:<form:checkbox path="favlanguage" value="python"/>
						C:<form:checkbox path="favlanguage" value="c"/>
						C#<form:checkbox path="favlanguage" value="c#"/>
						<br></br>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</body>
	
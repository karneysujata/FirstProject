<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Spring learning home page</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
		<div class="container-fluid">
      		<div class="row jumbotron">
       		 	<div class="col-sm-12 text-center">

       		 		<form:form action="processform" modelAttribute="student">
						First Name:<form:input path="firstname"/> 
						<br></br>
						Last Name:<form:input path="lastname"/> <br>
						<br>
						Country:<form:select path="country">
							<form:option value="India" label="India"/>
							<form:option value="USA" label="USA"/>
							<form:option value="canada" label="canada"/>
							<form:option value="Australia" label="Australia"/>
							<form:option value="France" label="France"/>
						</form:select>
						<br></br>
						Your Favorite Language
						Java:<form:radiobutton path="favlanguage" value="java"/>
						Python:<form:radiobutton path="favlanguage" value="python"/>
						C:<form:radiobutton path="favlanguage" value="c"/>
						C#<form:radiobutton path="favlanguage" value="c#"/>
						<br></br>
						Testing checkbox:
						Java:<form:checkbox path="os" value="java"/>
						Python:<form:checkbox path="os" value="python"/>
						C:<form:checkbox path="os" value="c"/>
						C#<form:checkbox path="os" value="c#"/>
						<br></br>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</body>
	
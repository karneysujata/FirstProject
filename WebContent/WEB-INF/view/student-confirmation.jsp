<html>
	<head>
		<title>Student confirmation</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
		<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
	</head>
	<body>
		<h1>student ${student.firstname} ${student.lastname} is confirmed </h1>
		<br></br>
		<h1>your country is ${student.country} </h1>
		<br></br>
		<h1>your favorite language is ${student.favlanguage} </h1>
		<br></br>
		<h1>your os language is ${student.os} </h1>
		
	</body>
</html>
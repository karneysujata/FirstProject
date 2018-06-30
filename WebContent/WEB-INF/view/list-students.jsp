<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>
		Students- List
	</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mycss.css">
	<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
</head>
<body>
	<h1>Below is the list of all students registered. To update your Profile click update</h1>
	<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th> Email </th>	
					<th> Action</th>		
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="temp" items="${students}">
					<c:url var = "updateLink" value ="/student/UpdateForm">
						<c:param name = "studentid" value = "${temp.id }" />
					</c:url>
					<tr>
						<td> ${temp.firstname} </td>
						<td> ${temp.lastname} </td>
						<td>${temp.email}</td>	
						
						<td><a href = "${updateLink}"> Update</a></td>
					</tr>
					
				</c:forEach>
				
						
			</table>
</body>
</html>
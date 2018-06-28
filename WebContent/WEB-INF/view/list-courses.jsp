<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Courses page</title>
	</head>
	<body>
		Courses Coming soon
		<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
				
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="temp" items="${courses}">
				
					<tr>
						<td> ${temp.id} </td>
						<td> ${temp.title} </td>
						
					</tr>
				
				</c:forEach>
						
			</table>
	</body>
</html>
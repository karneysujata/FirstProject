<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	jhdgh
</head>
<body>
	<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
				
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="temp" items="${students}">
				
					<tr>
						<td> ${temp.firstname} </td>
						<td> ${temp.lastname} </td>
						
					</tr>
				
				</c:forEach>
						
			</table>
</body>
</html>
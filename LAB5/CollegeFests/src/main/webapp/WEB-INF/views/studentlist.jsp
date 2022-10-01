<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fest Record List</title>
</head>
<style>
table, th, td {
	border: 1px solid black;
	text-align:center
}
</style>
<body>
	<%-- <p>${student }</p>--%>

	<div>
	 <center>
	 	<h1> <a href="/CollegeFests/student/add">Add Student</a></h1>	 <br> <br>
     </center>
		
	</div>

	<table class="table" style="width: 100%">
		<tr>
			<th>Student Id</th>
			<th>Name</th>
			<th>Department</th>
			<th>Country</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${student }" var="student">
			<tr>
				<td>${student.id }</td>
				<td>${student.name }</td>
				<td>${student.department }</td>
				<td>${student.country }</td>
				<td><a href="/CollegeFests/student/update/${student.id }">Update</a>
					<a href="/CollegeFests/student/delete/${student.id }">Delete</a></td>
			</tr>

		</c:forEach>
	</table>
	</div>
	</table>

</body>
</html>
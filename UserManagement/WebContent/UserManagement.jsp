<%@page import="com.UserManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserManagement</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/UserManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>User Management</h1>

				<form id="formUserManagement" name="formUserManagement" method="post" action="UserManagement.jsp">


					First Name: <input id="firstName" name="firstName" type="text"
						class="form-control form-control-sm"> 
						
						<br>lastName: <input id="lastName" name="lastName" type="text"
						class="form-control form-control-sm"> 
						
						<br> NIC: <input id="NIC" name="NIC" type="text"
						class="form-control form-control-sm"> 
						
						<br> Email: <input id="email" name="email" type="text"
						class="form-control form-control-sm"> 
						
						<br> mobile: <input id="mobile" name="mobile" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					UserManagement projectObj = new UserManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

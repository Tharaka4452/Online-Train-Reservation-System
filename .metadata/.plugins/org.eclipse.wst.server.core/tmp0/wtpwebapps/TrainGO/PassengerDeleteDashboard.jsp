<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%if(session.getAttribute("adminUsername")==null){
	response.sendRedirect("Homepage.jsp");
} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/PassengerDeleteDashboard.css">
<!-- Custom CSS -->


</head>
<body>



<div class="containerr">
        <!-- Sidebar -->
        <nav class="sidebar">
            <h2>Admin Panel</h2>
            <ul>
                <li><a href="AdminDashboard.jsp">Dashboard</a></li>
                <li><a href="AdminDashBoard">Users</a></li>
                <li><a href="#">Reservations</a></li>
                <li><a href="#">Train Schedules</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="Login.jsp">Logout</a></li>
            </ul>
        </nav>

        <!-- Main Content -->
        <div class="main-content">
           <main style="margin-top:2%" class="mx-5">
		<div class="row">
			<div class="container">
				<h3 class="text-start mx-2">User Account Control</h3>
			</div>
				
			<table class="table table-hover mt-2">
				<thead class="table-dark">
					<tr>
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>Address</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="pasen" items="${pasen}">
						<tr>
							<td><c:out value="${pasen.id}"></c:out></td>
							<td><c:out value="${pasen.fname}"></c:out></td>
							<td><c:out value="${pasen.lname}"></c:out></td>
							<td><c:out value="${pasen.username}"></c:out></td>
							<td><c:out value="${pasen.email}"></c:out></td>
							<td><c:out value="${pasen.phoneNumber}"></c:out></td>
							<td><c:out value="${pasen.address}"></c:out></td>
							<td>
								<button type="button" class="btn btn-danger btn-sm" onclick="location.href='pdelete?id=${pasen.id}'">Delete</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</main>
            

        </div>
    </div>




	

</body>
</html>

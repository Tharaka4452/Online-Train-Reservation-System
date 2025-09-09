<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"> 

</head>
<body>
	<header class="navbar navbar-dark bg-secondary">
        <div>
            <a href="./home.jsp" class="navbar-brand mx-2">Home</a>
        </div>
        <div>
            <a href="./addreview.jsp" class="navbar-brand mx-2">Review</a>
        </div>
        <ul class="navbar-nav">
            <li>
                <a href="./loginpage.jsp" class="nav-link mx-3">User Login</a>
            </li>
        </ul>
    </header>
    
    <main style="margin-top:2%" class="mx-5">
		<div class="row">
			<div class="container">
				<h3 class="text-start mx-2">Welcome to Review Dashboard</h3>
				
			</div>

			<div class="text-start">
		
			</div>

			<table class="table mt-2">
				<thead class="table-dark">
					<tr>
						<th>Review Id</th>
						<th>User Name</th>
						<th>Train Number</th>
						<th>Rating</th>
						<th>Review</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="rv" items="${rv}">
    <tr>
        <td><c:out value="${rv.reviewid}" /></td>
        <td><c:out value="${rv.userid}" /></td>
        <td><c:out value="${rv.trainnumber}" /></td>
        <td><c:out value="${rv.rating}" /></td>
        <td><c:out value="${rv.review}" /></td>
        <td>
            <a href="update?reviewid=<c:out value='${rv.reviewid}' />" class="btn btn-success btn-sm">Update</a>
            <a href="delete?reviewid=<c:out value='${rv.reviewid}' />" class="btn btn-danger btn-sm">Delete</a>
        </td>
    </tr>
</c:forEach>


				</tbody>
			</table>
		</div>
	</main>
    
    
    
  
</body>
</html>
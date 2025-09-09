<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("Homepage.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Review Jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/addreview.css">
</head>
<body>
	<header class = "navbar navbar-dark bg-secondary">
	<div>
		<a href = "AfterHomepage.jsp"class = "navbar-brand mx-2">Home</a>
	</div>
	<ul class = "navbar-nav">
		
	</ul>
	</header>
	<main style = "margin-top:6%">
	<h1 class = "text-center">User Reviews & Feedback</h1>
	<p class = "text-center mx-auto">Welcome to the review page for our train ticket booking system! Here, you can share your experiences, rate the service, and provide feedback to help us improve.
     Use our rating system to rate your experience, and leave a detailed review in the text box provided. You can also edit or delete your previous reviews, giving you control over your feedback.
     Browse through existing reviews from other users, sorted by date, rating, or helpfulness. Each review displays the reviewer's name, rating, review date, and comments. You can even mark reviews as helpful or report any inappropriate content.
     Your feedback helps us ensure a better service, so feel free to share your thoughts!</p>
	</main>
	
	<div class="text-center mt-5">
		<a href="insertreview.jsp"class="btn btn-lg rounded-pill bg-light text-dark">Add Review</a>
		<a  href="updateaccess.jsp"class="btn btn-lg rounded-pill bg-light text-dark">Update Review</a>
		<a href="showReviews" class="btn btn-lg rounded-pill bg-light text-dark">Show Reviews</a>
		
		  
	</div>
	<div class="container mt-5">
        <h2 class="mb-4 text-center">User Reviews</h2>
       
        
        <div class="row gy-4">
        	<c:forEach var="rvs" items="${rvs}">
            <div class="col-md-6">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                    	<h5 class="card-subtitle mb-2 text-muted">Review ID :${rvs.reviewid}</h5>
                        <h5 class="card-title">Rating :<span class="text-warning"><c:forEach begin="1" end="${rvs.rating}">⭐</c:forEach></span></h5>
                        <p class="card-text"><h5>Train Number</h5>${rvs.trainnumber}</p>
                        <p class="card-text"><h5>Review</h5>${rvs.review}</p>
                    </div>
                </div>
            </div>
		</c:forEach>
            
            <!-- More reviews can be added here -->
        </div>
    </div>
	
	<footer>
    <div class="footer-container">
        <div class="footer-column">
            <h3>Quick Access</h3>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Cancellation Program</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>Get Help</h3>
            <ul>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">History</a></li>
                <li><a href="#">Route</a></li>
                <li><a href="#">Special</a></li>
                <li><a href="#">Reservation</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>Train Reservation</h3>
            <ul>
                <li><a href="#">VIP Reservation</a></li>
                <li><a href="#">Early Booking</a></li>
                <li><a href="#">Special Day</a></li>
                <li><a href="#">Food Order</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>Follow Us</h3>
            <div class="footer-social">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
    </div>
</footer>
</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-aP1jfBRPPRu1F9QXslxdO4yyvqTzEYUTyXMW7v+Zn5Np+JFF35upc9VGLPjJ5x9G" crossorigin="anonymous"></script>
</html>
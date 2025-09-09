<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("Homepage.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Review</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <link rel="stylesheet" href="CSS/insertreview.css">
    <script type="text/javascript">
        // JavaScript function to assign session 'username' to the 'userid' field
        function assignSessionToUserId() {
            document.getElementById("userid").value = "<%= username %>";
        }
    </script>
</head>

<!-- Ensure body calls the function on load -->
<body onload="assignSessionToUserId()">
    <header class="navbar navbar-dark bg-secondary">
        <div>
            <a href="AfterHomepage.jsp" class="navbar-brand mx-2">Home</a>
        </div>
        <div>
            <a href="addreview.jsp" class="navbar-brand mx-2">Review</a>
        </div>
        <ul class="navbar-nav">
            
        </ul>
    </header>
    
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Add a Review</h2>
        
        <!-- Set form method to POST or GET -->
        <form action="insertReview" class="p-4 shadow-sm rounded bg-light" method="get">
            <!-- User ID field will be automatically populated -->
            <div class="mb-3">
                <label for="userid" class="form-label">User name</label>
                <input type="text" class="form-control" id="userid" name="userid" readonly>
            </div>

            <div class="mb-3">
                <label for="trainnumber" class="form-label">Train Number</label>
                <input type="text" class="form-control" id="trainnumber" name="trainnumber" placeholder="Enter the Train Number" required>
            </div>

            <div class="mb-3">
                <label for="rating" class="form-label">Rating</label>
                <select class="form-select" id="rating" name="rating" required>
                    <option value="" disabled selected>Select a rating</option>
                    <option value="1">1 - ⭐</option>
                    <option value="2">2 - ⭐⭐</option>
                    <option value="3">3 - ⭐⭐⭐</option>
                    <option value="4">4 - ⭐⭐⭐⭐</option>
                    <option value="5">5 - ⭐⭐⭐⭐⭐</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="review" class="form-label">Review</label>
                <textarea class="form-control" id="review" name="review" rows="4" placeholder="Write your review here..." required></textarea>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-success">Submit Review</button>
            </div>
        </form>
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
</html>

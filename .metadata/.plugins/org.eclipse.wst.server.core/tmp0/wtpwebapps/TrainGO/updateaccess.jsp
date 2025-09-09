<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("Homepage.jsp");
    }
%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Username</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
        crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/insertreview.css">
        
    <script type="text/javascript">
        // JavaScript function to assign session 'username' to the 'userid' field
        function assignSessionToUserId() {
            document.getElementById("userid").value = "<%= username %>";
        }
    </script>
    
</head>
<body onload="assignSessionToUserId()">
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

    <div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
        <div class="card shadow-lg p-4 rounded-3" style="width: 100%; max-width: 400px;">
            <h3 class="text-center mb-4">Add Username</h3>
            
            <!-- Changed form method to POST for sensitive data -->
            <form action="validateusername" method="get">
                <div class="mb-3">
                    <label for="userid" class="form-label">User Name</label>
                    <input type="text" class="form-control" id="userid" name="userid" placeholder="Enter your username" readonly>
                </div>
                <div class="d-grid">
                    <!-- Use button to submit the form instead of a link -->
                    <button type="submit" class="btn btn-primary rounded-pill">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-aP1jfBRPPRu1F9QXslxdO4yyvqTzEYUTyXMW7v+Zn5Np+JFF35upc9VGLPjJ5x9G" 
        crossorigin="anonymous"></script>
        
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

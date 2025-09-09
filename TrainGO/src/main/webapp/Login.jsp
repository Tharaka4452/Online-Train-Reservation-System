<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Passenger Login Page</title>
    <link rel="stylesheet" href="CSS/login.css"> 
</head>
<body>

<!-- Header Section -->
<div class="header">
    <h2>TrainGO</h2>
    <div class="mysts">
        <a href="Homepage.jsp"><button class="header_but">Home</button></a>
        <a href="PassengerRegister.jsp"><button class="header_but">SignUp</button></a>
    </div>
</div>

<!-- Main Login Form Section -->
<div class="container"> 
    
    
    <form action="login">
        <h1>Login</h1>
        
        <div class="content"> 
            <!-- Username Field -->
            <div class="input-box">
                <label for="username">Username</label>
                <input type="text" id="username" name="Username" placeholder="Enter your username.." required>
            </div>
            
            <!-- Password Field -->
            <div class="input-box">
                <label for="password">Password</label>
                <div class="password-container">
                    <input type="password" id="password" name="password" placeholder="Enter your password.." required>
                </div>
            </div>
        </div>
        
        
        <div class="button-container">
            <button type="submit">Login</button>
        </div>
        
       
        <div class="alert">
            <p>Forgot your password? <a href="#">Click here</a></p>
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

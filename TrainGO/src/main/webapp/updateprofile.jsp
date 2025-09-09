<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("Homepage.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update profile</title>
  <link rel="stylesheet" href="CSS/updateprofile.css">
</head>
<body>
  <section>
    <div class="container">
      <div class="image-bar">
        <div class="button-container">
            <button type="submit"><a href="PassengerUserProfile">Profile</a></button> 
            <button type="submit"><a href="updateprofile.jsp">Update profile</a></button> 
            <button type="submit"><a href="AfterHomepage.jsp">Home</a></button> 
            
        </div>
      </div>
      <form class="form1"  action="updatePassenger ">
        <h1>Update Passenger</h1>
        <input type="text" name="pid" value="<c:out value='${ppnn.id}'/>"hidden>
        <div class="content">
        	
        
            <div class="input-box">
                <label for="Name">First Name</label>
                <input type="text"  name="fname" value="<c:out value='${ppnn.fname}'/>" >
            </div>
            <div class="input-box">
                <label for="Name">Last Name</label>
                <input type="text"  name="lname" value="<c:out value='${ppnn.lname}'/>">
            </div>
            <div class="input-box">
                <label for="Username">Username</label>
                <input type="text"  name="username" value="<c:out value='${ppnn.username}'/>">
            </div>
            <div class="input-box">
                <label for="email">Email</label>
                <input type="email"  name="email" value="<c:out value='${ppnn.email}'/>">
            </div>
           <div class="input-box">
                <label for="phonenumber">Phone Number</label>
                <input type="tel"  name="phonenumber" value="<c:out value='${ppnn.phoneNumber}'/>">
            </div>
            <div class="input-box">
                <label for="address">Address</label>
                <input type="text"  name="address" value="<c:out value='${ppnn.address}'/>">
            </div>
            <div class="input-box">
                <label for="Password">Password</label>
                <div class="password-container">
                  <input type="password"  id="password" name="Password" value="<c:out value='${ppnn.password}'/>">
                  <img src="eye-close.png" id="togglePassword1" class="toggle-icon">
                </div>
              </div>
    
              
        </div>
        
        <div class="button-container">
            <button type="submit" value="Update Passenger">update</button> <br><br>
            
        </div>
        
        
      </form>
    </div>
  </section>
  <script src="togglePassword.js"></script>
</body>
</html>
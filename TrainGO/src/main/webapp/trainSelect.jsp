<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Reservation Details</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>


.container {
            max-width: 500px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
         body{
         	font-weight: bold;
         	background-color: #bcbbbb; 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;}
            
        }
          h3 {
            color: #007bff;
            font-weight: bold;
        }
      
</style>
   
</head>
<body>

    <h3 class="text-center mb-2">Train Details</h3>
    <table class="table mt-4">
        <thead class="table-dark">
            <tr>
                <th>Train Name</th>
                <th>Train ID</th>
                <th>Start Location</th>
                <th>End Location</th>
                <th>Train Start Time</th>
                <th>Train Arrival Time</th>
                <th>Date</th>
                <th>Seat Numbers</th>
            </tr>
        </thead>          
        <tbody> 
            <tr>
                <td><c:out value='${trainlist.trainName}'/></td>
                <td><c:out value="${trainlist.trainId}"/></td>
                <td><c:out value="${trainlist.start_Location}"/></td>
                <td><c:out value="${trainlist.end_Location}"/></td>
                <td><c:out value="${trainlist.trainStartTime}"/></td>
                <td><c:out value="${trainlist.trainArrivalTime}"/></td>
                <td><c:out value="${trainlist.date}"/></td>
                <td><c:out value="${trainlist.seatNumb}"/></td>
                
            </tr>
        </tbody>               
    </table><br>
    <center>
   <form action="reservation.jsp" method="GET">
    <button class="btn btn-danger btn-custom" type="submit">Cancel</button>
	</form>
    </center>
    <main style="margin-top:4%">
<h1 class="text-center">Passenger Details</h1><br><br>
<div class="container">
	<form class="w-20 mx-auto" action="AddDetails">
    
    
    	<label class="form-label">Train ID : </label>
        <input type="number" class="form-control border-primary" name="trainId" value="<c:out value='${trainlist.trainId}'/>" readonly><br>

        <label class="form-label">Seat numbers : </label>
        <input type="text" class="form-control border-primary" name="seatNumb" value="<c:out value='${trainlist.seatNumb}'/>" readonly><br>
        
        <label class="form-label">Date : </label>
        <input type="text" class="form-control border-primary" name="date" value="<c:out value='${trainlist.date}'/>" readonly><br>
    
        <label class="form-label">Name : </label>
        <input type="text" class="form-control border-primary" name="name" placeholder="Enter Name" required><br>

        <label class="form-label">NIC number : </label>
        <input type="text" class="form-control border-primary" name="nic" max="15" placeholder="Enter NIC number" required><br>

		<label class="form-label">E-Mail : </label>
        <input type="text" class="form-control border-primary" name="email" placeholder="Enter E-Mail " required><br>

        <label class="form-label">Phone Number : </label>
        <input type="text" class="form-control border-primary" name="pnumber" placeholder="Enter Phone Number" required><br>


        <input type="submit" class="btn btn-primary" value ="Submit">
        
        
    </form>
    </div>
</main>
    
</body>
</html>

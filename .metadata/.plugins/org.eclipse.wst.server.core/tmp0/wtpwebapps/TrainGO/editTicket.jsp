<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
body {
            background-image: url("photo/03.png");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }

.container {
            max-width: 500px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
              }
         h1 {
            color: #007bff;
            font-weight: bold;
        }
        body{font-weight: bold;}
        }
</style>

</head>
<body>
<main style="margin-top:8%">


	<form class="w-20 mx-auto" action="UpdateDetails">
	
	
    <div class="container">
    <h1 class="text-center">Edit Details</h1><br>
    	<label class="form-label">Ticket ID : </label>
        <input type="number" class="form-control border-primary" name="ticketId" value="<c:out value='${seat.ticketid}'/>"readonly><br>
    
    	<label class="form-label">Train Number : </label>
        <input type="number" class="form-control border-primary" name="trainId" value="<c:out value='${seat.trainId}'/>"readonly><br>

        <label class="form-label">Seat numbers : </label>
        <input type="text" class="form-control border-primary" name="seatNumb" value="<c:out value='${seat.seatNumb}'/>"readonly><br>
        
        <label class="form-label">Date : </label>
        <input type="text" class="form-control border-primary" name="date" value="<c:out value='${seat.date}'/>"readonly><br>
    
        <label class="form-label">Name : </label>
        <input type="text" class="form-control border-primary" name="name" value="<c:out value='${seat.name}'/>"><br>

        <label class="form-label">NIC number : </label>
        <input type="text" class="form-control border-primary" name="nic" value="<c:out value='${seat.nic}'/>"><br>

		<label class="form-label">E-Mail : </label>
        <input type="text" class="form-control border-primary" name="email" value="<c:out value='${seat.email}'/>"><br>

        <label class="form-label">Phone Number : </label>
        <input type="text" class="form-control border-primary" name="pnumber" value="<c:out value='${seat.pnumber}'/>"><br>

        <input type="submit" class="btn btn-warning" value ="Edit Details">
        </div>
    </form>
</main>
</body>
</html>
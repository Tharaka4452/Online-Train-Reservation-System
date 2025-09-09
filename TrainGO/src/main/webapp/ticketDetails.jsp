<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ticket Details</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
    body {
            background-image: url("photo/03.png");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }
        .container {
            margin-top: 30px;
        }
        .table thead {
            background-color: #343a40;
            color: #fff;
        }
        .table th, .table td {
            vertical-align: middle;
            }
        .btn-custom {
            width: 48%;
        }
        .card-header {
			background-color: #ash;
            color: white;
        }
        .card-body {
            background-color: #f8f9fa;
        }
        h3 {
            color: #007bff;
            font-weight: bold;
        }
    </style>
</head>
<body >

<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card shadow-sm mb-4">
                <div class="card-header text-center">
                    <h3>Ticket Details</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <c:forEach var="seat" items="${seat}">
                            <tr>
                                <th>Ticket ID</th>
                                <td><c:out value="${seat.ticketid}" /></td>
                            </tr>
                            <tr>
                                <th>Train ID</th>
                                <td><c:out value="${seat.trainId}" /></td>
                            </tr>
                            <tr>
                                <th>Seat Numbers</th>
                                <td><c:out value="${seat.seatNumb}" /></td>
                            </tr>
                            <tr>
                                <th>Date</th>
                                <td><c:out value="${seat.date}" /></td>
                            </tr>
                            <tr>
                                <th>Name</th>
                                <td><c:out value="${seat.name}" /></td>
                            </tr>
                            <tr>
                                <th>NIC Number</th>
                                <td><c:out value="${seat.nic}" /></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><c:out value="${seat.email}" /></td>
                            </tr>
                            <tr>
                                <th>Phone Number</th>
                                <td><c:out value="${seat.pnumber}" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div class="d-flex justify-content-between mt-3">
                                        <a href="EditDetails?ticketId=<c:out value='${seat.ticketid}'/>" class="btn btn-success btn-custom">Edit Details</a>
                                        <a href="DeletDetails?ticketId=<c:out value='${seat.ticketid}'/>" class="btn btn-danger btn-custom">Cancel Reservation</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <div class="card shadow-sm">
                <div class="card-header">
                    <h3 class="mb-0">Train Details</h3>
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Train Name</th>
                                <th>Train ID</th>
                                <th>Start Location</th>
                                <th>End Location</th>
                                <th>Start Time</th>
                                <th>Arrival Time</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Udarata Manike</td>
                                <td>1</td>
                                <td>Kandy</td>
                                <td>Colombo</td>
                                <td>6:00 AM</td>
                                <td>11:30 AM</td>
                            </tr>
                            <tr>
                                <td>Manike</td>
                                <td>2</td>
                                <td>Colombo</td>
                                <td>Kandy</td>
                                <td>3:00 AM</td>
                                <td>9:30 AM</td>
                            </tr>
                            <tr>
                                <td>Udarata</td>
                                <td>3</td>
                                <td>Kandy</td>
                                <td>Polgahawela</td>
                                <td>6:00 pm</td>
                                <td>11:30 pm</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

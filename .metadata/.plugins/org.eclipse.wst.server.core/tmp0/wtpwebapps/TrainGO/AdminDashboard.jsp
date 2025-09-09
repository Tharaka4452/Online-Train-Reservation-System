<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("adminUsername")==null){
	response.sendRedirect("Homepage.jsp");
} %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/AdminDashboard.css">
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <nav class="sidebar">
            <h2>Admin Panel</h2>
            <ul>
                <li><a href="#">Dashboard</a></li>
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
            <header>
                <h2>Dashboard Overview</h2>
            </header>
            <section class="cards">
                <div class="card">
                    <h3>Total Users</h3>
                    <p>1000</p>
                </div>
                <div class="card">
                    <h3>Total Reservations</h3>
                    <p>500</p>
                </div>
                <div class="card">
                    <h3>Trains Available</h3>
                    <p>50</p>
                </div>
            </section>

            <section class="content">
                <h3>Recent Activities</h3>
                <table>
                    <tr>
                        <th>User</th>
                        <th>Action</th>
                        <th>Date</th>
                    </tr>
                    <tr>
                        <td>Saman Kumara</td>
                        <td>Booked a Ticket</td>
                        <td>2024-10-15</td>
                    </tr>
                    <tr>
                        <td>Dasun Sathsara</td>
                        <td>Cancelled a Reservation</td>
                        <td>2024-10-14</td>
                    </tr>
                      <tr>
                        <td>Tharidu Dilshan</td>
                        <td>Booked a Ticket</td>
                        <td>2024-10-15</td>
                    </tr>
                    <tr>
                        <td>Ishara Sithum</td>
                        <td>Cancelled a Reservation</td>
                        <td>2024-10-14</td>
                    </tr>
                      <tr>
                        <td>Tharaka Samaraweera</td>
                        <td>Cancelled a Reservation</td>
                        <td>2024-10-15</td>
                    </tr>
                    <tr>
                        <td>Hasan Nadun</td>
                        <td>Booked a Ticket</td>
                        <td>2024-10-14</td>
                    </tr>
                </table>
            </section>
        </div>
    </div>
</body>
</html>

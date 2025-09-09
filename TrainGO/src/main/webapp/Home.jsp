<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	if(session.getAttribute("gardUsername")==null){
		response.sendRedirect("Login.jsp");
	}
%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Link to Font Awesome icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <!-- Link to custom style sheet for additional styling -->
        <link rel="stylesheet" href="CSS/style.css">
    </head>

    <body>

        <!-- Header section -->
        <div class="header">
            <div><h1>TrainGo</h1></div>
        
        <div>    
            <div class="mysts">
                <!-- Button to reload the train schedule -->
                <a href="Read_Schedule_SV"><button class="header_but">Reload Schedule</button></a>
            
                <!-- Button to log out -->
                <a href="Logout_SV"><button class="header_but">Logout</button></a>
            </div>
  		</div> 
  		</div>
        
        <!-- Image gallery section -->
        <div class="image_gallery">
        
        <div><!-- logo, navigation bar-->
            <div><!--logo, navigation bar-->
                <div><!--logo-->
                    <!-- Logo can be inserted here -->
                </div>
                <div><!--navigation bar-->
                    <div class="slider-images">
                        <!-- Slider for image and details -->
                        <div class="slider-img">
                            <img src="photo/1.jpeg" alt="1">
                            <h1>Update</h1>
                                <div class="details">
                                    <h2>Update Journey Details</h2>
                                    <p>access the update interface to verify, mark completed, or Update Train Journey for accurate tracking</p>
                                    <button id="new_but1" class="new_bt">click for more</button>
                                </div>
                        </div>

                        <div class="slider-img">
                            <img src="photo/back6 (1).jpeg" alt="2">
                            <h1>Schedule</h1>
                                <div class="details">
                                    <h2>Schedules Details</h2>
                                    <p>Access the schedule to explore train journeys, check timings, and view seat availability for a hassle-free travel experience.</p>
                                    <button id="new_but2" class="new_bt">View Schedule</button>
                                    
                                </div>
                        </div>

                        <div class="slider-img">
                            <img src="photo/3.jpeg" alt="3">
                            <h1>cancel</h1>
                                <div class="details">
                                    <h2>Cancel Schedule</h2>
                                    <p>access the Cancellation interface to verify, mark completed, or cancel passenger bookings for accurate tracking</p>
                                    <button id="new_but3" class="new_bt">click for more</button>
                                </div>
                        </div>

                        <div class="slider-img active">
                            <img src="photo/4.jpeg" alt="4">
                            <h1>Create</h1>
                                <div class="details">
                                    <h2>Add New Train schedule</h2>
                                    <p>access the Train schedule interface to view and Add New Train schedule. Mark completed reservations for accurate tracking.</p>
                                    <button id="new_but4" class="new_bt">click for more</button>
                                </div>
                        </div>

                        <div class="slider-img">
                            <img src="photo/5.jpeg" alt="5">
                            <h1>Our Route</h1>
                                <div class="details">
                                    <h2>Our Route</h2>
                                    <p>Our trains connect major cities and scenic destinations, ensuring quick, efficient travel on well-connected, expansive routes.</p>
                                    <button id="new_but5" class="new_bt">click for more</button>
                                </div>
                        </div>

                        <div class="slider-img">
                            <img src="photo/6.jpeg" alt="6">
                            <h1>Safety</h1>
                                <div class="details">
                                    <h2>Our Commitment to Safety</h2>
                                    <p>Your safety matters. We prioritize hygiene, advanced safety technology, and trained staff to ensure a secure travel experience.</p>
                                    <button id="new_but6" class="new_bt">click for more</button>
                                </div>
                        </div>

                        <div class="slider-img">
                            <img src="photo/7.jpeg" alt="7">
                            <h1>History</h1>
                                <div class="details">
                                    <h2>Our History</h2>
                                    <p>With over 20 years of service, we've grown into a trusted network, connecting cities and ensuring reliable travel.</p>
                                    <button id="new_but7" class="new_bt">click for more</button>
                                </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        </div>

        <!-- Script for handling slider functionality -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const sliderImages = document.querySelectorAll('.slider-img');
        
                // Add click event to each slider image
                sliderImages.forEach(function(image) {
                    image.addEventListener('click', function() {
                        // Remove active class from all images
                        sliderImages.forEach(function(img) {
                            img.classList.remove('active');
                        });
                        // Add active class to the clicked image
                        this.classList.add('active');
                    });
                });
            });
        </script>



<div class="about_para">
        
    <hr id="hr_line">

    <!-- Section for adding a new train journey -->
    <div class="addtrn" id="addtrn"><!--Add New Train journey-->
        <h1>Add New Train journey</h1><br>

        <div class="container">
            <div class="Cancellation-form">
                <form action="GCreate" method="post">
                    <!-- Input field for journey name -->
                    <div class="input-group">
                        <label for="Train_ID">Enter journey Name :</label>
                        <input type="text" name="journey_name" id="Add_Train_Name" placeholder="" required>
                    </div>
                    <!-- Input field for train ID -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train ID :</label>
                        <input type="text" name="train_id" id="Add_train_id" placeholder="Trn _ _ _ _ _ _" required>
                    </div>
                    <!-- Input field for train name -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train Name :</label>
                        <input type="text" name="train_name" id="Add_train_id" placeholder="Trn _ _ _ _ _ _" required>
                    </div>
                    <!-- Input field for train start time -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train Start Time :</label>
                        <input type="text" name="start" id="Add_start_time" placeholder="AM / PM" required>
                    </div>
                    <!-- Input field for train start location -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train Start Location :</label>
                        <input type="text" name="start_loc" id="Add_start_loc" required>
                    </div>
                    <!-- Input field for train end location -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train End Location :</label>
                        <input type="text" name="end_loc" id="Add_end_loc" required>
                    </div>
                    <!-- Input field for train arrival time -->
                    <div class="input-group">
                        <label for="Train_ID">Enter Train Arrival Time :</label>
                        <input type="text" name="arrival" id="Add_Arrival_time" placeholder="AM / PM" required>
                    </div>
                    <!-- Input field for train capacity -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train Capacity :</label>
                        <input type="text" name="capacity" id="Add_cap" placeholder="FULL Seat Count" required>
                    </div>
                    <!-- Input field for third-class seat count -->
                    <div class="input-group">
                        <label for="Train_ID">Enter 3rd Class Seat Count :</label>
                        <input type="text" name="three" id="Add_3rd" placeholder="" required>
                    </div>
                    <!-- Input field for first-class seat count -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter 1st Class Seat Count :</label>
                        <input type="text" name="one" id="Add_1st" placeholder="" required>
                    </div>

                    <!-- Button to submit the form to add the journey -->
                    <a href="Read_Schedule_SV"><button type="submit">Add Journey</button></a>
                </form>

                <!-- Image related to the form -->
                <div class="image-container">
                    <img src="photo/back8.jpeg" alt="Mug Image">
                </div>
                <h2>Train scheduling Form</h2>
            </div>        
                
        </div>

    </div>

    <hr id="hr_line">

    <!-- Section for displaying the table of train information -->
    <div class="table-container" id="table-container"><!--Checker Interface-->
        <h1>Train Information</h1><br>

        <table>
            <thead>
                <tr>                        
                    <th>Journey ID</th>
                    <th>Journey Name</th>
                    <th>Train ID</th>
                    <th>Train Name</th>
                    <th>Start Time</th>
                    <th>Start Location</th>
                    <th>End Location</th>
                    <th>Arrival Time</th>
                    <th>Capacity</th>
                    <th>Third Class Seat Count</th>
                    <th>First Class Seat Count</th>
                    <th>Option</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterates over the journeys to populate the table -->
                <c:forEach var="journey" items="${journeys}">
                    <tr>
                        <td>${journey.journeyId}</td>
                        <td>${journey.journeyName}</td>
                        <td>${journey.trainId}</td>
                        <td>${journey.trainName}</td>
                        <td>${journey.trainStartTime}</td>
                        <td>${journey.start_location}</td>
                        <td>${journey.end_location}</td>                   
                        <td>${journey.trainArrivalTime}</td>
                        <td>${journey.trainCapacity}</td>
                        <td>${journey.thirdSeat}</td>
                        <td>${journey.firstSeat}</td>
                        <!-- Links for updating and deleting a journey -->
                        <td>
                            <a class="update" href="Home.jsp?jid=${journey.journeyId}&jname=${journey.journeyName}&tid=${journey.trainId}&tname=${journey.trainName}&stime=${journey.trainStartTime}&sloc=${journey.start_location}&eloc=${journey.end_location}&atime=${journey.trainArrivalTime}&cap=${journey.trainCapacity}&third=${journey.thirdSeat}&one=${journey.firstSeat}#updatetrain" id="update">Update</a>
                            <a class="delete" href="Home.jsp?delete_jid=${journey.journeyId}&delete_tid=${journey.trainId}#Cancellation" id="delete">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <hr id="hr_line">

    <!-- Section for canceling a train journey -->
    <div class="Cancellation" id="Cancellation"><!--cancel train journey-->
        <h1>Cancel Train Journey</h1><br>

        <div class="container">
            <div class="Cancellation-form">
            
                <form action="GDelete" method="post">
                    <%  String Djourney_id = request.getParameter("delete_jid");
                        String Dtrain_id = request.getParameter("delete_tid");
                    %>
                    <!-- Input field for journey ID (readonly) -->
                    <div class="input-group">
                        <label for="Train_ID">Enter journey ID :</label>
                        <input type="text" name="Djourney_id" id="Train_ID" value=<%=Djourney_id%> readonly>
                    </div>
                    <!-- Input field for train ID (readonly) -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter Train ID :</label>
                        <input type="text" name="Dtrain_id" id="Reservation_id" value=<%=Dtrain_id%> readonly>
                    </div>
                    <!-- Text area for special notes -->
                    <div class="input-group">
                        <label for="username">Any Special Notes :</label>
                        <textarea name="DSsp_note" id="username"></textarea>
                    </div>

                    <!-- Button to submit the cancellation -->
                    <button type="submit">Cancel Reservation</button>
                </form>
                
                <!-- Image related to the form -->
                <div class="image-container">
                    <img src="photo/back5.jpeg" alt="Mug Image">
                </div>
                
                <h2>Train Cancellation Form</h2>
            </div>        
                
        </div>
    </div>

    <hr id="hr_line">

    <!-- Section for updating a train journey -->
    <div class="update" id="updatetrain"><!--UPDARE Train journey-->
        <h1>Update Train journey</h1><br>

        <div class="container">
            <div class="Cancellation-form">
                
                <form action="GUpdate" method="post">
                    <%  String Ujourney_id = request.getParameter("jid");
                        String Ujourney_name = request.getParameter("jname");
                        String Utrain_id = request.getParameter("tid");
                        String Utrain_name = request.getParameter("tname");
                        String Ustart = request.getParameter("stime");
                        String Usloc = request.getParameter("sloc");        
                        String Ueloc = request.getParameter("eloc");        
                        String Uarrival = request.getParameter("atime");
                        String Ucapacity = request.getParameter("cap");
                        String Uthree = request.getParameter("third");
                        String Uone = request.getParameter("one");
                    %>

                    <!-- Input field for journey ID (readonly) -->
                    <div class="input-group">
                        <label for="Train_ID">journey ID :</label>
                        <input type="text" name="Ujourney_id" id="Add_Train_ID" value=<%=Ujourney_id%> readonly>
                    </div>
                    <!-- Input field for new journey name -->
                    <div class="input-group">
                        <label for="Train_ID">Enter New journey Name :</label>
                        <input type="text" name="Ujourney_name" id="Add_Train_Name" value=<%=Ujourney_name%> required>
                    </div>
                    <!-- Input field for new train ID -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New Train ID :</label>
                        <input type="text" name="Utrain_id" id="Add_train_id" value=<%=Utrain_id%> required>
                    </div>
                    <!-- Input field for new train name -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New Train Name :</label>
                        <input type="text" name="Utrain_name" id="Add_train_name" value=<%=Utrain_name%> required>
                    </div>
                    <!-- Input field for new train start time -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New Train Start Time :</label>
                        <input type="text" name="Ustart" id="Add_start_time" value=<%=Ustart%> required>
                    </div>
                    <!-- Input field for new train start location -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New Train Start Location :</label>
                        <input type="text" name="Ustart_loc" id="Add_start_loc" value=<%=Usloc%> required>
                    </div>
                    <!-- Input field for new train end location -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New Train End Location :</label>
                        <input type="text" name="Uend_loc" id="Add_end_loc" value=<%=Ueloc%> required>
                    </div>
                    <!-- Input field for new train arrival time -->
                    <div class="input-group">
                        <label for="Train_ID">Enter New Train Arrival Time :</label>
                        <input type="text" name="Uarrival" id="Add_Arrival_time" value=<%=Uarrival%> required>
                    </div>
                    <!-- Input field for new train capacity -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New Train Capacity :</label>
                        <input type="text" name="Ucapacity" id="Add_cap" value=<%=Ucapacity%> required>
                    </div>
                    <!-- Input field for new third-class seat count -->
                    <div class="input-group">
                        <label for="Train_ID">Enter New 3rd Class Seat Count :</label>
                        <input type="text" name="Uthree" id="Add_3rd" value=<%=Uthree%> required>
                    </div>
                    <!-- Input field for new first-class seat count -->
                    <div class="input-group">
                        <label for="Reservation_id">Enter New 1st Class Seat Count :</label>
                        <input type="text" name="Uone" id="Add_1st" value=<%=Uone%> required>
                    </div>
                    <!-- Button to submit the update -->
                    <a href="Read_Schedule_SV"><button type="submit">Update Journey</button></a>
                </form>

                <!-- Image related to the form -->
                <div class="image-container">
                    <img src="photo/back6 (2).jpeg" alt="Mug Image">
                </div>

                <h2>Train Update Form</h2>

            </div>        
                
        </div>
    </div>




<hr id="hr_line">

<!-- Section for displaying the services offered -->
<div class="services" id="services"><!--our services-->
    <h1>Our Services</h1><br>
    <p>We are dedicated to offering services that simplify your travel experience from start to finish. Our online booking system is easy to use, allowing you to reserve your tickets in just a few clicks. In addition to booking, we offer real-time updates on train schedules and delays so you can plan your trip with confidence. Once onboard, stay connected with free Wi-Fi available in all coaches, and keep your devices powered up with convenient charging points at every seat. We also provide a selection of snacks and meals for you to enjoy during your trip. If you ever have a question or concern, our 24/7 customer service team is always available to assist. We aim to make every aspect of your journey as smooth and hassle-free as possible, whether you’re a daily commuter or traveling long-distance. Your comfort, convenience, and satisfaction are our top priorities as we strive to enhance your travel experience.</p>
</div>

<hr id="hr_line">

<!-- Section for displaying the company's history -->
<div class="History" id="History"><!--Our History-->
    <h1>Our History</h1><br>
    <p>Our journey began over two decades ago with the simple goal of connecting communities through reliable train services. What started as a small operation has grown into one of the country’s most trusted rail networks. Over the years, we have expanded our routes, introduced new services, and continually improved to meet the evolving needs of our passengers. From our humble beginnings to our present-day network, we have always focused on providing safe, comfortable, and efficient travel for our customers. Our history is marked by innovation, such as the introduction of digital ticketing, real-time updates, and premium onboard services. We take great pride in the relationships we’ve built with the cities and communities we serve. Our commitment to excellence has helped us earn the loyalty of millions of passengers over the years. As we continue to grow, we remain dedicated to offering the best possible travel experience for all of our passengers.</p>
</div>

<hr id="hr_line">

<!-- Section for describing the train routes -->
<div class="Route" id="Route"><!--Our Route-->
    <h1>Our Route</h1><br>
    <p>Our extensive rail network connects cities and communities across the country, offering a convenient and efficient way to travel. Whether you’re commuting to work, visiting family, or embarking on a scenic journey, our routes are designed to get you where you need to go with ease. We operate on well-planned routes that minimize travel time while maximizing convenience, ensuring that you reach your destination quickly and comfortably. Our network spans both urban and rural areas, so whether you’re in a major city or a remote town, we have a route for you. Many of our routes feature breathtaking views of the countryside, coastlines, and mountains, making your journey not just about the destination but also the experience along the way. With frequent departures and arrivals, we offer flexibility to accommodate your schedule. Our goal is to provide you with a stress-free travel option that connects you to the places and people that matter most.</p>
</div>

<hr id="hr_line">

<!-- Section outlining the company's commitment to safety -->
<div class="Safety" id="Safety"><!--Our Commitment to Safety-->
    <h1>Our Commitment to Safety</h1><br>
    <p>Your safety is our highest priority, and we go above and beyond to ensure that every journey you take with us is secure. We have implemented state-of-the-art safety technologies on all of our trains, including advanced braking systems, surveillance cameras, and automated alerts to prevent potential hazards. Our trains undergo rigorous, regular inspections to ensure they meet the highest safety standards. In addition, all our staff are trained in emergency protocols and are equipped to handle any situation that may arise, giving you peace of mind throughout your journey. We also understand the importance of maintaining a clean environment onboard. Our cleaning crews thoroughly sanitize trains between journeys, and additional hygiene measures are in place to ensure a healthy travel experience. Whether it's safety from operational risks or health concerns, we take every precaution to protect our passengers, so you can enjoy a safe and worry-free trip every time.</p>
</div>

<hr id="hr_line">

</div>

<!-- Script for smooth scrolling to different sections of the page -->
<script>
    document.getElementById('new_but1').addEventListener('click', function() {
        document.getElementById('updatetrain').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('new_but2').addEventListener('click', function() {
        document.getElementById('table-container').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('new_but3').addEventListener('click', function() {
        document.getElementById('Cancellation').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('new_but4').addEventListener('click', function() {
        document.getElementById('addtrn').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('new_but5').addEventListener('click', function() {
        document.getElementById('Route').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('new_but6').addEventListener('click', function() {
        document.getElementById('Safety').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('new_but7').addEventListener('click', function() {
        document.getElementById('History').scrollIntoView({ behavior: 'smooth' });
    });
</script>

<!-- Footer section with quick access links and social media -->
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

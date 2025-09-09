<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="CSS/Homepage.css">
    </head>

    <body>

        <div class="header">
            <div><h1>TrainGO</h1></div>
            <div class="mysts">
                <a href="logout"><button class="header_but">LogOut</button></a>
                <a href="PassengerUserProfile"><button class="header_but">Profile</button></a>
                
            </div>

        </div>

        
        <div class="image_gallery">
        

        <div><!-- logo, navigation bar-->
            <div><!--logo, navigation bar-->
                <div><!--logo-->

                </div>
                <div><!--navigation bar-->
                    <div class="slider-images">
                        <div class="slider-img">
                            <img src="photo/1.jpeg" alt="1">
                            <h1>Services</h1>
                                <div class="details">
                                    <h2>Our Services</h2>
                                    <p>Offering easy booking, 24/7 customer support, onboard Wi-Fi, charging points, and real-time updates for a seamless travel experience.</p>
                                    <button id="new_but2" class="new_bt">click for more</button>
                                </div>
                            
                        </div>

                        <div class="slider-img">
                            <img src="photo/back6 (1).jpeg" alt="2">
                            <h1>cancel</h1>
                            <div class="details">
                                <h2>cancel reservation</h2>
                                <p>access the Cancellation interface to verify, mark completed, or cancel passenger bookings for accurate tracking</p>
                                <button id="new_but3" class="new_bt">click for more</button>
                            </div>
                        </div>

                        <div class="slider-img">
                            <img src="photo/3.jpeg" alt="3">
                            <h1>Reservation</h1>
                                <div class="details">
                                    <h2>make reservation</h2>
                                    <p>Easily book your train tickets with TrainGO, selecting routes, seats, and times, all in just a few quick steps.</p>
                                    <a href="reservation.jsp" style="text-decoration: none;"><button  class="new_bt">click for more</button></a>
                                </div>
                        </div>

                        <div class="slider-img active">
                            <img src="photo/4.jpeg" alt="4">
                            <h1>Home</h1>
                                <div class="details">
                                    <h2>Welcome to TrainGO</h2>
                                    <p>TrainGO is an advanced online train reservation system designed to simplify the process of booking train tickets. 
                                        It provides users with a seamless experience to search for available trains, view schedules, book tickets, and manage 
                                        reservations all from a single platform. With user-friendly navigation and secure payment integration, TrainGO ensures
                                         a hassle-free journey planning experience, making train travel more convenient and accessible for everyone.</p>
                                   
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
                            <h1>Review</h1>
                                <div class="details">
                                    <h2>Our Review</h2>
                                    <p>Share your feedback, rate your travel experience, and read reviews from other passengers. You can edit or delete your reviews and browse through ratings sorted by date, rating, or helpfulness. Your input helps us improve our services!</p>
                                    <a href="addreview.jsp" style="text-decoration: none;"><button  class="new_bt">click for more</button></a>
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

        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const sliderImages = document.querySelectorAll('.slider-img');
        
                sliderImages.forEach(function(image) {
                    image.addEventListener('mouseenter', function() {
                        sliderImages.forEach(function(img) {
                            img.classList.remove('active');
                        });
                        this.classList.add('active'); // Set the hovered image as active
                    });
        
                    image.addEventListener('mouseleave', function() {
                        this.classList.remove('active'); // Remove active class on mouse leave
                    });
                });
            });
        </script>

        <hr id="hr_line">

        <div class="about_para">

        <div class="table-container" id="table-container"><!--Checker Interface-->
            <h1>Train Information</h1><br>

                <table>
                    <thead>
                        <tr>
                            <th>Train ID</th>
                            <th>Train Name</th>
                            <th>Journey ID</th>
                            <th>Journey Name</th>
                            <th>Start Time</th>
                            <th>Arrival Time</th>
                            <th>Capacity</th>
                            <th>3rd Class Seat Count</th>
                            <th>Booked 3rd Class</th>
                            <th>1st Class Seat Count</th>
                            <th>Booked 1st Class</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>101</td>
                            <td>Express Line</td>
                            <td>1009WP</td>
                            <td>Colombo to Kandy</td>
                            <td>06:00 AM</td>
                            <td>09:30 AM</td>
                            <td>500</td>
                            <td>200</td>
                            <td>100</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>102</td>
                            <td>Coast Runner</td>
                            <td>1QE</td>
                            <td>Galle to Colombo</td>
                            <td>07:30 AM</td>
                            <td>10:00 AM</td>
                            <td>400</td>
                            <td>150</td>
                            <td>70</td>
                            <td>20</td>
                            <td>30</td>
                        </tr>
                        <tr>
                            <td>103</td>
                            <td>Mountain King</td>
                            <td>1001S</td>
                            <td>Nuwara Eliya to Colombo</td>
                            <td>05:30 AM</td>
                            <td>11:00 AM</td>
                            <td>450</td>
                            <td>100</td>
                            <td>120</td>
                            <td>30</td>
                            <td>40</td>
                        </tr>
                        <tr>
                            <td>104</td>
                            <td>Night Owl</td>
                            <td>11B</td>
                            <td>Colombo to Jaffna</td>
                            <td>10:00 PM</td>
                            <td>06:00 AM</td>
                            <td>600</td>
                            <td>250</td>
                            <td>120</td>
                            <td>60</td>
                            <td>70</td>
                        </tr>
                        <tr>
                            <td>105</td>
                            <td>Hill Climber</td>
                            <td>132A</td>
                            <td>Kandy to Ella</td>
                            <td>08:00 AM</td>
                            <td>12:00 PM</td>
                            <td>350</td>
                            <td>130</td>
                            <td>80</td>
                            <td>40</td>
                            <td>40</td>
                        </tr>
                    </tbody>
                </table>

        </div>
    
        <hr id="hr_line">

         <div class="services" id="services"><!--our services-->
            <h1>Our Services</h1><br>
            <p>We are dedicated to offering services that simplify your travel experience from start to finish. Our online booking system is easy to use, allowing you to reserve your tickets in just a few clicks. In addition to booking, we offer real-time updates on train schedules and delays so you can plan your trip with confidence. Once onboard, stay connected with free Wi-Fi available in all coaches, and keep your devices powered up with convenient charging points at every seat. We also provide a selection of snacks and meals for you to enjoy during your trip. If you ever have a question or concern, our 24/7 customer service team is always available to assist. We aim to make every aspect of your journey as smooth and hassle-free as possible, whether you’re a daily commuter or traveling long-distance. Your comfort, convenience, and satisfaction are our top priorities as we strive to enhance your travel experience.</p>
        </div>

        <hr id="hr_line">

        <div class="History" id="History"><!--Our History-->
            <h1>Our History</h1><br>
            <p>Our journey began over two decades ago with the simple goal of connecting communities through reliable train services. What started as a small operation has grown into one of the country’s most trusted rail networks. Over the years, we have expanded our routes, introduced new services, and continually improved to meet the evolving needs of our passengers. From our humble beginnings to our present-day network, we have always focused on providing safe, comfortable, and efficient travel for our customers. Our history is marked by innovation, such as the introduction of digital ticketing, real-time updates, and premium onboard services. We take great pride in the relationships we’ve built with the cities and communities we serve. Our commitment to excellence has helped us earn the loyalty of millions of passengers over the years. As we continue to grow, we remain dedicated to offering the best possible travel experience for all of our passengers.</p>
        </div>

        <hr id="hr_line">

        <div class="Route" id="Route"><!--Our Route-->
            <h1>Our Route</h1><br>
            <p>Our extensive rail network connects cities and communities across the country, offering a convenient and efficient way to travel. Whether you’re commuting to work, visiting family, or embarking on a scenic journey, our routes are designed to get you where you need to go with ease. We operate on well-planned routes that minimize travel time while maximizing convenience, ensuring that you reach your destination quickly and comfortably. Our network spans both urban and rural areas, so whether you’re in a major city or a remote town, we have a route for you. Many of our routes feature breathtaking views of the countryside, coastlines, and mountains, making your journey not just about the destination but also the experience along the way. With frequent departures and arrivals, we offer flexibility to accommodate your schedule. Our goal is to provide you with a stress-free travel option that connects you to the places and people that matter most.</p>
        </div>

        <hr id="hr_line">


        <div class="Safety" id="Safety"><!--Our Commitment to Safety-->
            <h1>Our Commitment to Safety</h1><br>
            <p>Your safety is our highest priority, and we go above and beyond to ensure that every journey you take with us is secure. We have implemented state-of-the-art safety technologies on all of our trains, including advanced braking systems, surveillance cameras, and automated alerts to prevent potential hazards. Our trains undergo rigorous, regular inspections to ensure they meet the highest safety standards. In addition, all our staff are trained in emergency protocols and are equipped to handle any situation that may arise, giving you peace of mind throughout your journey. We also understand the importance of maintaining a clean environment onboard. Our cleaning crews thoroughly sanitize trains between journeys, and additional hygiene measures are in place to ensure a healthy travel experience. Whether it's safety from operational risks or health concerns, we take every precaution to protect our passengers, so you can enjoy a safe and worry-free trip every time.</p>
        </div>

        <hr id="hr_line">

    </div>

       <script>

        document.getElementById('new_but2').addEventListener('click', function() {
            document.getElementById('services').scrollIntoView({ behavior: 'smooth' });
        });

        document.getElementById('new_but5').addEventListener('click', function() {
            document.getElementById('Route').scrollIntoView({ behavior: 'smooth' }); // corrected to 'Route'
        });

        document.getElementById('new_but7').addEventListener('click', function() {
            document.getElementById('History').scrollIntoView({ behavior: 'smooth' }); // corrected to 'History'
        });
        </script>


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
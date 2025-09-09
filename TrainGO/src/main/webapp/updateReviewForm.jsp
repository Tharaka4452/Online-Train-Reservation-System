<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header class="navbar navbar-dark bg-secondary">
        <div>
            <a href="AfterHomepage.jsp" class="navbar-brand mx-2">Home</a>
        </div>
        <div>
            <a href="showReviews" class="navbar-brand mx-2">Review</a>
        </div>
        
    </header>
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Update Review</h2>
        
        <form action="updateReview" class="p-4 shadow-sm rounded bg-light">
        <input type="hidden" name="reviewid" id="reviewid" value="<c:out value='${pt.reviewid}'/>">
            <div class="mb-3">
                <label for="userid" class="form-label">User ID</label>
                <input type="text" class="form-control" id="userid" name="userid" value = "<c:out value = '${pt.userid }'/>"readonly>
            </div>
            <div class="mb-3">
                <label for="trainnumber" class="form-label">Train Number</label>
                <input type="text" class="form-control" id="trainnumber" name="trainnumber" value = "<c:out value = '${pt.trainnumber }'/>"   required>
            </div>
            <div class="mb-3">
                <label for="rating" class="form-label">Rating</label>
                <select class="form-select" id="rating" name="rating" required>
   					 <option value="" disabled>Select a rating</option>
  				     <option value="1" <c:if test="${pt.rating == 1}">selected</c:if>>1 - ⭐</option>
   					 <option value="2" <c:if test="${pt.rating == 2}">selected</c:if>>2 - ⭐⭐</option>
 				     <option value="3" <c:if test="${pt.rating == 3}">selected</c:if>>3 - ⭐⭐⭐</option>
			         <option value="4" <c:if test="${pt.rating == 4}">selected</c:if>>4 - ⭐⭐⭐⭐</option>
				     <option value="5" <c:if test="${pt.rating == 5}">selected</c:if>>5 - ⭐⭐⭐⭐⭐</option>
				</select>

            </div>
            <div class="mb-3">
                <label for="review" class="form-label">Review</label>
                <textarea class="form-control" id="review" name="review" rows="4" required>
        <c:out value="${pt.review}"/>
</textarea>

            </div>
            <div class="text-center">
                <button type="submit" value = "updatereview" class="btn btn-success">Update Review</button>
            </div>
        </form>
    </div>
    
    
</body>
</html>
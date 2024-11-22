  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Notice</title>
    <link rel="stylesheet" href="form.css">
</head>
<body>
<header class="header">
    <div class="logo">
        <img src="images/logo1.png" alt="Logo">
    </div>
    <nav class="navigation">
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>

<div class="body-content">
    
    <div class="signup-container">
        <%
            String noticeID = request.getParameter("noticeID");
            String title = request.getParameter("title");
            String postDate = request.getParameter("postDate");
            String expiryDate = request.getParameter("expiryDate");
            String notice = request.getParameter("notice");
            String author = request.getParameter("author");
        %>

        <h1>Delete Notice</h1>

        <form action="deleteNotice" method="post">
            <table>
                <tr>
                    <td>Notice ID</td>
                    <td><input type="text" name="noticeID" value="<%= noticeID %>" readonly></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="title" value="<%= title %>" readonly></td>
                </tr>
                <tr>
                    <td>Post Date</td>
                    <td><input type="text" name="postDate" value="<%= postDate %>" readonly></td>
                </tr>
                <tr>
                    <td>Expiry Date</td>
                    <td><input type="text" name="expiryDate" value="<%= expiryDate %>" readonly></td>
                </tr>
                <tr>
                    <td>Notice</td>
                    <td><textarea name="notice" readonly><%= notice %></textarea></td>
                </tr>
                <tr>
                    <td>Author</td>
                    <td><input type="text" name="author" value="<%= author %>" readonly></td>
                </tr>
            </table>
            <br><br><br>
            <input type="submit" name="submit" value="Delete Notice" class="signup-btn">
        </form>
        
    </div>

</div>

<footer class="footer">
    <div class="contact-details">
        <h3>Contact Us</h3>
        <p>Email: info@example.com</p>
        <p>Phone: +123 456 789</p>
    </div>
    <div class="sponsors">
        <h3>Our Sponsors</h3>
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
    </div>
</footer>

</body>
</html>
 
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notice View</title>
    <link rel="stylesheet" href="table.css">
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
            <h2>Notice Details</h2>
            <table>
                	<c:forEach var="Notice" items="${noticeDetails}">
                    <c:set var="noticeID" value="${notices.noticeID}"/>
                    <c:set var="title" value="${notices.title}"/>
                    <c:set var="postDate" value="${notices.postDate}"/>
                    <c:set var="expiryDate" value="${notices.expiryDate}"/>
                    <c:set var="notice" value="${notices.notice}"/>
                    <c:set var="author" value="${notices.author}"/>
                    
                    <tr>
                        <td>Notice ID</td>
                        <td>${notices.noticeID}</td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td>${notices.title}</td>
                    </tr>
                    <tr>
                        <td>Post Date</td>
                        <td>${notices.postDate}</td>
                    </tr>
                    <tr>
                        <td>Expiry Date</td>
                        <td>${notices.expiryDate}</td>
                    </tr>
                    <tr>
                        <td>Notice</td>
                        <td>${notices.notice}</td>
                    </tr>
                    <tr>
                        <td>Author</td>
                        <td>${notices.author}</td>
                    </tr>
                </c:forEach>
            </table>

            <c:url value="Update.jsp" var="updateNotice">
                <c:param name="noticeID" value="${noticeID}"/>
                <c:param name="title" value="${title}"/>
                <c:param name="postDate" value="${postDate}"/>
                <c:param name="expiryDate" value="${expiryDate}"/>
                <c:param name="notice" value="${notice}"/>
                <c:param name="author" value="${author}"/>
            </c:url>
             
            
            <br>
            <a href="${updateNotice}">
                <input type="submit" class="signup-btn" name="update" value="Update"><br><br>
            </a>
            
            
             <c:url value="Delete.jsp" var="deleteNotice">
				<c:param name="noticeID" value="${noticeID}"/>
                <c:param name="title" value="${title}"/>
                <c:param name="postDate" value="${postDate}"/>
                <c:param name="expiryDate" value="${expiryDate}"/>
                <c:param name="notice" value="${notice}"/>
                <c:param name="author" value="${author}"/>
				</c:url>
            
            
            
            <a href="${deleteNotice}">
                <input type="button" class="signup-btn" name="delete" value="Delete">
            </a>
            
            
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
 
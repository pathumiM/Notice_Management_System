
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>



	<c:forEach var="notice" items="${noticeDetail}">
	
	
    
    ${notice1.noticeID}
    ${notice1.title}
    ${notice1.postDate}
    ${notice1.expiryDate}
    ${notice1.notice}
    ${notice1.author}
    
    
    
    
	</c:forEach>
	
    
   
    </body>
</html>
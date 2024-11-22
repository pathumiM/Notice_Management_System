<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Notice</title>
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

        <h2>Enter New Notice</h2><br>

        <form action="insert" method="post" id="myForm">
    
            <div class="form-group">
                <label for="noticeID">Notice ID:</label>
                <input type="number" name="noticeID" required>
            </div>
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" name="title" required>
            </div>
            <div class="form-group">
                <label for="postDate">Post Date:</label>
                <input type="date" name="postDate" required>
            </div>
            <div class="form-group">
                <label for="expiryDate">Expiry Date:</label>
                <input type="date" name="expiryDate" required>
            </div>
            <div class="form-group">
                <label for="notice">Notice:</label>
                <textarea name="notice" required></textarea>
            </div>
            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" name="author" required>
            </div>
                
            <button type="submit" class="signup-btn" id="submit">Add Notice</button>
    
    
            </form>
    
        </div>
        
        <script>
            const form = document.getElementById('myForm');
            const postDateInput = document.getElementById('postDate');
            const expiryDateInput = document.getElementById('expiryDate');

            form.addEventListener('submit', function(event) {
                const selectedPostDate = new Date(postDateInput.value);
                const selectedExpiryDate = new Date(expiryDateInput.value);
                const currentDate = new Date();

                if (selectedPostDate > currentDate) {
                    alert('Please select a valid post date!');
                    event.preventDefault(); // Prevent form submission
                } else if (selectedExpiryDate < currentDate) {
                    alert('Please select a valid expiry date!');
                    event.preventDefault(); // Prevent form submission
                } else if (selectedExpiryDate < selectedPostDate) {
                    alert('Expiry date must be after post date!');
                    event.preventDefault(); // Prevent form submission
                }
            });
        </script>

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
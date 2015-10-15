<%-- 
    Nathan Ryan x13448212 BSHC2A 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign up page</title>
</head>
<body>
<center>
<h1>Thank you for signing up to the Email newsletter !</h1>
<h2>Your details have been saved, thank you !</h2>
<ul>
<li><p><b>First Name:</b>
   <%= request.getParameter("fname")%>
</p></li>
<li><p><b>Last  Name:</b>
   <%= request.getParameter("lname")%>
</p></li>
<li><p><b>Email:</b>
   <%= request.getParameter("email")%>
</p></li>
</ul>
<form action="home">
        <h1><center>Return Home</center></h1>
        <center><input type="Submit" value ="Home"></center>
        </form>
</body>
</html>
<!-- Adapted from http://www.tutorialspoint.com/jsp/jsp_form_processing.htm -->

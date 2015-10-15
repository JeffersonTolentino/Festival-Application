<%-- 
    Document   : index
    Created on : 12-Nov-2014, 11:18:41
    Author     : Nathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Festival App</title>
        <script language="javascript" type="text/javascript" src="js/countdown.js"></script>
    </head>
    <body>
        <form action="home">
        <h1><center>Welcome to the Festival Site!</center></h1>
        <center><img src="mainstage.jpg" /></center>
        <center><input type="Submit" value ="Enter"></center>
        </form>
    <center>
        <h1><script>document.write(daysLeft);</script> Days Until The Festival !</h1>
    </center>
    </body>
</html>

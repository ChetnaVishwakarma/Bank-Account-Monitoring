<%-- 
    Document   : adminLogin
    Created on : Oct 19, 2016, 5:41:58 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="indesxsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
        
    <center>
        <h1>Admin Login</h1>
        <br>
        <form action="adminLogin11.jsp" method="post">
            <fieldset style="height:auto;width:350px">
                <br>
            Enter username: <input type="text" name="admin" required/><br/>
            <br>
            Enter password: <input type="password" name="pwd" required/><br/>
            <br>
            <input type="submit" name="Login" value="Login" />
             <button onclick="location.href='home.jsp'">Home</button>
            </fieldset>
        </form>
        </center>
    </body>
</html>

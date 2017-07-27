<%-- 
    Document   : Login
    Created on : Oct 9, 2016, 4:29:42 PM
    Author     : dashmeetkaur
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="indesxsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    <center>
        <h1><font color="#ffe4e1">LOGIN</font></h1>
        <br>
        <form  action="Login11.jsp" method="post">
            <fieldset style="height: auto;width: 350px">
                <br/>
            Enter Customer Id: <input type="number" name="custId"/><br/><br/>
            Enter Password: <input type="password" name="pwd"/><br/><br/>
            <input type="submit" name="login" value="Login">
            <input type="button" value="HomePage" name="Homepage" onclick="location.href='home.jsp'"/>
            </fieldset>
        </form>
        </center>
    </body>
</html>
        
   

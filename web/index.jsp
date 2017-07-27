<%-- 
    Document   : index
    Created on : Oct 13, 2016, 7:29:17 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="indesxsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Open Account</title>
    </head>
    <body>
        <h1></h1>
    <center>  
        <form action="index1.jsp">  
            <fieldset style='width:350px;height:auto'>
                <legend align='top'>OPEN ACCOUNT</legend>
                <h2>Select Account Type</h2>
                <h3> <input type="radio" name="type" value="Savings" checked>Savings Account</h3><br>
            <h3> <input type="radio" name="type" value="Current">Current Account</h3><br>
            <input type="submit" value="Apply"/>  <input type="button" value="HomePage" name="Homepage" onclick="location.href='home.jsp'"/>
            </fieldset>
</form>  
        </center>
    </body> 
</html>

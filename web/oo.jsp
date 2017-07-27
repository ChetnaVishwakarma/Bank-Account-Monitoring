<%-- 
    Document   : oo
    Created on : Oct 16, 2016, 12:07:49 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loginsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Open Accounts</title>
    </head>
    <body>
    <center>
        <h1>Enter customer Id to open the account</h1>
        <form action="process2.jsp">
        Customer Id :<input type="text" name="customerid" required/><br/><br>
        <input type="submit" value="Open Account"/>  
        </form>
        </center>
    </body>
</html>

<%-- 
    Document   : searchbyDate
    Created on : Oct 15, 2016, 11:11:37 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="new.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Details</title>
    </head>
    <body>
    <center>
        <h1>
        <form action="dateTrans.jsp" method="post">
            Select date: <input type="date" name="dot"/>
            <input type="submit" value="Search"/>
        </form>
            
  
        
           
       <br/> <button onclick="location.href='adminMenu.jsp'">Main Menu</button>
       </h1>
          </center>
    </body>
</html>

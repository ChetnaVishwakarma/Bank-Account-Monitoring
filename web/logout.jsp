<%-- 
    Document   : logout
    Created on : Oct 13, 2016, 9:40:00 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <center>
        <h1>
        <% session.setAttribute("custId",-1);
            session.setAttribute("accNo",-1);
            session.setAttribute("session","false");
        %>
            <jsp:include page="home.jsp"/><br/><br/>
           
        </h1>
        </center>
    </body>
</html>

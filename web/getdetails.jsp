<%-- 
    Document   : getdetails
    Created on : Oct 15, 2016, 8:02:07 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="new.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>See Transactions</title>
    </head>
    <body>
        <center>
        <h1>See Transactions</h1>
        <form action="seetransactions.jsp" method="post">
            Enter Account No: <input type="number" name="aNo"/><br/><br/>
            <%-- <% String aid=request.getParameter("acc");%> --%>
            <input type="submit" name="Get details" value="Get Details"/>
        </form>
            <br/>
            <button onclick="location.href='adminMenu.jsp'">Main Menu</button>
        </center>
    </body>
</html>

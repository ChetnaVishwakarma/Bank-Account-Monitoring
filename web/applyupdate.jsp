<%-- 
    Document   : applyupdate
    Created on : Oct 16, 2016, 1:02:13 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="updatesty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
    <center>
        <h2>Request for Updation</h2>
        <br>
        <h3>Check your customer Id</h3>
        <h4>
        <br>
        <% int id=Integer.parseInt(session.getAttribute("custId").toString()); %>
        <form action="process3.jsp">
            Customer Id :<input type="number" name="customerid"  value="<%= id%>"  readonly/><br/><br>


<input type="submit" value="Update"/>


</form>
            <button onclick="location.href='LoginMenu.jsp'">Cancel</button>
        </h4>
    </center>
    </body>
</html>

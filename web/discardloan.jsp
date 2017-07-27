<%-- 
    Document   : discardloan
    Created on : Dec 3, 2016, 3:59:43 PM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link type="text/css" rel="stylesheet" href="new1.css"/>
    
    <body>
    <center>
         <% Connection con=ConnectionProvider.getCon();
           String sql="delete from loan where status='not granted'";
           Statement smt=con.createStatement();
           int count=smt.executeUpdate(sql);
           if(count>0)
           { %> 
            Loan Requests deleted!!
           <% } else
            { %>
                Some error occurred.Try later!! 
            <% }
            %>
     <br><br/>
    <button onclick="location.href='adminMenu.jsp'">Home</button>
    </center>
    </body>


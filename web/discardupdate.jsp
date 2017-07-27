<%-- 
    Document   : discardupdate
    Created on : Dec 3, 2016, 2:49:15 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet" href="new1.css"/>

    <body>
    <center>
        <% Connection con=ConnectionProvider.getCon();
           String sql="delete from customern";
           Statement smt=con.createStatement();
           int count=smt.executeUpdate(sql);
           if(count>0)
           { %> 
            Requests deleted!!
           <% } else
            { %>
                Some error occurred.Try later!! 
            <% }
            %>
     <br><br/>
    <button onclick="location.href='adminMenu.jsp'">Home</button>
    </center>
    </body>


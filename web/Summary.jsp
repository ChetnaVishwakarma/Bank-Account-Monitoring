<%-- 
    Document   : Summary
    Created on : Oct 13, 2016, 9:13:18 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loginsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Summary</title>
    </head>
    <body>
        <h1 style="text-align: center;color: #f5fffa">Account Summary</h1>
    <center style="color: #fffaf0">
        <h2>
        <%
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select * from Customer where customerId=?");
            int id=Integer.parseInt(session.getAttribute("custId").toString());
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                out.print("<br/>CustomerId: "+rs.getInt("customerId"));
                out.print("<br/>CustomerName: "+rs.getString("Fname")+" "+rs.getString("Lname"));
                //out.print("<br/>Birthdate: "+rs.getDate("Bdate"));
                out.print("<br/>Address: "+rs.getString("address"));
                out.print("<br/>Phone no: "+rs.getInt("phoneno"));
                out.print("<br/>Email id: "+rs.getString("email")+"<br/>");
            }
            ps=con.prepareStatement("Select * from Account where custId=? and accNo=?");
            int aNo=Integer.parseInt(session.getAttribute("accNo").toString());
            ps.setInt(1,id);
            ps.setInt(2,aNo);
            rs=ps.executeQuery();
            if(rs.next())
            {
                out.print("<br/>Account no: "+aNo);
                out.print("<br/>Status: "+rs.getString("status"));
                out.print("<br/>Openning Date: "+rs.getDate("openDate"));
                out.print("<br/>Type: "+rs.getString("type"));
                out.print("<br/>Balance(in Rs): "+rs.getInt("balance"));
            }
            rs.close();
            ps.close();
        %>
        </h2>
   
        <br/><br/>
        <a href="LoginMenu.jsp"><h3>Go back to Login Menu</h3></a>
         </center>
    </body>
</html>

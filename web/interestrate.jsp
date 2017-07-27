<%-- 
    Document   : interestrate
    Created on : Oct 16, 2016, 10:11:44 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="intereststy.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interest Rates</title>
    </head>
    <body>
    <center>
        <h1>Interest Rate</h1>
        <% 
            Connection con=ConnectionProvider.getCon();
            Statement smt=con.createStatement();
            String sql="select * from loanInterest";
            ResultSet rs=smt.executeQuery(sql);
            %>
            <h3> 
                <table border="1" cellpadding="3px" cellspacing="3px">
                <tr>
                    <th>Loan Type</th>
                    <th>Interest Rate</th>
                </tr>
                <%
            while(rs.next())
            {%>
            <tr>
                <td><%= rs.getString("type")%></td>
                <td align='right'><%= rs.getInt("interestRate")%></td>
            </tr> 
          <%  }%>
            </table>
            <br/></h3>
            <button onclick="history.go(-1)">Back</button>
    </center>
    </body>
</html>

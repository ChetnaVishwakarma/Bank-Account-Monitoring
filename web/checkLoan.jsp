<%-- 
    Document   : checkLoan
    Created on : Oct 12, 2016, 10:18:30 PM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Pack.ConnectionProvider"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Status</title>
    </head>
    <body>
    <center>
        <h1>Loan Status</h1>
        <h3>
        <% int actNo=Integer.parseInt(session.getAttribute("accNo").toString());
            
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select loanId,amount,dateRequested,status,type,timePeriod,dateGranted,amtPaid from loan natural join loanPaid where accountNo=?");
            ps.setInt(1,actNo);
            ResultSet rs=ps.executeQuery();
            if(!rs.next())
            {    out.print("<br/>Not applied for any loan<br/>");
            }
            else
            {
            rs.beforeFirst();
            %>
            <table border="1" cellpadding="3px" cellspacing="3px">
                <tr>
                    <th>Loan Id</th>
                    <th>Amount(in Rs)</th>
                    <th>Date Requested</th>
                    <th>Type</th>
                    <th>Time Period</th>
                    <th>Date Granted</th>
                    <th>Status</th>
                    <th>Amount Paid(in Rs)</th>
                </tr>
            <%
            while(rs.next())
            {
                %>
                <tr>
                    <td><%= rs.getInt("loanId")%></td>
                    <td align="right"><%= rs.getInt("amount")%></td>
                    <td><%= rs.getDate("dateRequested")%></td>
                    <td><%= rs.getString("type")%></td>
                    <td><%= rs.getInt("timePeriod")%></td>
                    <td><%= rs.getDate("dateGranted")%></td>
                    <td><%= rs.getString("status")%></td>
                    <td align="right"><%= rs.getInt("amtPaid")%></td>
                </tr>
                <%
            }}
            rs.close();
            ps.close();
        %></table>
        
        <br/>
        <button onclick="history.go(-1)">Go back</button></h3>
    </center>
    </body>
</html>

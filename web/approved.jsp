<%-- 
    Document   : approved.jsp
    Created on : Oct 13, 2016, 10:08:52 PM
    Author     : dashmeetkaur
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Pack.ConnectionProvider"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Approved Loans</title>
    </head>
    <body>
        <center>
        <h1>Loans</h1>
        <% Connection con=ConnectionProvider.getCon();
        
            Statement smt=con.createStatement();
            String sql="Select Loan.*,l.amtPaid,l.tAmount-l.amtPaid as RemainingAmount from Loan natural join LoanPaid as l where status='granted'";
            
            ResultSet rs=smt.executeQuery(sql);
            if(!rs.next())
            {
                out.print("<br/>No loans approved yet");
            }
            else{ rs.beforeFirst();
        %>
            <table border="1" cellspacing="3px" cellpadding="3px">
                <tr>
                    <th>Loan Id</th>
                    <th>Account No</th>
                    <th>Type</th>
                    <th>Date Requested</th>
                    <th>Date Granted</th>
                    <th>Time Period</th>
                    <th>Total Amount(in Rs)</th>
                    <th>Amount Paid(in Rs)</th>
                    <th>Amount Remaining(in Rs)</th>
                </tr>
                <%
                while(rs.next())
                {%>
                    <tr>
                        <td><%= rs.getInt("loanId")%></td>
                        <td><%= rs.getInt("accountNo")%></td>
                        <td><%= rs.getString("type")%></td>
                        <td><%= rs.getDate("dateRequested")%></td>
                        <td><%= rs.getDate("dateGranted")%></td>
                        <td><%= rs.getInt("timePeriod")%></td>
                        <td><%= rs.getInt("amount")%></td>
                        <td><%= rs.getInt("amtPaid")%></td>
                        <td><%= rs.getInt("RemainingAmount")%></td>
                    </tr>
                    <%}
                    }%>
                    <br/><br/>
                    <br/>
                    <a href="adminMenu.jsp">Go back to Menu</a>
        </center>
         </body>
</html>

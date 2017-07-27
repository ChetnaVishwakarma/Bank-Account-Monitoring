<%-- 
    Document   : approve
    Created on : Oct 15, 2016, 3:41:40 PM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Approval</title>
    </head>
    <body>
        <center>
        <h1>Approve Loans</h1>
        <%
            Connection con=ConnectionProvider.getCon();
            Statement smt=con.createStatement();
            String sql="select * from loan where status='not granted'";
            ResultSet rs=smt.executeQuery(sql);
            if(!rs.next())
            {
                out.print("<br/>No loans to approve yet!!");%>
                <a href="adminMenu.jsp">Go back to Menu</a>
              <%  
            }
            else
            {
                rs.beforeFirst();
                %>
            <table border="1" cellspacing="3px" cellpadding="3px">
                <tr>
                    <th>Loan Id</th>
                    <th>Account No</th>
                    <th>Type</th>
                    <th>Date Requested</th>
                    <th>Time Period</th>
                    <th>Total Amount(in Rs)</th>
                </tr>
                <%
               while(rs.next())
                {%>
                    <tr>
                        <td><%= rs.getInt("loanId")%></td>
                        <td><%= rs.getInt("accountNo")%></td>
                        <td><%= rs.getString("type")%></td>
                        <td><%= rs.getDate("dateRequested")%></td>
                        <td><%= rs.getInt("timePeriod")%></td>
                        <td><%= rs.getInt("amount")%></td>
                    </tr>
                    <%  } %></table>
                    <form action="loanapproved.jsp" method="post">
                        <br/>
            Enter loan id to approve: <input type="number" name="id"/><br/>
            <input type="submit" value="Approve"/>
            
                    </form>
                    <br><br/>
                    <button onclick="location.href='discardloan.jsp'">Discard all loan requests</button>
                    <br/><br/>
                    <button onclick="location.href='adminMenu.jsp'">Main Menu</button>
                   
             <%}%>
             </center>
    </body>
</html>

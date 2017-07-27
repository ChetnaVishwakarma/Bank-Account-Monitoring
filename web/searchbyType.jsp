<%-- 
    Document   : searchbyType
    Created on : Oct 15, 2016, 10:32:11 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="new.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Details</title>
    </head>
    <body>
        <center>
        <h1>
            <form action="#" method="post">
            Select account type: <br/>
            <input type="radio" name="type" value="savings"/>Savings<br/>
            <input type="radio" name="type" value="current"/>Current<br/>
            <input type="submit" value="Get Account Details"/>
        </form>
        <%
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select * from account where type=?");
            ps.setString(1,request.getParameter("type"));
            ResultSet rs=ps.executeQuery();
            if(!rs.next())
            {
                out.print("<br/>No such accounts exists!!");
            }
            else
            {
            rs.beforeFirst();%>
            <br/><br/>
            <table border="1" cellspacing="3px" cellpadding="3px">
                <tr>
                    <th>Account No</th>
                    <th>Customer Id</th>
                    <th>Open Date</th>
                    <th>Close Date</th>
                    <th>Status</th>
                    <th>Balance</th>
                </tr>
            <%
            while(rs.next())
            {
                %>
                <tr>
                    <td><%=rs.getInt("accNo") %></td>
                    <td><%=rs.getInt("custId") %></td>
                    <td><%=rs.getDate("openDate") %></td>
                    <td><%=rs.getDate("closeDate")%></td>
                    <td><%=rs.getString("status") %></td>
                    <td><%=rs.getInt("balance") %></td>
                </tr>
            <% } %>
            </table>
            <% }
        %>
       <br/> <button onclick="location.href='adminMenu.jsp'">Main Menu</button>
       </h1>
        </center>
    </body>
</html>

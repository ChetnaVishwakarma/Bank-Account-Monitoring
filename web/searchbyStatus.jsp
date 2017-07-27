<%-- 
    Document   : searchbyStatus
    Created on : Oct 15, 2016, 9:39:17 PM
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
            Select status: <br/>
            <input type="radio" name="status" value="active"/>Active<br/>
            <input type="radio" name="status" value="inactive"/>Inactive<br/>
            <input type="submit" value="Get Account Details"/>
        </form>
        <%
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select * from account where status=?");
            ps.setString(1,request.getParameter("status"));
            ResultSet rs=ps.executeQuery();
            if(!rs.next())
            {
                out.print("<br/>No such accounts exists!!");
            }
            else
            {
            rs.beforeFirst();%>
            <br/>
            <br/>
            <table border="1" cellspacing="3px" cellpadding="3px">
                <tr>
                    <th>Account No</th>
                    <th>Customer Id</th>
                    <th>Open Date</th>
                    <th>Type</th>
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
                    <td><%=rs.getString("type") %></td>
                    <td><%=rs.getInt("balance") %></td>
                </tr>
            <% } %>
            </table>
            <% }
        %>
       <br/><br/> <button onclick="location.href='adminMenu.jsp'">Main Menu</button>
       </h1>
    </center>>
    </body>
</html>

<%-- 
    Document   : dateTrans
    Created on : Oct 16, 2016, 10:30:27 PM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="new.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transactions</title>
    </head>
    <body>
        <center>
        <h1>Transactions</h1>
        <%
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select * from transfer where DateOfTransaction=?");
            String dt=request.getParameter("dot");
            java.text.DateFormat df=new java.text.SimpleDateFormat("yyyy-MM-dd");
            java.util.Date d1= df.parse(dt);
            java.sql.Date td=new java.sql.Date(d1.getTime());
            ps.setDate(1,td);
            ResultSet rs=ps.executeQuery();
            if(!rs.next())
            {
                out.print("<br/>No transactions were made on this date!!");
            }
            else
            {
            rs.beforeFirst(); %> 
            <br/><br/>
            <table border="1px" cellpadding="1px" cellspacing="1px">
                <tr>
                    <th>Account From</th>
                    <th>Account To</th>
                    <th>Amount(in Rs)</th>
                </tr>
            <%
            while(rs.next())
            { %>
                
                <tr>
                    <td><%=rs.getInt("aFrom") %></td>
                    <td><%=rs.getInt("aTo") %></td>
                    <td><%=rs.getInt("amount") %></td>
                </tr>
             
            
             <%}
            }
            
                    
             %>
             
             </table>
             <br>
             <br>
             <button onclick="location.href='adminMenu.jsp'">Main Menu</button>
        </center>
    </body>
</html>

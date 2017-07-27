<%-- 
    Document   : seetransactions
    Created on : Oct 11, 2016, 12:58:46 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page import="Pack.ConnectionProvider.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="transfersty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>See Transactions</title>
    </head>
    <body>
        <center>
        <h1>Transactions</h1>
        <% //int aNo=Integer.parseInt(session.getAttribute("accNo").toString());
          //  SeeTransactions.seeTrans(aNo);
         int aNo=Integer.parseInt(request.getParameter("aNo"));
          out.println("<h3>Your AccountNo: "+ aNo+"<br/></h3>");
          //try{
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select * from transfer where aFrom=?");
            ps.setInt(1,aNo);
            
            ResultSet rs=ps.executeQuery();
             out.print("<h5>Money transferred from your account:<br/></h5>"); 
            if(!rs.next())
            {
                out.print("<br/><br/>No transactions yet!!");
            }
            else{
            rs.beforeFirst();
            %>
            <table border="1" cellpadding="3px" cellspacing="3px">
                <tr>
                    <th>Account To</th><th>Date Of Transaction(in Rs)</th><th>Amount </th>
                </tr>
                <% int total=0;
                while(rs.next())
                {
                %>
                <tr>
                    <td><%= rs.getInt("aTo") %></td>
                    <td><%= rs.getDate("DateOfTransaction") %></td>
                    <td align="right"><%= rs.getInt("amount") %></td>
                    
                    <% total=total+rs.getInt("amount");%>
                </tr>
                <%
                }
                %>
                <tr>
                    <td colspan="2">Total Amount(in Rs) </td>
                    <td align="right"><%= total %></td>
                </tr>
                <% }
                %>
            </table>
            <br/><br/>
            <% out.print("<h5>Money transferred to your account:<br/></h5>");
            ps=con.prepareStatement("Select * from transfer where aTo=?");
            ps.setInt(1,aNo);
            
            rs=ps.executeQuery();
            
            if(!rs.next())
            {
                out.print("<br/><br/>No transactions yet!!");
            }
            else{
            rs.beforeFirst();
            %>
            <table border="1" cellpadding="3px" cellspacing="3px">
                <tr>
                    <th>Account From</th><th>Amount</th><th>Date Of Transaction</th>
                </tr>
                <% int total=0;
                while(rs.next())
                {
                %>
                <tr>
                    <td><%= rs.getInt("aFrom") %></td>
                    <td><%= rs.getDate("DateOfTransaction") %></td>
                    <td align="right"><%= rs.getInt("amount") %></td>
                  
                    <% total=total+rs.getInt("amount"); %>
                </tr>
                <%
                }
                    %>
                <tr>
                    <td colspan="2">Total Amount</td>
                    <td align="right"><%= total %></td>
                </tr>
                <% }
                %>
            </table>
            <%
                rs.close();
                ps.close();
        //}
        //catch(Exception e)
        //{}
        //finally{
            //con.close();
        
    //}
    %><br/><br/>
    <%--<a href="LoginMenu.jsp">Go back to Main Menu</a> --%>
    <input TYPE="button" VALUE="Back" onClick="history.go(-1);">
        </center>
    </body>
</html>

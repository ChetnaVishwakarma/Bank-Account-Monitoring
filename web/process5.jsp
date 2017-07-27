<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page import="Pack.seeclose"%>  
 <link type="text/css" rel="stylesheet" href="closesty.css"/>
  <center style="color: white">
<%
Connection con=ConnectionProvider.getCon();
String sql="select * from close";
Statement smt=con.createStatement();
ResultSet rs=smt.executeQuery(sql);
if(!rs.next())
{
    out.print("No close account request!!");
}
else
{
    rs.beforeFirst();
    %>
    <table border="1" cellspacing="3px" cellpadding="3px">
        <tr>
            <td>Customer Id</td>
            <td>Reason</td>
        </tr>
        <% while(rs.next())
        { %>
        <tr>
            <td><%= rs.getInt("customerId") %></td>
            <td><%= rs.getString("reason") %></td>
        </tr>
        <% } %>
    </table >
    <form action="process6.jsp">
        Enter Customer id to close: <input type="number" name="id" required/>
        <input type="submit" name="submit" value="close"/>
    </form>
<% } %>

 
   
<br>
<br>
<%--<a href="cc.jsp">To close the accounts..Click here</a>--%>
<br>
<button onclick="location.href='adminMenu.jsp'">Home</button>
  </center>>
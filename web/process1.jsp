
  

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<br>
<link type="text/css" rel="stylesheet" href="loginsty.css"/>
<center>
<%
 out.println("Appication details are :<br><br>");  
 Connection con=ConnectionProvider.getCon();
 String sql="select * from customer c join account a on c.customerId=a.custId where a.status='inactive'";
 Statement smt=con.createStatement();
 ResultSet rs=smt.executeQuery(sql);
 if(!rs.next())
 {
     out.print("<br/>No new accounts request");
 }
 else
 {
     rs.beforeFirst();
     %>
     <table border="1" cellspacing="3px" cellpadding="3px">
         <tr>
             <th>Customer Id</th>
             <th>Customer Name</th>
             <th>Address</th>
             <th>Phone no</th>
             <th>Email</th>
             <%--<th>Birthdate</th>--%>
             <th>Account Id</th>
             <th>Type</th>
         </tr>
    <% while(rs.next())
     {%>
     <tr>
         <td><%= rs.getInt("customerId")%></td>
         <td><%= rs.getString("fname")+rs.getString("lname")%></td>
         <td><%= rs.getString("address")%></td>
         <td><%= rs.getInt("phoneno")%></td>
         <td><%= rs.getString("email")%></td>
         <%-- <td><%= rs.getDate("bdate")%></td>--%>
         <td><%= rs.getInt("accNo")%></td>
         <td><%= rs.getString("type")%></td>
     </tr>
     
     <% }%>
     </table><br/><br/>
     <button onclick="location.href='oo.jsp'">Open Account</button><br/><br/>
     <% } %>
     


<br/><br/>
<button onclick="location.href='adminMenu.jsp'">Home</button>
<br>
</center>>
<br>

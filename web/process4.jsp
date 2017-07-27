
  
<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<link type="text/css" rel="stylesheet" href="new2.css"/>
<center style="color: white">
<%
Connection con=ConnectionProvider.getCon();
Statement smt=con.createStatement();
String sql="select * from customern cn join customer c where cn.customerId=c.customerId";
ResultSet rs=smt.executeQuery(sql);
if(!rs.next())
{
    out.print("No update requests!!");
}
else
{
    rs.beforeFirst();%>
    <table border="1" cellspacing="3px" cellpadding="3px">
        <tr>
            <th>Customer Id</th>
            <th>Old name</th>
            <th>New name</th>
            <th>Old Address</th>
            <th>New Address</th>
            <th>Old Phoneno</th>
            <th>New Phoneno</th>
            <th>Old Email</th>
            <th>New Email</th>
        </tr>
        <% while(rs.next())
        {%>
        <tr>
            <td><%= rs.getInt("c.customerId")%></td>
            <td><%= rs.getString("c.fname") + rs.getString("c.lname")%></td>
             <td><%= rs.getString("cn.fname") + rs.getString("cn.lname")%></td>
             <td><%= rs.getString("c.address")%></td>
             <td><%= rs.getString("cn.address")%></td>
             <td><%= rs.getString("c.phoneno")%></td>
             <td><%= rs.getString("cn.phoneno")%></td>
             <td><%= rs.getString("c.email")%></td>
             <td><%= rs.getString("cn.email")%></td>
        </tr>
        <% }%>
    </table>
<br/><br/>
<form action='adupdate.jsp' method="post">
    Enter CustomerId to update details: <input type="number" name="id" required/><br/>
    <input type="submit" value="Update" name="Update"/>
</form>
<%   }%> 
<br><br/>
<button onclick="location.href='discardupdate.jsp'">Discard all requests</button>
<br><br/>
<button onclick="location.href='adminMenu.jsp'">Home</button>
<br>

</center>>
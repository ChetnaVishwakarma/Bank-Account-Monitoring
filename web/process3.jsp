    

<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="updatesty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
    <center>
        <%  
       // Class.forName("com.mysql.jdbc.Driver");
        Connection con=ConnectionProvider.getCon();
        PreparedStatement st=con.prepareStatement("select * from customer where customerid=?");
        int customerid=Integer.parseInt(session.getAttribute("custId").toString());
        st.setInt(1,customerid);
        
        ResultSet rs=st.executeQuery();
        
        rs.next();
        
        %>           
            

    <form action="update.jsp " method="get">  
        <fieldset style="height: auto;width: 350px">
            <legend>Update Form</legend>
        Customer id: <input type="number" name="customerId" value="<%= customerid %>" readonly/>
        <br>
        <br>
        First Name :<input type="text" name="fname" value="<%=rs.getString("fname")%>" onclick="this.value=''" required/><br/><br>

Last Name:<input type="text" name="lname"  value="<%=rs.getString("lname")%>" onclick="this.value=''" required/><br/>  <br>

Address :<input type="text" name="address"  value="<%=rs.getString("address")%>" onclick="this.value=''" required/><br/><br>

Phone no :<input type="text" name="phoneno"  value="<%= rs.getString("phoneno") %>" required/><br/><br>

Email :<input type="email" name="email"  value="<%=rs.getString("email")%>" onclick="this.value=''" required /><br/><br>

<%-- Birth Date :<input type="date" name="bdate"  value="<%= rs.getDate("date") %>"  required/><br/><br> --%>


<input type="submit" value="Submit"/>  
       
        </fieldset>
</form>  
<button onclick="location.href='LoginMenu.jsp'">Cancel</button>
    </center>
    </body>
</html>

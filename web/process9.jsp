


<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link type="text/css" rel="stylesheet" href="new1.css"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
         
        <%  
       // Class.forName("com.mysql.jdbc.Driver");
      //  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","root");
      Connection con=ConnectionProvider.getCon();
      Statement st=con.createStatement();
        String customerid=request.getParameter("customerid");
        
        ResultSet rs=st.executeQuery("select * from customer where customerid='"+customerid+"'");
%>           
            

    <form action="adupdate.jsp " method="get">  
        First Name :<input type="text" name="fname" value="<%=rs.getString("fname")%>" onclick="this.value=''" required/><br/><br>

Last Name:<input type="text" name="lname"  value="<%=rs.getString("lname")%>" onclick="this.value=''" required/><br/>  <br>

Address :<input type="text" name="address"  value="<%=rs.getString("address")%>" onclick="this.value=''" required/><br/><br>

Phone no :<input type="int" name="phoneno"  value="<%=rs.getString("phoneno")%>" onclick="this.value=''" required/><br/><br>

Email :<input type="email" name="email"  value="<%=rs.getString("email")%>" onclick="this.value=''" required /><br/><br>

Birth Date :<input type="date" name="bdate"  value="<%=rs.getString("date")%>" onclick="this.value=''" required/><br/><br>


<input type="submit" value="Submit"/>  
</form>  
        </center>
    </body>
</html>

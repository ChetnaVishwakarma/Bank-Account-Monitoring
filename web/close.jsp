

<%@page import="Pack.closeaccount"%>   
 
<html> 
    <link type="text/css" rel="stylesheet" href="closesty.css"/>
    <body>
    <center>
        <h4>
<%
    String reason=request.getParameter("reason");
int id=Integer.parseInt(session.getAttribute("custId").toString());
int status=closeaccount.close1(id,reason);  
  
out.println("Your application to close your account is successfully submitted");  %>
<br>

<br>
<br>

<a href="LoginMenu.jsp">Go to home page</a></h4>
    </center>
    </body>
</html> 
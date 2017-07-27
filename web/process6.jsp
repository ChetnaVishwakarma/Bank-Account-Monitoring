<%@page import="Pack.adminclose"%>  
<link type="text/css" rel="stylesheet" href="closesty.css"/>
<center>
<%
int id=Integer.parseInt(request.getParameter("id"));
//out.print(id);
int status=adminclose.cloacc(id);  
if(status>0)
{
out.println("Account is closed");  
}
else
{
    out.print("Error. Try Later");
}
%>  
<br>
<br>
<a href="adminMenu.jsp">Go back to home</a>
<br>

</center>
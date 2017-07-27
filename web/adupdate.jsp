

<%@page import="Pack.adupdation" %>
<link type="text/css" rel="stylesheet" href="new1.css"/>
<center>
<%
int id=Integer.parseInt(request.getParameter("id"));
int status=adupdation.upd(id);  
if(status>0)
{  
out.println("Details are successfully updated");  
}
else
{
    out.print("Something went wrong");
}
%>
<br>
<br>

    <a href="adminMenu.jsp">Go to home page</a>
</center>
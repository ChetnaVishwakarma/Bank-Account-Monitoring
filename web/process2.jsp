<%@page import="Pack.openacc"%>  
<link type="text/css" rel="stylesheet" href="loginsty.css"/>

<%-- <jsp:useBean id="obj" class="Pack.User"/>  
  
<jsp:setProperty property="customerid" name="obj"/>  --%>
  

<br>
<center>
    <h1>
<%

int custid=Integer.parseInt(request.getParameter("customerid"));
int status=openacc.acc(custid);  
if(status>0)  
{
 out.println("<br/>Account is opened");
}
else
{
    out.print("<br/>Something is wrong!! Try later");
}
%>
<br>
<button onclick="location.href='oo.jsp'">Do Again</button>
<br/><br/>
<button onclick="location.href='adminMenu.jsp'">Home</button>

</h1>
</center>

<%@page import="Pack.updation"%>   

<jsp:useBean id="obj" class="Pack.User"/>  
 
<jsp:setProperty property="*" name="obj"/>  
<html> 
    <link type="text/css" rel="stylesheet" href="updatesty.css"/>
    <body>
    <center>
        <h4>
<%
int id=Integer.parseInt(session.getAttribute("custId").toString());
int status=updation.upd(obj,id);  
if(status>0)
{
out.println("Update Details Form successfully submitted");  
 }
 else
 {
    out.print("Some error occurred");
 }
%>
<br>
<br>

<a href="LoginMenu.jsp">Go to home page</a>
        </h4>
    </center>
    </body>
</html>

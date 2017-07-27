<%-- 
    Document   : adminLogin11
    Created on : Oct 19, 2016, 5:46:06 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loginsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
    <center>
        <h1>Admin Login</h1>
        <h4>
        <% String ad=request.getParameter("admin");
           String pwd=request.getParameter("pwd");
           if(ad.equals("admin"))
           {
               if(pwd.equals("admin123"))
               {
                   %>      <jsp:forward page="adminMenu.jsp"/>
                
        <%
               }
               else{
                   out.print("Wrong password!!");
               }
               
           }
           else{
               out.print("Wrong user name!!");
           }
%><br/></h4>
        <button onclick="location.href='home.jsp'">Home</button>
    </center>
    </body>
</html>

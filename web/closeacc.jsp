<%-- 
    Document   : closeacc
    Created on : Oct 16, 2016, 10:13:51 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="closesty.css"/>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Close Account</title>
    </head>
    <body>
    <left><button onclick="location.href='LoginMenu.jsp'">Cancel</button></left>
    <center>
        
        <h2>Account No: <%=session.getAttribute("accNo")%></h2>
        <br>
        <h3>
        
            <form method="get" action="close.jsp">
            <fieldset style="height: auto;width:350px">
                <legend>Account Close Form</legend>
            Enter the reason to close your account:<br/>
                <textarea rows="4" cols="50" name="reason">     
            </textarea>
            
            <br></br>
            <input type="submit" value="Submit"/>  
            
            </fieldset>
</form>
        </h3>
    </center>
    </body>
</html>

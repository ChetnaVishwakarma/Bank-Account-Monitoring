<%-- 
    Document   : index1
    Created on : Oct 13, 2016, 8:19:44 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="indesxsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
    </head>
    <body>
    <center>
        <h1 ><font color="#ffe4e1">OPEN ACCOUNT</font></h1>
        <h3></h3>
         <form action="./Register" method="post" > 
             <fieldset style="height: auto;width: 450px">
                 <legend>Registration Form</legend>
             
             Account type: <input type="text" name="type" value="<%= request.getParameter("type")%>" readonly/> <br/><br/>   
             <% 
                if(request.getParameter("type").equals("Savings"))
                {
                    out.print("Interest Rate: 5%<br/><br/>");
                }
             
             %>
            First Name :<input type="text" name="fname" value=""  required/><br/><br>

            Last Name:<input type="text" name="lname"  value="" required/><br/><br>
                 
            Address :<input type="text" name="address"  value=""  required/><br/><br>

            Phone no :<input type="number" name="phoneno" required/><br/><br>

            Email :<input type="email" name="email"  value=""  required /><br/><br>

            <%-- Birth Date :<input type="date" name="bdate" required/><br/><br> --%>

            Password :<input type="password" name="password" maxlength="20" required/><br/><br>


                <input type="submit" value="Submit"/>  <input type="button" value="HomePage" name="Homepage" onclick="location.href='home.jsp'"/>
             </fieldset>
         </form>  
    </center>
    </body>
</html>

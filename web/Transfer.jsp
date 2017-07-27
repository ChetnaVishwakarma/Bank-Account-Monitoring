<%-- 
    Document   : Transfer.jsp
    Created on : Oct 10, 2016, 4:12:01 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="transfersty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Money</title>
    </head>
    <body>
<center>
        
            <h2>Customer Id <% out.print(request.getParameter("custId"));%></h2>
        <br>
        <form action="transfer1.jsp" method="post">
            <fieldset style="height: auto;width: 350px">
                
                <legend>Transfer Money</legend>
                
            Account No: <% int afrom=Integer.parseInt(session.getAttribute("accNo").toString());
            out.print(afrom);
            %><br/><br/>
            Enter Account no: <input type="number" name="ato" required=""/><br/>
            <br>
            Enter Amount: <input type="number" name="amount" required/><br/>
            <br>
            <input type="submit" name="Transfer" value="Transfer"/>
            <%--<input type="button" value="cancel" onclick=""/>--%>
            <button onclick="location.href='LoginMenu.jsp'">Cancel</button>
           
            </fieldset>
        </form>
          
</center>    
    </body>
</html>

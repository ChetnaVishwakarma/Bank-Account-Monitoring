<%-- 
    Document   : loanform
    Created on : Oct 11, 2016, 7:17:48 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan</title>
    </head>
    <body>
    <center>
        <h3>
            Loan for Account No:<% out.print(session.getAttribute("accNo").toString()); %></h3>
        <form action="loanConfirm.jsp" method="post">
            <fieldset style="height:auto; width:350px">
                <legend>Loan Form</legend>
            Select type:<br/>
            <input type="radio" name="type" value="business"/>Business
            <input type="radio" name="type" value="home"/>Home
            <br/><br/>
            Enter Amount: <input type="number" name="amount" required/><br/><br/>
            Enter Time Period(in months): <input type="number" name="timeperiod" required/><br/><br/>
            <input type="submit" name="Apply for Loan"/> 
            <button onclick="location.href='LoginMenu.jsp'">Cancel</button>
            </fieldset> 
        </form>
        
    </center>
    </body>
</html>

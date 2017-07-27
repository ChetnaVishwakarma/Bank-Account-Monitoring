<%-- 
    Document   : adminMenu
    Created on : Oct 13, 2016, 9:47:16 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loginsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Menu</title>
    </head>
    <body>
        <h1 style="color: white;font-family: Geneva;text-align: center">Welcome Admin</h1><br/><br/>
        <h2 style="color: white;font-family: Geneva;text-align: center">Menu</h3>
        <div id="b">
            <a href="process1.jsp"><i>Check the open account applications</i></a><br/><br/>
        </div>
        
        <div id="c">
            <a href="process4.jsp"><i>Check the update details request</i></a><br/><br/>
        </div>
        
        <div id="d">
            <a href="process5.jsp"><i>Check the application for closing the account</i></a><br/><br/>
        </div>
        
        <div id="e">
            <a href="approve.jsp"><i>Approve for Loans</i></a><br/><br/>
        </div>
        
        <div id="f">
            <a href="approved.jsp"><i>Approved Loan</i></a><br/><br/>
        </div>
        
        <div id="g">
            <a href="interestrate.jsp"><i>See Interest Rate</i></a><br/><br/>
        </div>
        
        <%--  <div id="l">
            <a href="updateSavingsBalance.jsp"><i>Pay Interest in Savings Account</i></a><br/><br/>
        </div>
        
        --%>
        
        <div id="h">
            <a href="getdetails.jsp"><i>Get details of a particular account</i></a><br/><br/>
        </div>
        
        <div id="i">
            <a href="searchbyStatus.jsp"><i>Search account by status</i></a><br/><br/>
        </div>
        
        <div id="j">
        
            <a href="searchbyType.jsp"><i>Search account by type</i></a><br/><br/>
        </div>
        
        <div id="k">
            <a href="searchbyDate.jsp"><i>See transactions of a particular date</i></a><br/><br/>
        </div>
        
        <div id="l">
            <a href="logout.jsp"><i>Logout</i></a><br/><br/>
        </div>
        
        
    </body>
</html>

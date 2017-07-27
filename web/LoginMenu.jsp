<%-- 
    Document   : LoginMenu
    Created on : Oct 10, 2016, 2:53:21 PM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loginsty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <h1></h1>
        <h2 style="text-align: center;color: #f5fffa">WELCOME
        <% String id=session.getAttribute("custId").toString();  
           //int i=Integer.parseInt(id);
           out.print("<br/>Customer Id: "+id);
           String aid=session.getAttribute("accNo").toString();
           
           out.print("<br/>Account No: "+aid);
        %>
        </h2>
         <br/><br/>
         <div id="b">
         <a href="Summary.jsp"><i>Summary</i></a><br/><br/>
         </div>
         
         <div id="c">
         <a href="Transfer.jsp?custId=<%= id%>"><i>Transfer Money</i></a><br/><br/>
         </div>
         
         <div id="d">
         <a href="seetransactions.jsp?aNo=<%= aid%>"><i>See Transactions</i></a><br/><br/>
         </div>
         
         <div id="e">
             <a href="interestrate.jsp"><i>See Interest Rate</i></a><br/><br/>
         </div>
         
         <div id="f">
             <a href="loanform.jsp"><i>Apply for Loan</i></a><br/><br/>
         </div>
         
         <div id="g">
             <a href="checkLoan.jsp"><i>Loan Details</i></a><br/><br/>
         </div>
         <%-- <a href="payloanform.jsp">Pay Loan</a><br/><br/> --%>
         
         <div id="h">
             <a href="applyupdate.jsp"><i>Update Details</i></a><br/><br/>
         </div>
         
         <div id="i">
             <a href="closeacc.jsp"><i>Close Account</i></a><br/><br/>
         </div>
         
         <div id="j">
             <a href="logout.jsp"><i>Logout</i></a><br/>
         </div>
    </body>
</html>

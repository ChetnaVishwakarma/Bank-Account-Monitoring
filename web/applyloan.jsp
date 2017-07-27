<%-- 
    Document   : applyloan
    Created on : Oct 11, 2016, 7:32:49 PM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Pack.ApplyLoan"%>
<!DOCTYPE html>
<html>
    <link type="text/css" rel="stylesheet" href="loansty.css"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
    <center>
        <h4>
        <jsp:useBean id="aloan" class="Pack.ApplyLoan">
            <jsp:setProperty property="amount" name="aloan"/>
            <jsp:setProperty property="type" name="aloan"/>
            <jsp:setProperty property="timeperiod" name="aloan"/>
        </jsp:useBean>
        <%
            int aNo=Integer.parseInt(session.getAttribute("accNo").toString());
            Connection con=ConnectionProvider.getCon();
            PreparedStatement p=con.prepareStatement("select loanId from loan where accountNo=?");
            PreparedStatement p1=con.prepareStatement("select loanId from loan where accountNo=? and status='granted' and lComplete='N'");
            p.setInt(1,aNo);
            p1.setInt(1,aNo);
            ResultSet rs = p.executeQuery();
            ResultSet rs1 = p1.executeQuery();
            if(!rs.next() || !rs1.next())
            { 
   
            int lid=aloan.applyLoan(aNo);
            if(lid>-1)
            {
                out.print("Applied for Loan.<br/>");
                out.println("Your Loan Id is: "+lid+"<br/>");
            }
            else
            {
                out.print("Something went wrong.Try again later<br/>");
            }}
            else {
                out.print("Sorry!! You already have a loan");
            }
       %>     
       <br/><br/>
    <a href="LoginMenu.jsp">Main Menu</a></h4>
    </center>
    </body>
</html>

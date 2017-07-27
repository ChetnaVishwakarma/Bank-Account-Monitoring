<%-- 
    Document   : payLoanform
    Created on : Oct 15, 2016, 2:53:04 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay Loan</title>
    </head>
    <body>
        <center>
        <h1>
        <%          out.print("<br/>Amount to be paid: "+request.getParameter("payamt"));
                    int payamt=Integer.parseInt(request.getParameter("payamt"));
                    int lid=Integer.parseInt(request.getParameter("lid"));
                    int accNo=Integer.parseInt(session.getAttribute("accNo").toString());
                    Connection con=ConnectionProvider.getCon();
                    PreparedStatement ps=con.prepareStatement("Select balance from account where accNo=?");
                    ps.setInt(1,accNo);
                    ResultSet r2=ps.executeQuery();
                    r2.next();
                    if(payamt>r2.getInt("balance"))
                    {
                        out.print("<br/>You don't have enough money to pay!!");
                        
                    }
                    else
                    {
                        PreparedStatement ps1=con.prepareStatement("update loanPaid set amtPaid=amtPaid+?, dateOfTransaction=? where loanId=?");
                        java.util.Date d=new java.util.Date();
                        java.sql.Date td=new java.sql.Date(d.getTime());
                       
                        ps1.setInt(1,payamt);
                        ps1.setDate(2,td);
                        ps1.setInt(3,lid);
                        
                        ps1.execute();
                        
                        ps=con.prepareStatement("update account set balance=balance-? where accNo=?");
                        ps.setInt(1,payamt);
                        ps.setInt(2,accNo);
                        ps.execute();
                        
                        Statement smt=con.createStatement();
                        String sql="update loan natural join loanPaid set lcomplete='Y' where tAmount=amtPaid";
                        smt.execute(sql);
                        
                        out.print("<br/>Your loan amount successfully paid");
                    }
                    
           %>
           <button onclick="location.href='LoginMenu.jsp'">Main Menu</button>
        </h1>
        </center>>
    </body>
</html>

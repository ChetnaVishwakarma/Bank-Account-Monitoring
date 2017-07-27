<%-- 
    Document   : payloan
    Created on : Oct 15, 2016, 2:36:45 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay loan</title>
    </head>
    <body>
        <center>
        <h1>Pay loan</h1>
        <% 
            int accNo=Integer.parseInt(session.getAttribute("accNo").toString());
            Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("Select loanId from loan where accountNo=? and lComplete='N'");
            ps.setInt(1,accNo);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                ps=con.prepareStatement("Select * from loanPaid where loanId=?");
                ps.setInt(1,rs.getInt("loanId"));
                ResultSet r1=ps.executeQuery();
                r1.next();
                out.print("<br/>Loan ID: "+r1.getInt("loanId"));
                out.print("<br/>Total amount: "+r1.getInt("tAmount"));
                out.print("<br/>Amount paid: "+r1.getInt("amtPaid"));
                out.print("<br/>Amount remaining to pay: "+(r1.getInt("tAmount")-r1.getInt("amtPaid")));
             %>
               <form action="payLoan.jsp" method="post">
            Enter amount to pay:
            <input type="number" name="payamt"/><br/>
            <input type="hidden" name="lid" value="<%=r1.getInt("loanId")%>"/>
            <input type="submit" name="Pay"/>
            </form>
               
               
                    
           <% }
            else
            {
                out.print("No loan to pay yet!!");
                
             } %>
            
         <button onclick="location.href='LoginMenu.jsp'">Main Menu</button>
        </center>>
    </body>
</html>

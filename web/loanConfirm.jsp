<%-- 
    Document   : loanConfirm
    Created on : Oct 26, 2016, 2:04:46 AM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Loan</title>
    </head>
    <body>
    <center>
        <h1>Confirm Loan</h1>
        <form action="applyloan.jsp" method="post">
             <fieldset style="height:auto; width:350px">
                <legend>Confirmation</legend>
            Loan Type: <input type="text" name="type" value="<%= request.getParameter("type")%>" readonly/><br/><br/>
            Loan Duration: <input type="number" name="timeperiod" value="<%= request.getParameter("timeperiod")%>" readonly/><br/><br/>
            Amount: <input type="number" name="amt" value="<%= request.getParameter("amount")%>" readonly/><br/><br/>
            <%
                Connection con=ConnectionProvider.getCon();
                PreparedStatement ps=con.prepareStatement("Select interestRate from loanInterest where type=?");
                String type=request.getParameter("type");
                ps.setString(1,type);
                ResultSet rs=ps.executeQuery();
                rs.next();
                int r=rs.getInt(1);
                int tp=Integer.parseInt(request.getParameter("timeperiod"));
                int amt=Integer.parseInt(request.getParameter("amount"));
                int tamt=amt+amt*r*tp/100;
            %>
            Interest Rate(%): <input type="number" name="rate" value="<%= r%>" readonly/><br/><br/>
            Amount to Pay: <input type="number" name="amount" value="<%= tamt%>" readonly/><br/><br/>
            <input type="submit" value="APPLY" name="apply"/>
            <button onclick="location.href='LoginMenu.jsp'">Cancel</button>
             </fieldset>
        </form>
    </center>
    </body>
</html>

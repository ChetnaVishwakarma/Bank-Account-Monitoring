<%-- 
    Document   : updateSavingsBalance
    Created on : Oct 26, 2016, 1:39:01 AM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay Interest- Savings Account</title>
    </head>
    <body>
        <h1>Pay Interest in Savings Account</h1>
        <% 
            Connection con=ConnectionProvider.getCon();
            Statement smt=con.createStatement();
            String sql="update account set balance=balance*(1.05) where type='Savings'";
            int success=smt.executeUpdate(sql);
            if(success>0)
            {
                out.print("Interest Paid to Savings Account.");
            }
            else
            {
                out.print("Error. Try later!!");
            }
        %>
        <br/><br/>
        <a href="adminMenu.jsp">Home</a>
    </body>
</html>

<%-- 
    Document   : loanapproved
    Created on : Oct 16, 2016, 6:53:23 PM
    Author     : dashmeetkaur
--%>

<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="loansty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan approved</title>
    </head>
    <body>
        <center>
        <h1>
        <%        int loanid=Integer.parseInt(request.getParameter("id").toString());
                     Connection con=ConnectionProvider.getCon();
                     out.print(loanid);
                     PreparedStatement ps=con.prepareStatement("update loan set status='granted' where loanId=?");
                     ps.setInt(1,loanid);
                     ps.execute();
                     
                     ps=con.prepareStatement("select amount from loan where loanId=?");
                     ps.setInt(1,loanid);
                     ResultSet rs=ps.executeQuery();
                     rs.next();
                     ps=con.prepareStatement("insert into loanPaid(loanId,amtPaid,tAmount) values (?,?,?)");
                     ps.setInt(1,loanid);
                     ps.setInt(2,0);
                     ps.setInt(3,rs.getInt("amount"));
                     ps.execute();
                     
                    out.print("Loan approved");
            %>
            <br/><br/>
            <jsp:forward page="approve.jsp"/>
            </h1>
        </center>>
    </body>
</html>

<%-- 
    Document   : transfer1
    Created on : Oct 10, 2016, 10:32:42 PM
    Author     : dashmeetkaur
--%>

<%@page import="java.sql.*"%>
<%@page import="Pack.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Pack.Transfer"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="transfersty.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
    <center>
        <h2>
          <jsp:useBean id="trans" class="Pack.Transfer"/>
            <jsp:setProperty property="ato" name="trans"/>
            <jsp:setProperty property="amount" name="trans"/>
            <jsp:setProperty property="afrom" name="trans" value="<%= session.getAttribute("accNo")%>"/>
           <% int result=trans.transferMoney();
               if(result==1)
               {
                   out.print("Transfer Successful");
                   int ano=Integer.parseInt(session.getAttribute("accNo").toString());
                   Connection con=ConnectionProvider.getCon();
                   PreparedStatement ps1=con.prepareStatement("select balance from account where accNo=?");
                   ps1.setInt(1,ano);
                   ResultSet rs1=ps1.executeQuery();
                   rs1.next();
                   out.print("<br/>You have Rs "+rs1.getInt(1)+" left in your account");
                   
               }
                else if(result==2)
                   out.print("Transfer Unsuccessful.<br/>Receipt account doesn't exists!!");
               else if(result==3)
                   out.print("Transfer Unsuccessful.<br/>You don't have enough balance!!");
               else 
                out.print("Transfer Unsuccessful.<br/>Internal error occured.Try later ");
           %> 
           <br/><br/></h2>
           <div id="z">
           <h3>  <a href="LoginMenu.jsp">Go to Main Menu</a></h3>
           
           </div>
    </center>
    </body>
</html>

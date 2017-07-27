<%-- 
    Document   : Login11
    Created on : Oct 10, 2016, 12:20:17 AM
    Author     : dashmeetkaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Pack.Login"%>
<link type="text/css" rel="stylesheet" href="loginsty.css"/>
<body>
<jsp:useBean id="obj" class="Pack.Login"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%--<jsp:setProperty property="custId" name="obj"/>
        <jsp:setProperty property="pwd" name="obj"/>--%>
<center>
        <% 
        int loginResult=obj.loginCheck();
        if(loginResult>0)
        {out.print("Login successful");
        //String id=String.valueOf(obj.getCustId());
        int id=obj.getCustId();
        session.setAttribute("session","TRUE");
        session.setAttribute("custId",id);
        session.setAttribute("accNo",loginResult);
        %>
        <jsp:forward page="LoginMenu.jsp">
        <jsp:param name="custId" value="<%= id%>"/>
        </jsp:forward>
        <%}
        else 
        {%> <jsp:include page="Login.jsp"/>
        <%  if(loginResult==-1)
            out.print("Wrong Password<br/>");
          else if(loginResult==-2)
            out.print("Wrong CustomerId<br/>");
          else if(loginResult==0) 
            out.print("Login Unsuccessful<br/>");
         } %>
</center>
</body> 

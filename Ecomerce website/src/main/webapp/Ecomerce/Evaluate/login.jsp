
<%@include file="SQL/sql.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%!String email,pwd;%>
    <%
        connect();
        email=request.getParameter("email");
        pwd=request.getParameter("pwd");
       
        
        ResultSet r3=login(email,pwd);
        if(r3!=null)
        session.setAttribute("Username",r3.getString(2));
        session.setAttribute("Id",r3.getString(1));
         response.sendRedirect("../index.jsp");
        
        closed();
        
        %>
    </body>
</html>


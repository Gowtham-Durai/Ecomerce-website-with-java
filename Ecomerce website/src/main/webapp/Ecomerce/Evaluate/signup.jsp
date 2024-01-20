
<%@include file="SQL/sql.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%!String name,email,pwd;%>
      <%
        connect();
        name=request.getParameter("name");
        email=request.getParameter("email");
        pwd=request.getParameter("pwd");
        out.println(request.getParameter("name"));
        out.println(request.getParameter("email"));
        out.println(request.getParameter("pwd"));
       if(pwd!=null){
        if(!pwd.strip().equals("")){
             create("insert into users values(null,'"+name+"','"+pwd+"','"+email+"')");
            out.println("inserted");
          }
          }
        
         response.sendRedirect("../index.jsp");
// ResultSet r=getAllUser();
//        
//        while(r.next()!=false){
//            
//            out.println("->"+r.getString(3));
//         
//        }
//        closed();
        %>
        
    </body>
</html>

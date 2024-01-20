
<%@page import="java.util.Objects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <div class="sidebar">
     <span class="material-symbols-outlined <%
        if(Objects.equals(request.getParameter("status"),"dashboard"))out.print("selected");
     %>" onclick="window.location.href='Dashboard.jsp?status=dashboard'">
                database
                </span>
        
            <span class="material-symbols-outlined <%
 if(Objects.equals(request.getParameter("status"),"new-product"))out.print("selected");%>" onclick="window.location.href='AddProduct.jsp?status=new-product    '">
                add_box
                </span>
</div>
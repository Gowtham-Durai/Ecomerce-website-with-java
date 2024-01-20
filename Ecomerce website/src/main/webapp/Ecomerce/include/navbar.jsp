<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
int url = request.getRequestURL().indexOf("include");
if(url!=-1)response.sendRedirect("notfound.jsp");
%>

<div class="navbar">
            <a class="logo" href="index.jsp"><span >Gi</span> <span>Shop</span> </a>
            <div class="search">
                <input type="text" placeholder="Search Product...">
                 <div><span class="material-symbols-outlined">search</span></div>
            </div>

            <div class="menu"  style="color: var(--BG);">
   <span class="menu-btn">
        <a href="<% 
                if(session.getAttribute("Username")!=null)
                        out.print("Portal/Dashboard.jsp");
                 else 
                        out.print("login.jsp");%>" class="btn">
        <span class="material-symbols-outlined">person</span>
        <% if(session.getAttribute("Username")!=null){ 
                out.println(session.getAttribute("Username")); }
            else { %><span class="nav-login-btn">Login</span><% }%></a> 
    </span>
        

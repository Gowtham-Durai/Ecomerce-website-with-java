<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Evaluate/SQL/sql.jsp"%>

  <%  if(request.getParameter("status")==null){
    response.sendRedirect("Dashboard.jsp?status=dashboard");}
    %>
 
    
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />   
    <link rel="stylesheet" href="../Css/style.css">
    <link rel="stylesheet" href="../Css/product.css">
    <link rel="stylesheet" href="../Css/navbar.css">
    <link rel="stylesheet" href="../Css/scroll.css">
    <link rel="stylesheet" href="../Css/dashboard/sidebar.css">
    <link rel="stylesheet" href="../Css/dashboard/status.css">
</head>
<body>
    <div class="navbar">
        <a class="logo" href="../index.jsp"><span >Gi</span> <span>Shop</span> </a>
        <div>
           
        </div>

        <div class="menu"  style="color: var(--BG);">
<span class="menu-btn">
    <a href="login.jsp"  class="btn">
    <span class="material-symbols-outlined">person</span>
    <span class="nav-login-btn">Login</span></a>
</span>
    


    </div>

    </div>
    
    <div class="dashboard-frame">

        <%@include file="../include/sidebar.jsp" %>
        <div class="dashboard">
            <div class="Product-status ">
                <form action="">
                    <table>
                        <thead>
                            <tr>
                            <th>Id</th>
                            <th></th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Stock</th>
                            <th>Modify</th>
                            </tr>
                        </thead>
                        <tbody class="scroll">
                            <% int i=1;%>
                            <%
                            connect();
                           ResultSet product=getAllProduct();
                              
                          
                            if(product!=null){
                            while(product.next()!=false){
                            %>
                            <tr>
                                <td><%= i%></td>
                                <td>
                                    <img src="${
                                         pageContext.request.contextPath
                                            }" alt="">
                                </td>
                                <td><%= product.getString("pname")%></td>
                                <td>₹<%= rupeeFormat(product.getString("price"))%>/-</td>
                                <td>100</td>
                                <td>
                                    <span class="material-symbols-outlined edit">edit</span>
                                    <span class="material-symbols-outlined delete">delete</span>
                                </td>
                            </tr>
<% 
    
i++;
   }}
%>
                        </tbody>
                    </table>

                </form>
            </div>
        </div>
        
    
    </div>
    <!--</div>-->



</body>
</html>
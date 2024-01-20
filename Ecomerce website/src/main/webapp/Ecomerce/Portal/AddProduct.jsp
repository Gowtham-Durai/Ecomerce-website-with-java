<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../Css/dashboard/addproduct.css">
</head>
<body>
    <%out.println(session.getAttribute("Id"));%>
    <%
    
    if(request.getParameter("status")==null){
    response.sendRedirect("AddProduct.jsp?status=new-product");}
    %>
    <div class="navbar">
        <a class="logo" href="index.jsp"><span >Gi</span> <span>Shop</span> </a>
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
            <div class="AddProduct scroll">
                <!---->
                <form onsubmit="return mySubmitFunction(event)" name="form"class="upload-form" method="post" enctype="multipart/form-data">
                                    <div class="upload " >
                                         <input type="file" style="display:none;" class="file" name="file">
                                        <span class="material-symbols-outlined" >
                                            cloud_upload
                                            </span>
                                    </div>

                                    <div class="details">
                                        <label for="pname">Product name:</label> <input type="text" name="pname" id="pname">
                                        <label for="price">Price:</label> <input type="text" name="price" id="price"> 
                                        <label >Rating:</label>
                                        <input type="hidden"  name="rate" class="rate" id="rate" value="500">
                                        <p class="price rating">
                                            <span rate="1">☆</span>
                                            <span rate="2">☆</span>
                                            <span rate="3">☆</span>
                                            <span rate="4">☆</span>
                                            <span rate="5">☆</span>
                                        </p>
                                        <button >Add Product</button>
                                    </div>

                                    <div class="description ">
                                        <label for="description">Description:</label>
                                        <textarea name="description" id="description" cols="30" rows="10"></textarea>
                                    </div>

                        </form>
              


            </div>
        </div>
        
    
    </div>
    </div>


    <script src="../Js/upload.js"></script>

</body>
</html>
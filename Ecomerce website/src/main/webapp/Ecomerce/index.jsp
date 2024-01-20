<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shoping website</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />   
    <link rel="stylesheet" href="Css/style.css">
    <link rel="stylesheet" href="Css/product.css">
    <link rel="stylesheet" href="Css/navbar.css">
    <link rel="stylesheet" href="Css/scroll.css">
</head>
<body>
        <%@include file="include/navbar.jsp"%>
        
    <span class="menu-btn">
        <a href="" style="color: var(--BG);">
            <span class="material-symbols-outlined cart" style="user-select: none;">shopping_cart</span>
        </a>
    </span>

        </div>

        </div>
        
        <div class="shopping-frame scroll">
                <div class="shopping-product">
                    <div class="shopping ">
      

                        <%! int i; %>
                        <%for(i=1;i<=8;++i){ %>
                        <div class="product">
                            <img src="Product/<%out.print(i);%>.png" alt="">
                            <div class="details">
                                <p class="product-name">Casual Shoe<%out.print(i);%></p>
                                <p class="product-price">₹1,000</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 3 items</p>
                            </div>
                    
                        </div>
                    <%}%>
<!--                        <div class="product">
                            <img src="Product/3.png" alt="">
                            <div class="details">
                                <p class="product-name">Golden watch</p>
                                <p class="product-price">₹2,000</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 10 items</p>
                            </div>
                    
                        </div>
            
            
                        <div class="product">
                            <img src="Product/4.png" alt="">
                            <div class="details">
                                <p class="product-name">Sports Shoe</p>
                                <p class="product-price">₹5,000</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 2 items</p>
                            </div>
                    
                        </div>
            
            
                        <div class="product">
                            <img src="Product/5.png" alt="">
                            <div class="details">
                                <p class="product-name">Analog watch</p>
                                <p class="product-price">₹2,500</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 15 items</p>
                            </div>
                    
                        </div>
            
            
                        <div class="product">
                            <img src="Product/6.png" alt="">
                            <div class="details">
                                <p class="product-name">Sports bag</p>
                                <p class="product-price">₹1,500</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 5 items</p>
                            </div>
                    
                        </div>
            
            
                        <div class="product">
                            <img src="Product/7.png" alt="">
                            <div class="details">
                                <p class="product-name">LG Tv</p>
                                <p class="product-price">₹30,000</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 6 items</p>
                            </div>
                    
                        </div>
            
                        <div class="product">
                            <img src="Product/8.png" alt="">
                            <div class="details">
                                <p class="product-name">Vivo Y56 5g</p>
                                <p class="product-price">₹90,000</p>
                                <p class="product-rating">★★★☆☆</p>
                                <p class="product-stock">⦿ In stock 23 items</p>
                            </div>
                    
                        </div>
            -->
            
            
                   
                   
                   
                   
                   
                    </div>
            
                </div>

            <footer class="footer">

            </footer>
        </div>
        
</body>
</html>
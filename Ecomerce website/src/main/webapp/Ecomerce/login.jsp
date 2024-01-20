<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />   
<link rel="stylesheet" href="Css/scroll.css">   
<link rel="stylesheet" href="Css/navbar.css">
    <link rel="stylesheet" href="Css/log.css">
 
</head>
<body>
   
    <div class="navbar">
        <a class="logo" href="index.jsp"><span >Gi</span> <span>Shop</span> </a>
        <div class="search">
            <input type="text" placeholder="Search Product...">
            <div><span class="material-symbols-outlined">search</span></div>
        </div>
</div>
        
        <div class="log-frame scroll">

            <div class="log"> 
                <div class="log-img">
                    <img src="resource/login.svg" alt="">
                </div>
                    
                
                <div class="log-form">
                    <form action="Evaluate/login.jsp" method="post">
                            <label for="email">Email</label>
                            <input type="email" name="email" placeholder="Email..."> 
 
                            <label for="pwd">Password:</label>
                            <input type="password" name="pwd" placeholder="Password...">  

                            <button name="login" type="submit">Login</button>

                        <span class="hint">Don't have an account? 
                            <a href="signup.jsp">Sign in</a></span>
                    </form>

                </div>
                
            </div>

    
        
        </div>


    </div>
        
</body>
</html>
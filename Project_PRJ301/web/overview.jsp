<%-- 
    Document   : overview
    Created on : Mar 1, 2022, 4:27:56 PM
    Author     : MSI_PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            html {
                font-family: Helvetica, Arial;
            }
            
            #main{
                background-color: #000;
            }
            
            #header {
                height: 80px;
                background-color: #000;
                text-align: center; 
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                border-bottom: gold solid 1px;
            }
            
            #nav-header {
                display: inline-block;
            }
            
            #nav-header li {
                
            }
            
            #nav-header > li {
                display: inline-block;
            }
            
            #nav-header li:hover a {
                color: gold;
                background-color: #000;
            }
            
            #nav-header li a {
                text-decoration: none;
                line-height: 50px;
                padding: 0 24px;
                display: block;
            }
            
            #nav-header > li > a {
                color: #fff;
                text-transform: uppercase;
            }
            
            #header .login-btn {
                float: right;
                padding: 0 24px;
                display: block;
                font-size: 20px;
                line-height: 80px;
            }

            #header .login-btn:hover {
                background-color: red;
                cursor: pointer;
            }
            
            #header .login-btn > a {
                color: #fff;
                text-decoration: none;
            }
            
            #slider {
                margin-top: 80px;
                padding-top: 0%;
                background-image: url(http://maychieure.net/wp-content/uploads/2017/12/Pho%CC%80ng-chi%C3%AA%CC%81u-r%E1%BA%A1p-chi%E1%BA%BFu-phim-Platinum-Cineplex.jpg);
                background-size: 100% 400px;
                background-repeat: no-repeat;
                height: 400px;
                background-color: #000; 
            }
            
            #nav-slider, .nation,
            #nav-slider, .gerne {
                list-style-type: none;
            }
            
            #nav-slider > li {
                display: inline-block;
            }
            
            #nav-slider li {
                position: relative;
            }
            
            #nav-slider > li > a {
                color: #fff;
            }    
            
            #nav-slider li a {
                
                text-decoration: none;
                line-height: 80px;
                padding: 0 24px;
                display: block;
            }
            
            #nav-slider li:hover .nation,
            #nav-slider li:hover .gerne {
                display: block;
            }
            
            #nav-slider .nation li:hover a,
            #nav-slider .gerne li:hover a,
            #nav-slider > li:hover > a {
                color: #000;
                background-color: #ccc;
            }
            
            #nav-slider .nation,
            #nav-slider .gerne {
                display: none;
                position: absolute;
                background-color: #fff;
                padding-left: 0px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }
            
            #nav-slider .nation a,
            #nav-slider .gerne a {
                color: #000;
                padding: 0 16px;
                line-height: 40px;
            }
            
            #content {
                min-height: 500px;
                background: #fff;
            }
            
            #footer {
                
            }
        </style>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <!--begin nav-->
                <ul id="nav-header">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="overview.jsp">Over View</a></li>
                    <li><a href="tvshow.jsp">TV Show</a></li>
                </ul>
                <!--end nav-->
            
                <!--begin login button-->
                <div class="login-btn">
                    <a href="login.html">Login</a>
                </div>
                <!--end search button-->
            
            </div>
            
            <div id="slider">
                <!--begin nav-->
                <ul id="nav-slider">
                    <li>
                        <a href="#">Gerne</a>
                        <ul class="gerne">
                            <li><a href="">Action</a></li>
                            <li><a href="">Romantic</a></li>
                            <li><a href="">Comedy</a></li>
                            <li><a href="">Horror</a></li>
                            <li><a href="">History</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Nation</a>
                        <ul class="nation">
                            <li><a href="">America</a></li>
                            <li><a href="">Vietnam</a></li>
                        </ul>
                    </li>
                    <li><a href="">Movie</a></li>
                    <li><a href="">Series</a></li>
                    <li><a href="">Anime</a></li>
                </ul>
                <!--end nav-->
                
            </div>
            <div id="content">
                
            </div>
            <div id="footer">
                
            </div>
        </div>
    </body>
</html>

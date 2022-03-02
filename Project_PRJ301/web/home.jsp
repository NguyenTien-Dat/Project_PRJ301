<%-- 
    Document   : home
    Created on : Mar 1, 2022, 4:51:52 PM
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
            
            </div>
        </div>    
    </body>
</html>

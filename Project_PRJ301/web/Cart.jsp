<%-- 
    Document   : Cart
    Created on : Mar 15, 2022, 12:54:08 AM
    Author     : MSI_PRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.ProductCart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Food Code Proudly Presents By Themexpert</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700' rel='stylesheet' type='text/css'>

        <!-- Css -->
        <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">

        <!-- jS -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="js/owl.carousel.min.js" type="text/javascript"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/main.js" type="text/javascript"></script>


    </head>

    <body>


        <!-- TOP HEADER Start
        ================================================== -->

        <section id="top">
            <div class="container">
               <div class="row">
                    <div class="col-md-7">
                        <p class="contact-action">Hoàng Trọng Hiếu - HE151404  <strong>+84 9046xxxx</strong></p>
                        <c:if test="${sessionScope.account!=null}">
                                 <p style="text-align: center; margin-left: 250px" >  Welcome ${sessionScope.account.getCustomerName()}</p>
                        </c:if>
                    </div>
                    <div class="col-md-3 clearfix">
                        <ul class="login-cart">
                            <c:if test="${sessionScope.account==null}">
                            <li>
                                <a data-toggle="modal" data-target="#myModal" href="#">
                                    <i class="fa fa-user"></i> Login
                                </a>
                            </li>
                            </c:if>
                            <c:if test="${sessionScope.account!=null}">
                            <li>
                                <a href="ControllerAccount?do=logout">
                                    <i class="fa fa-user"></i> Logout
                                </a>
                            </li>
                            </c:if>
                            <li>
                                <div class="cart dropdown">
                                    <a href="Cart.jsp">
                                        <i class="fa fa-shopping-cart"></i>Cart</a>
                                    <div class="dropdown-menu dropup">
                                        <span class="caret"></span>
                                        <ul class="media-list">
                                            <li class="media">
                                                <img class="pull-left" src="images/product-item.jpg" alt="">
                                                <div class="media-body">
                                                    <h6>Italian Sauce
                                                        <span>$250</span>
                                                    </h6>
                                                </div>
                                            </li>
                                        </ul>
                                        <button class="btn btn-primary btn-sm">Checkout</button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-2">
                        <div class="search-box">
                            <div class="input-group">
                               <form action="ControllerProducts" method="post">
                                    <table> 
                                            <tr>
                                                <input type="hidden" name="do" value="Search">
                                                <td><input placeholder="Search Here" type="text" name="name" class="form-control"></td>
                                                <td><button class="class" type="submit" value="search"></td>
                                            </tr>
                                        </div>
                                    </table>
                                </form>
                            </div>
                            <!-- /.input-group -->
                        </div>
                        <!-- /.search-box -->
                    </div>
                </div>
                <!-- End Of /.row -->
            </div>
            <!-- End Of /.Container -->


            <!-- MODAL Start
            ================================================== -->

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Introduce Yourself</h4>
                        </div>
                        <div class="modal-body clearfix">

                            <form action="ControllerAccount" method="get" id="login_form" class="std">
                                <fieldset>
                                    <h3>Already registered?</h3>
                                    <div class="form_content clearfix">
                                        <p class="text">
                                            <label for="email">E-mail address</label>
                                            <span><input placeholder="User" type="text" id="email" name="user" value="" class="account_input"></span>
                                        </p>
                                        <p class="text">
                                            <label for="passwd">Password</label>
                                            <span><input placeholder="Password" type="password" id="passwd" name="pass" value="" class="account_input"></span>
                                        </p>
                                        <p class="lost_password">
                                            <a href="#popab-password-reset" class="popab-password-link">Forgot your password?</a>
                                        </p>
                                        <p class="submit">
                                            <button class="btn btn-success">Log in</button>
                                        </p>
                                    </div>
                                </fieldset>
                            </form>
                            <form action="" method="post" id="login_form" class="std">
                                <fieldset>
                                    <h3>Already registered?</h3>
                                    <div class="form_content clearfix">
                                        <p class="text">
                                            <label for="email">E-mail address</label>
                                            <span><input placeholder="E-mail address" type="text" id="email" name="email" value="" class="account_input"></span>
                                        </p>
                                        <p class="text">
                                            <label for="passwd">Password</label>
                                            <span><input placeholder="Password" type="password" id="passwd" name="passwd" value="" class="account_input"></span>
                                        </p>
                                        <p class="lost_password">
                                            <a href="#popab-password-reset" class="popab-password-link">Forgot your password?</a>
                                        </p>
                                        <p class="submit">
                                            <button class="btn btn-success">Log in</button>
                                        </p>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End of /Section -->



        <!-- LOGO Start
        ================================================== -->

        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <a href="#">
                            <img src="images/logo.jpg" alt="logo">
                        </a>
                    </div>
                    <!-- End of /.col-md-12 -->
                </div>
                <!-- End of /.row -->
            </div>
            <!-- End of /.container -->
        </header>
        <!-- End of /Header -->




        <!-- MENU Start
        ================================================== -->

        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- End of /.navbar-header -->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav nav-main">
                        <li class="active"><a href="ControllerProducts">HOME</a></li>
                        <li><a href="ControllerProducts?do=ALL&page=1">SHOP</a></li>
                        <!--<li><a href="blog-single.jsp">ARTICLE</a></li>-->
                        <li class="dropdown">
                            <a href="#">
                                MOVIE GENRE
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="ControllerProducts?do=Category&cate=1">Action</a></li>
                                <li><a href="ControllerProducts?do=Category&cate=2">Romantic</a></li>
                                <li><a href="ControllerProducts?do=Category&cate=3">Comedy</a></li>
                                <li><a href="ControllerProducts?do=Category&cate=4">Horror</a></li>
                                <li><a href="ControllerProducts?do=Category&cate=5">Science Fiction</a></li>
                                <li><a href="ControllerProducts?do=Category&cate=6">Adventure</a></li>
                            </ul>
                        </li>
                        <!-- End of /.dropdown -->


                    </ul>
                    <!-- End of /.nav-main -->
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- End of /.nav -->



        <!-- Breadcrumbs Start
        ================================================== -->

        <section id="topic-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h1>YOUR CART</h1>
                        <p>Products</p>
                    </div>
                    <!-- End of /.col-md-4 -->
                    <div class="col-md-8 hidden-xs">
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Home</a></li>
                            <li class="active">Blog</li>
                        </ol>
                    </div>
                    <!-- End of /.col-md-8 -->
                </div>
                <!-- End of /.row -->
            </div>
            <!-- End of /.container -->
        </section>
        <!-- End of /#Topic-header -->

        <!--================================================== -->

        <!-- cart -->
        <div class="cart-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-md-12">
                        <div class="cart-table-wrap" >
                            <table class="cart-table" border="solid">
                                <thead class="cart-table-head" style="background-color:gray;">
                                    <tr class="table-head-row">
                                        <th class="product-remove" ></th>
                                        <th class="product-image" style="padding-right: 50px; padding-left: 50px; color: white;">Product Image</th>
                                        <th class="product-name" style="padding-right: 50px;padding-left: 35px;color: white;">Name</th>
                                        <th class="product-price" style="padding-right: 30px;padding-left: 25px;color: white;">Price</th>
                                        <th class="product-quantity" style="padding-right: 50px;padding-left: 50px;color: white;">Quantity</th>
                                         <th class="product-total" style="margin-left: 20px;color: white;">Delete</th> 
                                    </tr>
                                </thead> 
                                <%
                                    double total=0;
                                    java.util.Enumeration em = session.getAttributeNames();
                                    while (em.hasMoreElements()) {
                                       String key = em.nextElement().toString();
                                       if(key!="account"){
                                       ProductCart pro=(ProductCart) session.getAttribute(key);
                                        total += pro.getQuantity() * pro.getUnitPrice();
                                %>
                                <tbody>
                                    <tr class="table-body-row">
                                        <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                                        <th class="product-image" style="padding-right: 60px; "><img style="max-width: 200px;" src="<%=pro.getImage() %>" alt=""></td>
                                        <th class="product-name" style="padding-right: 60px;padding-left: 20px;"><%=pro.getProductName() %> </td>
                                        <th class="product-price" style="padding-right: 30px;padding-left: 20px;">$<%=pro.getUnitPrice()%>  </td>
                                        <td class="product-quantity"><input type="number" placeholder="<%=pro.getQuantity() %>"></td>
                                        <th class="product-total" style="margin-left: 20px;"><a href="">Delete</th> 
                                    </tr>
                                    
                                    <%} }%>
<!--                                    <tr class="table-body-row">
                                        <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                                        <td class="product-image"><img src="assets/img/products/product-img-2.jpg" alt=""></td>
                                        <td class="product-name">Berry</td>
                                        <td class="product-price">$70</td>
                                        <td class="product-quantity"><input type="number" placeholder="0"></td>
                                    </tr>
                                    <tr class="table-body-row">
                                        <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                                        <td class="product-image"><img src="assets/img/products/product-img-3.jpg" alt=""></td>
                                        <td class="product-name">Lemon</td>
                                        <td class="product-price">$35</td>
                                        <td class="product-quantity"><input type="number" placeholder="0"></td>-->
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="total-section">
                            <table class="total-table">
                                <thead class="total-table-head">
                                    <tr class="table-total-row">
                                        <th>Total</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="total-data">
                                        <td><strong>Total: </strong></td>
                                        <td><%=total%></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="cart-buttons">
                                <a href="cart.html" class="boxed-btn">Update Cart</a>
                                <a href="checkout.html" class="boxed-btn black">Check Out</a>
                            </div>
                        </div>

                        <div class="coupon-section">
                            <h3>Apply Coupon</h3>
                            <div class="coupon-form-wrap">
                                <form action="index.html">
                                    <p><input type="text" placeholder="Coupon"></p>
                                    <p style="padding-bottom: 100px;"><input type="submit" value="Apply"></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end cart -->


        <!-- FOOTER Start
        ================================================== -->

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="block clearfix">
                            <a href="#">
                                <img src="images/" alt="">
                            </a>
                            <p>
                                The place to update the hottest new movies today.
                            </p>
                            <h4 class="connect-heading">CONNECT WITH US</h4>
                            <ul class="social-icon">
                                <li>
                                    <a class="facebook-icon " href="# ">
                                        <img class=" " src="images/fb.png " alt="... ">
                                    </a>
                                </li>
                                <li>
                                    <a class="instagram-icon " href="# ">
                                        <img class=" " src="images/instagram.png " alt="... ">
                                    </a>
                                </li>
                                <li>
                                    <a class="twitter-icon " href="# ">
                                        <img class=" " src="images/twitter.png " alt="... ">
                                    </a>
                                </li>
                                <li>
                                    <a class="linkedin-icon " href="# ">
                                        <img class=" " src="images/linkedin.png " alt="... ">
                                    </a>
                                </li>
                            </ul>
                            <!-- End Of /.social-icon -->
                        </div>
                        <!-- End Of /.block -->
                    </div>
                    <!-- End Of /.Col-md-4 -->
                    <div class="col-md-4">
                        <div class="block">
                            <h4>GET IN TOUCH</h4>
                            <p><i class="fa  fa-map-marker"></i> <span>Movie web for rich people </span>Hoa Lac Hi-Tech Park, Km29, Thang Long Avenue, Thach That Dist. Hanoi City</p>
                            <p> <i class="fa  fa-phone"></i> <span>Phone:</span> (+386) 40 123 456 </p>

                            <p> <i class="fa  fa-mobile"></i> <span>Mobile:</span> (+386) 40 654 123 651</p>

                            <p class="mail"><i class="fa  fa-envelope"></i>Email: <span>info@sitename.com</span></p>
                        </div>
                        <!-- End Of /.block -->
                    </div>
                    <!-- End Of Col-md-3 -->
                    <div class="col-md-4">
                        <div class="block">
                            <h4>UPCOMING ITEMS</h4>
                            <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object" src="images/product-item.jpg" alt="...">
                                </a>
                                <a class="pull-left" href="#">
                                    <img class="media-object" src="images/product-item.jpg" alt="...">
                                </a>
                                <a class="pull-left" href="#">
                                    <img class="media-object" src="images/product-item.jpg" alt="...">
                                </a>
                            </div>
                            <!-- End Of /.media -->
                        </div>
                        <!-- End Of /.block -->
                    </div>
                    <!-- End Of Col-md-3 -->
                </div>
                <!-- End Of /.row -->
            </div>
            <!-- End Of /.Container -->



            <!-- FOOTER-BOTTOM Start
        ================================================== -->

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="cash-out pull-left">
                                <li>
                                    <a href="#">
                                        <img src="images/American-Express.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="images/PayPal.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="images/Maestro.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="images/Visa.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="images/Visa-Electron.png" alt="">
                                    </a>
                                </li>
                            </ul>
                            <p class="copyright-text pull-right">Project Designed by Hoang Trong Hieu<a href="http://www.themexpert.com">Themexpert</a> All Rights Reserved</p>
                        </div>
                        <!-- End Of /.col-md-12 -->
                    </div>
                    <!-- End Of /.row -->
                </div>
                <!-- End Of /.container -->
            </div>
            <!-- End Of /.footer-bottom -->
        </footer>
        <!-- End Of Footer -->

        <a id="back-top" href="#"></a>
    </body>

</html>


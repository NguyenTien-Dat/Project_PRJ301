<%-- 
    Document   : product
    Created on : Mar 9, 2022, 6:14:34 PM
    Author     : MSI_PRO
--%>

<%@page import="model.Page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Vector"%>
<%@page import="model.Products"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Project PRJ301</title>
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
        <%Vector<Products> vector = (Vector<Products>) request.getAttribute("vector");
            Vector<Page> v2 = (Vector<Page>) request.getAttribute("vec");
        %>
        <!-- TOP HEADER Start
        ================================================== -->

        <section id="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <p class="contact-action">IN CASE OF ANY QUESTIONS, CALL THIS NUMBER: <strong>+565 975 658</strong></p>
                    </div>
                    <div class="col-md-3 clearfix">
                        <ul class="login-cart">
                            <li>
                                <a data-toggle="modal" data-target="#myModal" href="#">
                                    <i class="fa fa-user"></i> Login
                                </a>
                            </li>
                            <li>
                                <div class="cart dropdown">
                                    <a data-toggle="dropdown" href="#"><i class="fa fa-shopping-cart"></i>Cart(1)</a>
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

                            <form action="#" method="post" id="create-account_form" class="std">
                                <fieldset>
                                    <h3>Create your account</h3>
                                    <div class="form_content clearfix">
                                        <h4>Enter your e-mail address to create an account.</h4>
                                        <p class="text">
                                            <label for="email_create">E-mail address</label>
                                            <span>
                                                <input placeholder="E-mail address"  type="text" id="email_create" name="email_create" value="" class="account_input">
                                            </span>
                                        </p>
                                        <p class="submit">
                                            <button class="btn btn-primary">Create Your Account</button>
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
                        <li><a href="ControllerProducts">HOME</a></li>
                        <li class="active"><a href="ControllerProducts?do=ALL&page=1">SHOP</a></li>
<!--                        <li><a href="blog-single.jsp">ARTICLE</a></li>-->
                        <li class="dropdown">
                            <a href="#">
                                MOVIE GENRE
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Romantic</a></li>
                                <li><a href="#">Comedy</a></li>
                                <li><a href="#">Horror</a></li>
                                <li><a href="#">Science Fiction</a></li>
                                <li><a href="#">Adventure</a></li>
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




        <section id="topic-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h1>Shop</h1>
                        <p>A Bunch Of Products</p>
                    </div>
<!--                    <div class="col-md-4">
                        <h1>Ghi gì ở đây không ô</h1>
                        <p>A Bunch Of Products</p>
                    </div>-->
                    <!-- End of /.col-md-4 -->
                    <div class="col-md-8 hidden-xs">
                        <ol class="breadcrumb pull-right">
                            <li><a href="index.jsp">Home</a></li>
                            <li class="active">Shop</li>
                        </ol>
                    </div>
                    <!-- End of /.col-md-8 -->
                </div>
                <!-- End of /.row -->
            </div>
            <!-- End of /.container -->
        </section>
        <!-- End of /#Topic-header -->



        <!-- PRODUCTS Start
        ================================================== -->

        <section id="shop">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="products-heading">
                            <h2>ALL PRODUCTS</h2>
                        </div>
                        <!-- End of /.Products-heading -->
                        <div class="product-grid">
                            <ul>
                                <%for (Page v : v2) {%>
                                <li>
                                    <div class="products">
                                        <a href="#">
                                            <img src="<%=v.getImagine()%>" alt="">
                                        </a>
                                        <a href="#">
                                            <h4><%=v.getProductName()%></h4>
                                        </a>
                                        <p class="price"><%=v.getPrice()%></p>
                                        <div>
                                            <a class="view-link shutter" href="#">
                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                        </div>
                                    </div>
                                    <!-- End of /.products -->
                                </li>
                                <%}%>
                                <!--                                <li>
                                                                    <div class="products">
                                                                        <a href="#">
                                                                            <img src="images/product-image-8.jpg" alt="">
                                                                        </a>
                                                                        <a href="#">
                                                                            <h4>Amazing Italian Sauces</h4>
                                                                        </a>
                                                                        <p class="price">From: £69.99</p>
                                                                        <div>
                                                                            <a class="view-link shutter" href="#">
                                                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                                                        </div>
                                                                    </div>
                                                                     End of /.products 
                                                                </li>
                                                                <li>
                                                                    <div class="products">
                                                                        <a href="#">
                                                                            <img src="images/product-image-8.jpg" alt="">
                                                                        </a>
                                                                        <a href="#">
                                                                            <h4>Amazing Italian Sauces</h4>
                                                                        </a>
                                                                        <p class="price">From: £69.99</p>
                                                                        <div>
                                                                            <a class="view-link shutter" href="#">
                                                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                                                        </div>
                                                                    </div>
                                                                     End of /.products 
                                                                </li>
                                                                <li>
                                                                    <div class="products">
                                                                        <a href="#">
                                                                            <img src="images/product-image-8.jpg" alt="">
                                                                        </a>
                                                                        <a href="#">
                                                                            <h4>Amazing Italian Sauces</h4>
                                                                        </a>
                                                                        <p class="price">From: £69.99</p>
                                                                        <div>
                                                                            <a class="view-link shutter" href="#">
                                                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                                                        </div>
                                                                    </div>
                                                                     End of /.products 
                                                                </li>
                                                                <li>
                                                                    <div class="products">
                                                                        <a href="#">
                                                                            <img src="images/product-image-8.jpg" alt="">
                                                                        </a>
                                                                        <a href="#">
                                                                            <h4>Amazing Italian Sauces</h4>
                                                                        </a>
                                                                        <p class="price">From: £69.99</p>
                                                                        <div>
                                                                            <a class="view-link shutter" href="#">
                                                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                                                        </div>
                                                                    </div>
                                                                     End of /.products 
                                                                </li>
                                                                <li>
                                                                    <div class="products">
                                                                        <a href="#">
                                                                            <img src="images/product-image-8.jpg" alt="">
                                                                        </a>
                                                                        <a href="#">
                                                                            <h4>Amazing Italian Sauces</h4>
                                                                        </a>
                                                                        <p class="price">From: £69.99</p>
                                                                        <div>
                                                                            <a class="view-link shutter" href="#">
                                                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                                                        </div>
                                                                    </div>
                                                                     End of /.products 
                                                                </li>-->
                                <!--  ... -->
                            </ul>
                        </div>
                        <!-- End of /.products-grid -->

                        <!-- Pagination -->

                        <div class="pagination-bottom">
                            <ul class="pagination">
                                <li class="disabled"><a href="#">&laquo;</a></li>
                                <!--<li class="active"><a href="#">1<span class="sr-only"></span></a></li>-->
                                <c:forEach begin="1" end="${n}" var="c" >
                                    <li><a href="ControllerProducts?do=ALL&page=${c}">${c}</a></li>
                                </c:forEach>
                                <li><a href="#">»</a></li>
                            </ul>
                            <!-- End of /.pagination -->
                        </div>
                    </div>
                    <!-- End of /.col-md-9 -->
                    <div class="col-md-3">
                        <div class="blog-sidebar">
                            <div class="block">
                                <h4>Genre:</h4>
                                <div class="list-group">
                                    <a href="#" class="list-group-item"> Action Movie </a>
                                    <a href="#" class="list-group-item"> Romantic Movie </a>
                                    <a href="#" class="list-group-item"> Comedy Movie </a>
                                    <a href="#" class="list-group-item"> Horror Movie </a>
                                    <a href="#" class="list-group-item"> Science Fiction Movie </a>
                                    <a href="#" class="list-group-item"> Adventure Movie </a>
                                </div>
                            </div>
                            <div class="block">
                                <h4>Sort by:</h4>
                                <div class="list-group">
                                    <a href="#" class="list-group-item"> Name </a>
                                    <a href="#" class="list-group-item"> Price </a>
                                    <a href="#" class="list-group-item"> Year </a>
                                </div>
                            </div>
                            <div class="block">
                                <h4>Latest Movie Items</h4>
                                <ul class="media-list">
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/slider1.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <a href="" class="media-heading">Lamb leg roast
                                                <p>Lorem ipsum dolor sit amet.</p></a>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/post-img-2.png" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <a href="" class="media-heading"> Lamingtons
                                                <p>Lorem ipsum dolor.</p></a>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/post-img-3.png" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <a href="" class="media-heading">
                                                Anzac Salad
                                                <p>Lorem ipsum dolor sit.</p>

                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="block">
                                <h4>Movie Tag</h4>
                                <div class="tag-link">
                                    <a href="">ACTION</a>
                                    <a href="">CHRISTMAS</a>
                                    <a href="">NEW MOVIE</a>
                                    <a href="">ANIMATION</a>
                                    <a href="">SHOPPING</a>
                                    <a href="">HOTTEST</a>
                                </div>
                            </div>
                        </div>
                        <!-- End of /.col-md-3 -->

                    </div>
                    <!-- End of /.row -->
                </div>
                <!-- End of /.container -->
        </section>
        <!-- End of Section -->











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
                            <ul class="social-icon ">
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
                            <p> <span>Movie web for rich people </span>Hoa Lac Hi-Tech Park, Km29, Thang Long Avenue, Thach That Dist. Hanoi City</p>
                            <p> <span>Phone:</span> (+386) 40 123 456 </p>

                            <p> <span>Mobile:</span> (+386) 40 654 123 651</p>

                            <p class="mail">Email: <span>info@sitename.com</span></p>
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
                            <p class="copyright-text pull-right">Project Designed by Nguyen Tien Dat<a href="http://www.themexpert.com">Themexpert</a> All Rights Reserved</p>
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

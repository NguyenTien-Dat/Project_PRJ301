<%-- 
    Document   : blog-single
    Created on : Mar 9, 2022, 6:15:49 PM
    Author     : MSI_PRO
--%>

<%@page import="java.util.Vector"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <%Vector<Products> vector =(Vector<Products>)request.getAttribute("vector"); %>

    <!-- TOP HEADER Start
    ================================================== -->

    <section id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <p class="contact-action"><i class="fa fa-phone-square"></i>IN CASE OF ANY QUESTIONS, CALL THIS NUMBER: <strong>+565 975 658</strong></p>
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
                    <li><a href="ControllerProducts?do=ALL&page=1">SHOP</a></li>
                    <!--<li class="active"><a href="ControllerProducts?do=blog">ARTICLE</a></li>-->
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
                    <h1>Movie information</h1>
                    <p>HOT MOVIE !!!</p>
                </div>
                <!-- End of /.col-md-4 -->
                <div class="col-md-8 hidden-xs">
                    <ol class="breadcrumb pull-right">
                        <li><a href="ControllerProducts">Home</a></li>
                        <li><a href="ControllerProducts?do=ALL&page=1">Blog</a></li>
                        <li class="active">Single Post</li>
                    </ol>
                </div>
                <!-- End of /.col-md-8 -->
            </div>
            <!-- End of /.row -->
        </div>
        <!-- End of /.container -->
    </section>
    <!-- End of /#Topic-header -->






    <section id="blog">
        <div class="container">
            <div class="row">
                <div class="col-md-9 clearfix">
                    <ul class="blog-zone">
                        <%for (Products pro : vector) {%>
                        <li>
                            <div class="blog-icon">
                                <i class="fa  fa-pencil"></i>
                            </div>
                            <div class="blog-box">
                                <img src="<%=pro.getImagine() %>" alt="">
                                <div class="blog-post-body clearfix">
                                        <h2><%=pro.getProductName() %></h2>
                                    <div class="blog-post-tag">
                                        <div class="block">
                                            <i class="fa fa-clock-o"></i>
                                            <p><%=pro.getYear() %></p>
                                        </div>
                                        <div class="block">
                                            <i class="fa fa-user"></i>
                                            <p>Admin</p>
                                        </div>
                                        <div class="block">
                                            <i class="fa fa-tags"></i>
                                            <p>
                                                <a>Movie Culture</a>,
                                                <a>Green Items</a>
                                            </p>
                                        </div>
                                    </div>
                                    <p><%=pro.getDescription() %></p>
                                </div>
                            </div>
                        </li>
                        <%}%>
                    </ul>
                    <!-- End of /.blog-zone -->

                    <div class="block">
                        <h4>Tag Cloud</h4>
                        <div class="tag-link">
                            <a href="">BALLET</a>
                            <a href="">BLOG</a>
                            <a href="">CHRISTMAS</a>
                            <a href="">ELEGANCE</a>
                            <a href="">ELEGANT</a>
                            <a href="">SHOPPING</a>
                            <a href="">SHOP</a>
                            <a href="">PHOTOGRAPHY</a>
                        </div>
                    </div>
                    <!-- End of /.block -->

                </div>
                <!-- End of /.Sidebar -->
            </div>
            <!-- End of /.col-md-3 -->
        </div>
        <!-- End of /.row -->
        </div>
        <!-- End of /.container -->
    </section>
    <!-- End of /.Section -->



























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

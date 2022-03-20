
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Vector"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<!DOCTYPE html>
<html>
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

        <!-- TOP HEADER Start
        ================================================== -->
        <jsp:include page="header.jsp"></jsp:include>

            <section id="topic-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h1>Search result</h1>
                            <!-- <p>The latest Action Movie genre in 2022, continuously updated with new movies of the Action Movie genre, the movies are selected and of high quality.</p> -->
                        </div>
                        <!-- End of /.col-md-4 -->
                        <div class="col-md-8 hidden-xs">
                            <ol class="breadcrumb pull-right">
                                <li><a href="ControllerProducts">Home</a></li>
                                <li class="active">Search Result</li>
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
        <% Vector<Products> vector = (Vector<Products>) request.getAttribute("vector");
            String name = (String) request.getAttribute("name");
        %>
        <section id="shop">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="products-heading">
                            <h2>Search Result for = "<%=name%>"</h2>
                        </div>
                        <!-- End of /.Products-heading -->
                        <div class="product-grid">
                            <ul>
                                <% for (Products p : vector) {%>                           
                                <li>
                                    <div class="products">
                                        <a href="ControllerProducts?do=blog&id=<%=p.getProductID()%>">
                                            <img src="<%= p.getImagine()%>" alt="">
                                        </a>
                                        <a href="#">
                                            <h4><%= p.getProductName()%></h4>
                                        </a>
                                        <p class="price">£<%= p.getPrice()%></p>
                                        <div>
                                            <a class="view-link shutter" href="#">
                                                <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                        </div>
                                    </div>
                                    <!-- End of /.products -->
                                </li>
                                <% }%>
                            </ul>
                        </div>
                        <!-- End of /.products-grid -->

                        <!-- Pagination -->

                        <div class="pagination-bottom">
                            <ul class="pagination">
                                <li class="disabled"><a href="#">&laquo;</a></li>
                                <li class="active"><a href="#">1 <span class="sr-only"></span></a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                            <!--                         End of /.pagination -->
                        </div>
                    </div>
                    <!-- End of /.col-md-9 -->
                    <div class="col-md-3">
                        <div class="blog-sidebar">
                            <div class="block">
                                <h4>Genre:</h4>
                                <div class="list-group">
                                    <a href="ControllerProducts?do=Category&cate=1" class="list-group-item"> Action Movie </a>
                                    <a href="ControllerProducts?do=Category&cate=2" class="list-group-item"> Romantic Movie </a>
                                    <a href="ControllerProducts?do=Category&cate=3" class="list-group-item"> Comedy Movie </a>
                                    <a href="ControllerProducts?do=Category&cate=4" class="list-group-item"> Horror Movie </a>
                                    <a href="ControllerProducts?do=Category&cate=5" class="list-group-item"> Science Fiction Movie </a>
                                    <a href="ControllerProducts?do=Category&cate=6" class="list-group-item"> Adventure Movie </a>
                                </div>
                            </div>
                            <div class="block">
                                <h4>Sort by:</h4>
                                <div class="list-group">
                                    <a href="ControllerProducts?do=sortName" class="list-group-item"> Name </a>
                                    <a href="ControllerProducts?do=sortPrice" class="list-group-item"> Price </a>
                                    <a href="ControllerProducts?do=sortYear" class="list-group-item"> Year </a>
                                </div>
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
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

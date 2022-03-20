
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
        <jsp:include page="header.jsp"></jsp:include>

            <section id="topic-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h1>Shop</h1>
                            <p>A Bunch Of Products</p>
                        </div>
                        <!-- End of /.col-md-4 -->
                        <div class="col-md-8 hidden-xs">
                            <ol class="breadcrumb pull-right">
                                <li><a href="ControllerProducts">Home</a></li>
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
                                <!--                                <h2>/ALL /PRODUCTS</h2>-->
                            </div>
                            <!-- End of /.Products-heading -->
                            <div class="product-grid">
                                <ul>
                                <%for (Page v : v2) {%>
                                <li>
                                    <div class="products">
                                        <a href="ControllerProducts?do=blog&id=<%=v.getProductID()%>">
                                            <img src="<%=v.getImagine()%>" alt="">
                                        </a>
                                        <a href="ControllerProducts?do=blog&id=<%=v.getProductID()%>">
                                            <h4><%=v.getProductName()%></h4>
                                        </a>
                                        <p class="price"><%=v.getPrice()%></p>
                                        <div>
                                            <c:if test="${sessionScope.account!=null}" >
                                                <a class="view-link shutter " href="ControllerCart?do=showCart&id=<%=v.getProductID()%>">
                                                </c:if>
                                                <c:if test="${sessionScope.account==null}" >
                                                    <a class="view-link shutter " href="mylogin.jsp">
                                                    </c:if>
                                                    <i class="fa fa-plus-circle"></i>Add To Cart</a>
                                        </div>
                                    </div>
                                    <!-- End of /.products -->
                                </li>
                                <%}%>
                            </ul>
                        </div>


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
                                <h4>Movie Genre</h4>
                                <div class="list-group">
                                    <a href="ControllerProducts?do=Category&cate=1" class="list-group-item">
                                        <i class="fa  fa-dot-circle-o"></i> Action Movie
                                    </a>
                                    <a href="ControllerProducts?do=Category&cate=2" class="list-group-item">
                                        <i class="fa  fa-dot-circle-o"></i> Romantic movie
                                    </a>
                                    <a href="ControllerProducts?do=Category&cate=3" class="list-group-item">
                                        <i class="fa  fa-dot-circle-o"></i> Comedy Movie
                                    </a>
                                    <a href="ControllerProducts?do=Category&cate=4" class="list-group-item">
                                        <i class="fa  fa-dot-circle-o"></i> Horror Movie
                                    </a>
                                    <a href="ControllerProducts?do=Category&cate=5" class="list-group-item">
                                        <i class="fa  fa-dot-circle-o"></i> Science Fiction Movie
                                    </a>
                                    <a href="ControllerProducts?do=Category&cate=6" class="list-group-item">
                                        <i class="fa  fa-dot-circle-o"></i> Adventure Movie
                                    </a>
                                </div>
                            </div>
                            <div class="block">
                                <h4>Sort by:</h4>
                                <form action="ControllerProducts?do=Sort" method="post">
                                    <table>
                                        <tr>
                                            <td>From</td><td><input type="number" name="price1" value="0"/></td>
                                        </tr>
                                        <tr>
                                            <td>To</td><td><input type="number" name="price2" value="0"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td><input type="submit" value="Find"/></td>
                                        </tr>
                                    </table>
                                </form>
                                <div class="list-group">
                                    <a href="ControllerProducts?do=sortName" class="list-group-item"> Name </a>
                                    <a href="ControllerProducts?do=sortPrice" class="list-group-item"> Price </a>
                                    <a href="ControllerProducts?do=sortYear" class="list-group-item"> Year </a>
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
                                            <a href="" class="media-heading">Spider man
                                                <p>No way home</p></a>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="https://vnluxury.vn/upload/21/12/24/john_wick_4.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <a href="" class="media-heading"> John Wich
                                                <p>Chapter 4</p></a>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="https://photo-cms-nghenhinvietnam.zadn.vn/Uploaded/trunghieu/2021_07_30/Aquaman_and_the_Lost_Kingdom_Title_Explained_SR_AZUP.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <a href="" class="media-heading"> Aquaman
                                                <p>The Lost Kingdom</p>
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
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
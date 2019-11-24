<%-- 
    Document   : adopt
    Created on : Nov 17, 2019, 9:00:10 PM
    Author     : Kostis.Mikroulis 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Adoption</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Custom fonts for this template -->
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
              type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->

        <link href="resources/css/style_adopt.css" rel="stylesheet">
    </head>
    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <img id="logo_animated" src="resources/images/logos/logo_animated.gif" alt="animated-logo">
                <a class="navbar-brand js-scroll-trigger logo" href="${pageContext.request.contextPath}/">Paw Society</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="index.html#about">About us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="adopt.html">Adopt</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="#">Donate</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="registration.html">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="#">Log in</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header -->

        <header class="masthead">
            <!-- <div id="dogphoto"> -->
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">Every dog needs a home!
                         <!-- Pou paei auto? -->
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#find-dog">Find your dog</a>
                    </div>
                </div>
            </div>

        </header>

        <!--Main Section Adopt-->
        <section class="page-section" id="adopt">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Make an addition to your family </h2>
                        <hr>

                        <h3 class="section-subheading text-muted ">Please adopt, Don't shop!</h3>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-md-8">

                        <p class="text-muted">It’s a fact that the population of pets in the world exceeds the number of
                            families who can take them in.
                            Many animals then are found abandoned, helplessly wondering the streets and end up struggling
                            for survival or simply don’t make it through.
                            Adoption saves an animal.If you are eligible in offering a “home” to one of our wonderful
                            animals in our Shelter, you will be rewarded with unconditional love and devotion.Many animals then are found abandoned, helplessly wondering the streets and end up struggling
                            for survival or simply don’t make it through.
                            Adoption saves an animal.If you are eligible in offering a “home” to one of our wonderful
                            animals in our Shelter, you will be rewarded with unconditional love and devotion. 
                        </p><br>
                    </div>
                    <div class="col-md-4">
                        <img class="rounded-circle img-fluid" src="img/adoption/flower-dog.jpg" alt="">
                    </div>

                    <div class="col-md-4">
                        <img class="rounded-circle img-fluid" src="img/adoption/blanket-dog.jpg" alt="">
                    </div>
                    <div class="col-md-8">

                        <p class="text-muted">It’s a fact that the population of pets in the world exceeds the number of
                            families who can take them in.
                            Many animals then are found abandoned, helplessly wondering the streets and end up struggling
                            for survival or simply don’t make it through.
                            Adoption saves an animal.If you are eligible in offering a “home” to one of our wonderful
                            animals in our Shelter, you will be rewarded with unconditional love and devotion.Many animals then are found abandoned, helplessly wondering the streets and end up struggling
                            for survival or simply don’t make it through.
                            Adoption saves an animal.If you are eligible in offering a “home” to one of our wonderful
                            animals in our Shelter, you will be rewarded with unconditional love and devotion.
                        </p><br>

                    </div>
                </div>
            </div>
        </section>

        <!-- searching filters -->
        <section class="page-section" id="find-dog">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading ">Find your dog</h2>
                        <hr>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-brand" role="tabpanel"
                                     aria-labelledby="nav-brand-tab">
                                    <div class="row py-5 my-4">
                                        <div class="col-md-12">
                                            <div class="card-body">
                                                <div class="row pb-2">
                                                    <div class="col-md-12">
                                                        <h4>Pick your creteria</h4>
                                                    </div>
                                                </div>
                                                <div class="row ">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <select id="inputState" class="form-control">
                                                                <option selected>... Select Gender...</option>
                                                                <option>Male</option>
                                                                <option>Female</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <select id="inputState" class="form-control">
                                                                <option selected>... Select Size...</option>
                                                                <option>Toy</option>
                                                                <option>Small</option>
                                                                <option>Medium</option>
                                                                <option>Large</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <button type="button" class="btn btn-primary btn-block">Search</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <!-- <div class="row py-2">
                        <div class="col-md-12">
                            <h4>We found 1 car according to your search criteria</h4>
                        </div>
                    </div> -->
                    <div class="row py-2">
                        <div class="col-md-3 vertical-box">
                            <div class="card">
                                <img class="card-img-top mh200-text"
                                     src="https://img2.gaadicdn.com/images/usedcarimages/320x224/11-2017/1843403/IMG_6603.jpg"
                                     alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title mw30-text">2006 Toyota Innova 2.5 V Diesel 7-seater
                                        2006 Toyota Innova 2.5 V Diesel 7-se</h4>
                                    <h5 class="card-text">Rs. 25.32 Lac*</h5>

                                    <ul class="list-inline">
                                        <li class="list-inline-item">44,114 Km</li>
                                        <li class="list-inline-item">Petrol</li>
                                        <li class="list-inline-item">Gurugram</li>
                                    </ul>
                                    <button type="button" class="btn btn-outline-danger">Contact
                                        Sellers</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 vertical-box">
                            <div class="card">
                                <img class="card-img-top mh200-text"
                                     src="https://img2.gaadicdn.com/images/usedcarimages/320x224/11-2017/1843403/IMG_6603.jpg"
                                     alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title mw30-text">2006 Toyota Innova 2.5 V Diesel 7-seater
                                        2006 Toyota Innova 2.5 V Diesel 7-se</h4>
                                    <h5 class="card-text">Rs. 25.32 Lac*</h5>

                                    <ul class="list-inline">
                                        <li class="list-inline-item">44,114 Km</li>
                                        <li class="list-inline-item">Petrol</li>
                                        <li class="list-inline-item">Gurugram</li>
                                    </ul>
                                    <button type="button" class="btn btn-outline-danger">Contact
                                        Sellers</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 vertical-box">
                            <div class="card">
                                <img class="card-img-top mh200-text"
                                     src="https://img2.gaadicdn.com/images/usedcarimages/320x224/11-2017/1843403/IMG_6603.jpg"
                                     alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title mw30-text">2006 Toyota Innova 2.5 V Diesel 7-seater
                                        2006 Toyota Innova 2.5 V Diesel 7-se</h4>
                                    <h5 class="card-text">Rs. 25.32 Lac*</h5>

                                    <ul class="list-inline">
                                        <li class="list-inline-item">44,114 Km</li>
                                        <li class="list-inline-item">Petrol</li>
                                        <li class="list-inline-item">Gurugram</li>
                                    </ul>
                                    <button type="button" class="btn btn-outline-danger">Contact
                                        Sellers</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 vertical-box">
                            <div class="card">
                                <img class="card-img-top mh200-text"
                                     src="https://img2.gaadicdn.com/images/usedcarimages/320x224/11-2017/1843403/IMG_6603.jpg"
                                     alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title mw30-text">2006 Toyota Innova 2.5 V Diesel 7-seater
                                        2006 Toyota Innova 2.5 V Diesel 7-se</h4>
                                    <h5 class="card-text">Rs. 25.32 Lac*</h5>

                                    <ul class="list-inline">
                                        <li class="list-inline-item">44,114 Km</li>
                                        <li class="list-inline-item">Petrol</li>
                                        <li class="list-inline-item">Gurugram</li>
                                    </ul>
                                    <button type="button" class="btn btn-outline-danger">Contact
                                        Sellers</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>


        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <span class="copyright">Copyright &copy; Your Website 2019</span>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="icon ion-logo-facebook"></i>

                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="icon ion-logo-instagram"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="icon ion-logo-twitter"></i>

                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li class="list-inline-item">
                                <a href="#">About us</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">Terms of Use</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>



        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/agency1.min.js"></script>


    </body>
</html>
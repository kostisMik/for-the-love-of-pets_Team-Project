<%-- 
    Document   : login
    Created on : Nov 20, 2019, 2:09:46 PM
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
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- Custom fonts for this template -->
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
              type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template -->

        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
        <link href="resources/css/style_login.css" rel="stylesheet">
        <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
        <title>Adoptdog</title>
        <style>
            section{
                color:whitesmoke;
            }

            .card{
                background-color: #00000086;
            }
        </style>
    </head>
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <img id="logo_animated" src="resources/images/logos/logo_animated.gif" alt="logo-animated">
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
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/#about">About us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/adopt">Adopt</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="#">Donate</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/register">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger bar-li" href="#">Log in</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Contact -->
        <section class="page-section" id="contact">
            <div class="col-md-1"></div>
            <div class="col-md-6">
                <h2 class="mb-5">Steps to adopt a dog</h2>
                <div id="accordion">
                    <div class="card mb-2">
                        <h5 class="mb-0">
                            <a href="#" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                               aria-expanded="true" aria-controls="collapseOne">
                                1. Getting Started
                                <span class="icon ion-chevron-down"></span>
                            </a>
                        </h5>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                Create an account.Pick "Register"
                            </div>
                        </div>
                    </div>
                    <div class="card mb-2">
                        <h5 class="mb-0">
                            <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                               aria-expanded="false" aria-controls="collapseTwo">
                                2. Sent to our email
                                <span class="icon ion-chevron-down"></span>
                            </a>
                        </h5>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body">
                                info@pawsociety.com
                            </div>
                        </div>
                    </div>
                    <div class="card mb-2">
                        <h5 class="mb-0">
                            <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
                               aria-expanded="false" aria-controls="collapseThree">
                                3. Call us
                                <span class="icon ion-chevron-down"></span>
                            </a>
                        </h5>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                +30 210 1010 100
                            </div>
                        </div>
                    </div>

                    <div class="card mb-2">
                        <h5 class="mb-0">
                            <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"
                               aria-expanded="false" aria-controls="collapseFour">
                                4. Visit us
                                <span class="icon ion-chevron-down"></span>
                            </a>
                        </h5>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                            <div class="card-body">
                                Kalivia, Attiki, TK 19010
                            </div>
                        </div>
                    </div>

                    <div class="card mb-2">
                        <h5 class="mb-0">
                            <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive"
                               aria-expanded="false" aria-controls="collapseFive">
                                5. Donate
                                <span class="icon ion-chevron-down"></span>
                            </a>
                        </h5>
                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                            <div class="card-body">
                                If you would like to send a wire transfer, please use the information below:<br>
                                Bank account <br>
                                Name : Paw Society <br>
                                IBAN : GR43 0140 1010 6620 0233 0001 0601 <br>
                                Bank name : BANK <br>
                                BIC : AAAGRAA
                            </div>
                        </div>
                    </div>

                    <div class="card mb-2">
                        <h5 class="mb-0">
                            <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSix"
                               aria-expanded="false" aria-controls="collapseSix">
                                6. Finalizing an adoption
                                <span class="icon ion-chevron-down"></span>
                            </a>
                        </h5>
                        <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                            <div class="card-body">
                                We will be happy to hear from you.
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

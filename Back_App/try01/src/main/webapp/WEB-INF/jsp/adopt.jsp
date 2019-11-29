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
        <title>Adoption</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Custom fonts for this template -->
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
              type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/login">Log in</a>
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
                    </div>
                </div>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#find-dog">Find your dog</a>
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

                        <p class="text-muted adopt-context">It’s a fact that the population of pets in the world exceeds the number of
                            families who can take them in.
                            Many animals then are found abandoned, helplessly wondering the streets and end up struggling
                            for survival or simply don’t make it through.
                            Adoption saves an animal.If you are eligible in offering a “home” to one of our wonderful
                            animals in our Shelter, you will be rewarded with unconditional love and devotion.Many animals then are found abandoned, helplessly wondering the streets and end up struggling
                            for survival or simply don’t make it through.
                            When you adopt one of our dogs (if you are located in Athens), you also get a free training session with a professional trainer, as well as 6 months of free food through the PEDIGREE responsible adoption program.
                        </p><br>
                    </div>
                    <div class="col-md-4">
                        <img class="rounded-circle img-fluid" src="resources/images/adoption/flower-dog.jpg" alt="">
                    </div>

                    <div class="col-md-4">
                        <img class="rounded-circle img-fluid" src="resources/images/adoption/blanket-dog.jpg" alt="">
                    </div>
                    <div class="col-md-8">

                        <p class="text-muted adopt-context">
                            Consider adopting a dog from PawSociety and giving it the love that it so desperately needs. You will have a friend for life and will have helped to take yet one more animal off the street.Consider adopting a dog and giving it the love that it so desperately needs. You will have a friend for life and will have helped to take yet one more animal off the street.

                            Under the category “Find” you will find photographs of each animal, as well as a brief description and history.

                            Our furry friends are given for adoption fully vaccinated, neutered, micro-chipped and with an up to date medical book and adoption papers. We also provide training advice to help you have an even more enjoyable experience with your new family member. If you adopt a kitten or puppy which is too young to be neutered, you will have to neuter it at the appropriate age, as described also in the adoption contract you sign.
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
            </div>   

            <div class="container">
                <c:forEach items="${Dog}" var="d">
                    <div class="card" style="height:300px;">
                        <div class="row">
                            <div class="col-md-7 px-3 text-center">
                                <div class="card-block px-6">
                                    <h2 class="card-title text-center text-uppercase">${d.name}</h2>
                                    <p class="card-text">
                                    <h4 class="card-title text-center">Gender : ${d.gender}</h4>
                                    </p>
                                    <h4 class="card-title text-center">Chip : ${d.chip}</h4>
                                    <p>
                                    <h4 class="card-title text-center">Size : ${d.size}</h4>
                                    </p>
                                    <p> 
                                    <h4 class="card-title text-center">Birthdate : ${d.birthdate}</h4>
                                    </p>

                                    <br>
                                    <a type="button" class="btn mt-auto btn btn-primary" href="${pageContext.request.contextPath}/adoptdog">Adopt me</a>

                                  
                                </div>
                            </div>
                            <!-- Dog photo -->
                            <div class="col-md-5">
                                <div>

                                    <img class="card-img mh200-text "
                                         src="resources/images/adoption/${d.name}.jpg"
                                         alt="Dog image" style="height:300px;">
                                   
                                </div>
                            </div>
                        </div>

                    </div>
                    <br>
                </c:forEach>
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

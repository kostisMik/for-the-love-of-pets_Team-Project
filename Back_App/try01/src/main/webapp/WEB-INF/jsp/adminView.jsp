<%-- 
    Document   : adminView
    Created on : Nov 25, 2019, 8:12:08 PM
    Author     : Kostis.Mikroulis 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta<head>
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
        <link href="resources/css/style_admin.css" rel="stylesheet">
        <title>Admin</title>
    </head>
    <body id="page-top">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <img id="logo_animated" src="/PawSociety/img/logos/logo_animated.gif" alt="logo-animated">
                <a class="navbar-brand js-scroll-trigger logo" href="index.html">Paw Society</a>
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
        <!-- ARRAY of the Dogs -->
        <section>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Chip</th>
                            <th scope="col">Size</th>
                            <th scope="col">Birthdate</th>
                            <th scope="col">Options</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Dias</td>
                            <td>Male</td>
                            <td>AB1234</td>
                            <td>Toy</td>
                            <td>08/17/2011</td>
                            <td><button type="button" class="btn btn-info">Insert</button>
                                <button type="button" class="btn btn-success">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Kira</td>
                            <td>Female</td>
                            <td>AB1235</td>
                            <td>Medium</td>
                            <td>08/29/2019</td>
                            <td><button type="button" class="btn btn-info">Insert</button>
                                <button type="button" class="btn btn-success">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Shagar</td>
                            <td>Male</td>
                            <td>AB1236</td>
                            <td>Toy</td>
                            <td>07/20/2016</td>
                            <td><button type="button" class="btn btn-info">Insert</button>
                                <button type="button" class="btn btn-success">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section>
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

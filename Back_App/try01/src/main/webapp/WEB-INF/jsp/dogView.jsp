<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>View Dogs</title>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link href="resources/css/style.css" rel="stylesheet">
    </head>
    <body>
  
        <!-- NAVIGATON BAR -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <!-- LOGO -->
                <img id="logo_animated" src="resources/images/logos/logo_animated.gif" alt="animated-logo">
                <!-- Dummy Controller returning HOME !DONE!-->
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
                            <!--  TO-DO CONTROLLER -->
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/index/#about">About us</a>
                        </li>
                        <li class="nav-item">
                            <!--  !DONE! ADOPT CONTROLLER -->
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/adopt">Adopt</a>
                        </li>
                        <li class="nav-item">
                            <!--  TO-DO CONTROLLER ( OPENS PAYPAL SANDBOX ) - Use for validation of login too  -->
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/donate">Donate</a>
                        </li>
                        <li class="nav-item">
                            <!--  INSERT CONTROLLER -->
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/register">Register</a>
                        </li>
                        <li class="nav-item">
                            <!--   ( LOGIN ) HERE SPRING SECURITY -->
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/login">Log in</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <section class="page-section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">

                        <h2>Our dogs</h2>
                        <form modelAttribute="doggy" action="showDogs" method="post" enctype="multipart/form-data"
                              style="text-align: center;">
                            <table class="table table-striped table-light" border="1" style="margin: auto; width: 70%;" bgcolor="grey">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Gender</th>
                                        <th>Size</th>
                                        <th>Birthdate</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <c:forEach items="${Dog}" var="d">
                                    <tbody>
                                        <tr>
                                            <td scope="col" style="background-color: darkgrey">${d.name}</td>
                                            <td scope="col" style="background-color: darkgrey">${d.gender}</td>
                                            <td scope="col" style="background-color: darkgrey">${d.size}</td>
                                            <td scope="col" style="background-color: darkgrey">${d.birthdate}</td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/delete/${d.dogId}" method="get"><i class="icon ion-md-trash"></i></button>
                                            </td>


                                        </tr>


                                    </tbody>
                                </c:forEach>

                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <br>
            <div class="text-center">
                    
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="${pageContext.request.contextPath}/insertdog"> Insert Doggy</a> 
            </div>
                        

            <br>
            <br>

            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">

                        <h2>Our Users</h2>
                        <form modelAttribute="users" action="showUsers" method="post" enctype="multipart/form-data"
                              style="text-align: center;">
                            <table class="table table-striped table-light" border="1" style="margin: auto; width: 70%;" bgcolor="grey">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <c:forEach items="${User}" var="u">
                                    <tbody>
                                        <tr>
                                            <td scope="col" style="background-color: darkgrey">${u.firstname} ${u.lastname}</td>
                                            <td scope="col" style="background-color: darkgrey">${u.email}</td>
                                        </tr>


                                    </tbody>
                                </c:forEach>

                            </table>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </section>

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

</body>
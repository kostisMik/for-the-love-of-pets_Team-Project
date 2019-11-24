<%-- 
    Document   : index
    Created on : Oct 28, 2019, 3:26:15 PM
    Author     : Kostis.Mikroulis 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paw Society</title>
        <!-- CUSTOM CSS RULES -->
        <link href="resources/css/style.css" rel="stylesheet">
        <!-- BOOTSTRAP CORE CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- CUSTOM FONTS FOR THE TEMPLATE -->
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
              type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">
    </head>
    <body id="page-top">

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
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/about">About us</a>
                        </li>
                        <li class="nav-item">
                            <!--  !DONE! ADOPT CONTROLLER -->
                            <a class="nav-link js-scroll-trigger bar-li" href="${pageContext.request.contextPath}/adopt">Adopt</a>
                        </li>
                        <li class="nav-item">
                            <!--  TO-DO CONTROLLER ( OPENS PAYPAL SANDBOX ) - Use for validation of login too  -->
                            <a class="nav-link js-scroll-trigger bar-li" href="#">Donate</a>
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

        <!-- HEADER --SECTION -->
        <header class="masthead">
            <div class="container">
                <div class="intro-text pt3">
                    <div class="intro-lead-in">Every dog needs a home!</div>
                    <div class="intro-heading ">Do small things with great love...</div>
                    <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Adopt now</a>
                </div>
            </div>
        </header>

        <!-- ABOUT US --SECTION -->
        <section class="page-section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">About us</h2>
                        <hr>
                        <h3 class="section-subheading text-muted">Welcome to Dog Society! This is our story . . .</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="timeline">
                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/1.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <!-- <h4>2009-2011</h4> -->
                                        <h4 class="subheading">When it Began</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">Set up over 5 years ago, and with the sole purpose of rescuing the stray,
                                            abandoned dogs of Athens,
                                            our shelter cares for over 100 dogs!</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/2.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <!-- <h4>March 2011</h4> -->
                                        <h4 class="subheading">Why the Urgency</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">Each year, approximately 2.7 million dogs and cats are killed every year because
                                            shelters are too full and there aren’t enough adoptive homes.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/3.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <!-- <h4>December 2012</h4> -->
                                        <h4 class="subheading">Where are We</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">Based in Kalivia, Attiki, the rescued dogs have up to 33,000 square meters of
                                            private, enclosed olive groves to run around in.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/4.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>Common Goal</h4>
                                        <h4 class="subheading"></h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted"> Fueled by our perpetual love for animals, we are surrounded by individuals who
                                            share our vision: a country where pets will be stray no more!</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <h4>Be Part
                                        <br>Of Our
                                        <br>Story!</h4>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- SERVICES --SECTION -->
        <section class="page-section" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Our society</h2>

                        <h3 class="section-subheading text-muted ">Please adopt, Don't shop!</h3>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-dog fa-stack-1x"></i>
                            <!-- <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i> -->
                        </span>
                        <h4 class="service-heading">Adoption</h4>
                        <p class="text-muted">Ready to expand your lifestyle to provide daily care, love and attention to a furever
                            friend?
                            Adopting a dog is FREE! Give them an opporunity to live a decent life within a caring environment.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <!-- <i class="fas fa-laptop fa-stack-1x fa-inverse"></i> -->
                            <i class="fas fa-hand-holding-heart fa-stack-1x"></i>
                        </span>
                        <h4 class="service-heading">Virtual Adoption</h4>
                        <p class="text-muted">Can't adopt one? Try virtual adoption!
                            In joining this program you will be making a donation that will be contributing to food,
                            behavioral support, general & medical care for all of the dogs at Dog Society.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <!-- <i class="fas fa-lock fa-stack-1x fa-inverse"></i> -->
                            <i class="fas fa-briefcase-medical fa-stack-1x"></i>
                        </span>
                        <h4 class="service-heading">Pet Care</h4>
                        <p class="text-muted">
                            Dog society provides vaccination, sterilization and other necessary medical assistance to all rescued dogs.
                            We offer them a safe haven until their new family comes along.</p>
                    </div>
                </div>
            </div>
        </section>



        <!-- TEAM --SECTION -->
        <section class="bg-light page-section" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Our Team</h2>
                        <h3 class="section-subheading text-muted">Our dream is that one day, all animals will be safe.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src=" " alt="">
                            <h4>Evi Tiraki</h4>
                            <p class="text-muted">Vet</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src=" " alt="">
                            <h4>Lefteris Ballis</h4>
                            <p class="text-muted">Founder</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src=" " alt="">
                            <h4>Kostis Mikroulis</h4>
                            <p class="text-muted">Trainer</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <p class="large text-muted">Let's transform our society into a place where all animals will be treated with
                            care and love! </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- CONTACT --SECTION -->
        <section>
        <div class="container-fluid">
            <div class="row">
                <iframe id="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50434.35520050646!2d23.865862620127775!3d37.81002097830332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1925cede00b33%3A0x30dee17ff02fcef8!2zzprOsc67z43Oss65zrEgzpjOv8-BzrnOus6_z40gMTkwIDEw!5e0!3m2!1sel!2sgr!4v1573323030083!5m2!1sel!2sgr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>
        </div>

        <div id="contact" class="container">
            <div class="row">
                <div class="col-md-6">
                    <h3>Contact Details</h3>
                    <hr>
                    <div class="info">
                        <div>
                            <i class="fa fa-map-marker"></i>
                            <p>A108 Adam Street<br>New York, NY 535022</p>
                        </div>

                        <div>
                            <i class="fa fa-envelope"></i>
                            <p>info@example.com</p>
                        </div>

                        <div>
                            <i class="fa fa-phone"></i>
                            <p>+1 5589 55488 55s</p>
                        </div>
                    </div>
                    <hr>

                </div>
                <div class="col-md-6">
                    <h3>Contact Form</h3>
                    <hr>
                    <form novalidate>
                        <div class="form-group"></div>
                        <label for="name">Name:</label>
                        <input class="form-control" type="text" name="name">

                        <div class="form-group"></div>
                        <label for="email">Email:</label>
                        <input class="form-control" type="email" name="email">

                        <div class="form-group"></div>
                        <label for="text">Message:</label>
                        <input class="form-control" type="text" name="text">
                        <button id="contact-btn" class="btn btn-primary btn-s text-uppercase js-scroll-trigger">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </section><!-- #contact -->

    <!-- FOOTER -->
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
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>
    
    <!-- KOSTIS  ALTERNATIVE CDNs ( if above don't work ) 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    -->
    <!-- Optional JavaScript -->
    <!-- NOTE: jQuery first, then Popper.js, then Bootstrap JS -->

</body>


</html>

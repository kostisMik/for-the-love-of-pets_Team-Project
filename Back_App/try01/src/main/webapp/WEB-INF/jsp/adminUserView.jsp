<%-- 
    Document   : adminUserView
    Created on : Nov 26, 2019, 1:05:17 PM
    Author     : Kostis.Mikroulis 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin View | Users</title>
    </head>
    <body>
        <div class="bg">
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <i class="icon ion-md-school navbar-brand"
                   style="font-size:160%; font-family: 'Mansalva', cursive;">SchoolApp</i>
            </nav>
            <div class="container">
                <h2>Trainer List</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>ACTIONS</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${trainers}" var="tr">
                            <tr>
                                <td>${tr.id}</td>
                                <td>${tr.firstname}</td>
                                <td>${tr.lastname}</td>
                                <td>${tr.email}</td>
                                <td><a href="showUpdateForm.htm?id=${tr.id}" method="get"><i class="icon ion-md-create"></i></a></td>
                                <td><a href="deleteTrainer.htm?id=${tr.id}" method="get"><i class="icon ion-md-trash"></i></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="homepage.htm" id="home">Retun to Homepage</a>
            </div>
        </div>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
                integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
        crossorigin="anonymous"></script>
    </body>
</html>

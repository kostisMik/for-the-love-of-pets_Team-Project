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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User Login</h1>
        <form action="${pageContext.request.contextPath}/logged" method="post">
            Email:<input type="text" name="email">
            Password:<input type="password" name="password">
            <input type="submit" value="submit">
        </form>
    </body>
</html>

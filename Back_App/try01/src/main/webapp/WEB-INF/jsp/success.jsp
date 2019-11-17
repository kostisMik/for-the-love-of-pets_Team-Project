<%-- 
    Document   : success
    Created on : Nov 17, 2019, 9:56:10 PM
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
         <table align="center" style="border-collapse: separate; border: 2px solid black; border-radius: 8px; border-spacing: 10px">       
            <tr>
                <td>First Name:</td>
                <td><%= request.getParameter("firstname") %></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><%= request.getParameter("lastname") %></td>
            </tr>           
            <tr>
                <td>Email:</td>
                <td><%= request.getParameter("email") %></td>
            </tr>
            
        </table>
        <a href="index.jsp">Return Home.</a>
    </body>
</html>

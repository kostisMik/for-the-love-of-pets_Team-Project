<%-- 
    Document   : registerDog
    Created on : Nov 26, 2019, 1:56:27 PM
    Author     : Kostis.Mikroulis 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin's View | Dogs' Page</title>
    </head>
    <body>
        <!-- name, gender, chip, size -->
        <spring:form modelAttribute="dog" id="contactForm" name="Registration" action="${pageContext.request.contextPath}/inserted" method="POST" >
                            <div class="row">
                                <div class="col-md-12 maindiv">
                                    <div class="form-group"> 
                                        <spring:label path="name"></spring:label>
                                        <spring:input path="name" class="form-control" placeholder="Enter doggo's name" required="required"
                    data-validation-required-message="Please enter your name."></spring:input>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        
                                        <div class="form-group">
                                        <spring:label path="gender"></spring:label>
                                        <spring:input path="gender" class="form-control" placeholder="Your " required="required"
                    data-validation-required-message="Please enter your email address."></spring:input>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        <div class="form-group">
                                        <spring:label path="chip"></spring:label>
                                        <spring:input path="chip" class="form-control" placeholder="Chip Code" required="required"
                    data-validation-required-message="Please enter your last name."></spring:input>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        <div class="form-group">
                                        <spring:label path="size"></spring:label>
                                        <spring:input path="size" class="form-control" placeholder="Size" required="required"
                    data-validation-required-message="Please enter your last name."></spring:input>
                                            <p class="help-block text-danger"></p>
                                        </div>

                                        <div class="clearfix"></div>
                                        <div class="col-lg-12 text-center">
                                            <div id="success"></div>

                                            <input id="Submit" class="btn btn-primary btn-xl text-uppercase" type="submit" value="Submit">
                                        </div>
                                    </div>
                            </div>
                            </spring:form>
    </body>
</html>

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Kostis.Mikroulis
 * Controller handling dynamically : 
 * 
 * ( 1 ) 404 errors.
 * ( 2 ) 500 errors.
 * ( 3 ) Custom "/error"( we disabled Spring Boot's Default ).
 */
@Controller
public class CustomErrorController implements ErrorController {

    @GetMapping("/error")
    public String handleError( HttpServletRequest request ){
        
        // Defining an object to handle errors depending on HTTP STATUS.
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        
        if( status != null ){
            Integer statusCode = Integer.valueOf( status.toString() );
            if( statusCode == HttpStatus.NOT_FOUND.value() ){
                
                return "404Page";
            } else if( statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value() ){
                
                return "500Page";
            } else if ( statusCode == HttpStatus.METHOD_NOT_ALLOWED.value() ){
                
                return "405Page";
            }
        }      
        return "error";
    }
    
    
    @Override
    public String getErrorPath() {
        
        return "/error";
    }  
}

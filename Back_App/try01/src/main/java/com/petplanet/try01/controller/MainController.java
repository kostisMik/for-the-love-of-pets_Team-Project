/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.controller;

import com.petplanet.try01.model.User;
import com.petplanet.try01.services.UserService;
import javax.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Kostis.Mikroulis
 * ------------------------------------------
 * ( 1 ) Main Page Navigation Links --Controller /
 * ( 2 ) Register ( insert entity to Database ) --Controller ( for model.user, model.dog )
 * ( 3 ) Login Controller 
 *  -->( Controller for later handling the Spring Security Login functionality )
 */
@Controller
@Transactional
public class MainController {
    
    @Autowired
    UserService uService;
    
    // GENERAL CONTROLLERS ( Navigating main page's links )
    
    // Go home by pressing logo ( WORKING )
  @GetMapping("/")
  public String returnHome(){
      
      return "index";
  }
  
  // ( WORKING )
  @GetMapping("/adopt") 
  public String adopt(){
  
      return "adopt";
  }
  
  
  
  // THE INSERT CONTROLLER ( GET & POST ) ( WORKING ?!? )
  @GetMapping("/register")
  public String openRegistration( ModelMap modelo ){
      User user = new User();
      modelo.addAttribute(user);
      
      return "registration";
  }
 
  @PostMapping( value = "/inserted" )
  public String insertUser( @ModelAttribute( "user" ) User user,
          HttpSession session ) {
      
      String hashed = BCrypt.hashpw( user.getPassword(), BCrypt.gensalt() );
      user.setPassword(hashed);
      uService.insertUser(user);
      session.removeAttribute("userlogin");
//      user.setPassword(null);
      session.setAttribute("userlogin", user);
      return "index";
  }
  
  // THE LOGIN CONTROLLER 
  @GetMapping( "/login" )
    public String loginPage() {
        return "login";
    }

}

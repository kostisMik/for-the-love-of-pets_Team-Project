/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.controller;

import com.petplanet.try01.model.User;
import com.petplanet.try01.services.UserService;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Kostis.Mikroulis
 */
@Controller
@Transactional
public class RegLoginController {
    
    @Autowired
    UserService uService;
    
    // ON PRESS OF REGISTER
//    @GetMapping("/register")
//    public String index(ModelMap modelo) {
//        User user = new User();
//        modelo.addAttribute(user);
//    return "registration";
//    } 
    
    
    // ON SUCCESSFUL REGISTER -- INSERT TO DATABASE FUNCTIONALITY
//    @PostMapping(value = "/registered")
//    public String registerUser(@ModelAttribute("user") User user,
//            HttpSession session, BindingResult result) {  
//        // BindingResult checks for errors runtime.
//        if (result.hasErrors()) {
//            return "error";
//        }
//        // take the password and pass it to a value where BCrypt lib hashes it
//        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
//        user.setPassword(hashed);
//        // insert user to database
//        uService.insertUser(user);  
//        session.removeAttribute("login");
//        user.setPassword(null);
//        session.setAttribute("login", user);
//  
//        return"success";
//    }
    
    
    // LOGIN PROCESS
//    @GetMapping("/login")
//    public String userlogin() {
//        // This is Spring Security's login page ! !
//        return "login";
//    }
//    
//    @PostMapping(value="/logged")
//    public String doLogin(@RequestParam(value="email") String email, 
//          @RequestParam(value="password") String password, HttpSession session){
//        
//        User user = uService.findUserByEmail(email);
//        
//        boolean isValid = BCrypt.checkpw(password, user.getPassword());
//        if( isValid ){
//            session.removeAttribute("login");
//            user.setPassword(null);
//            session.setAttribute("login", user);
//            return "index";
//        }
//        return "login";
//    }
    
//    @PostMapping(value = "/logged")
//    public String login(@RequestParam(value = "email") String email, @RequestParam(value = "password") String password,
//            HttpSession session) {
//        User u = us.findUserByEmail(email);
//        boolean isvalid = BCrypt.checkpw(password, u.getUserPassword());
//        if (isvalid) {
//            session.removeAttribute("userlogin");
//            u.setUserPassword(null);
//            session.setAttribute("userlogin", u);
//            return "index";
//        }
//        return "login";
//    }
//       
    
      
//  // GENERAL CONTROLLERS ( NAVIGATION )
//  @GetMapping("/adopt")
//  public String adopt(){
//      
//      return "adopt";
//  }
}


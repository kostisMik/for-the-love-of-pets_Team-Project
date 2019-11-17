/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.controller;

import com.petplanet.try01.model.User;
import com.petplanet.try01.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Kostis.Mikroulis
 */
@Controller
public class RegLoginController {
    
    @Autowired
    UserService uService;
    
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String index(@ModelAttribute("user") User user, ModelMap modelo) {
        modelo.put("user", user);
        modelo.addAttribute("user", user);
    return "registration";
    } 
    
    
    @RequestMapping(value="/registered", method = RequestMethod.POST)
    public String register(@ModelAttribute("user") User user, ModelMap modelo){      
        
//        modelo.addAttribute("firstname", user);
//        modelo.addAttribute("lastname", user);
//        modelo.addAttribute("email", user);
//        modelo.addAttribute("password", user);
        uService.saveUser(user);
        System.out.println(user.getFirstname());
        
        return"success";
    }
       
      
    
  @RequestMapping(value= "/adopt", method = RequestMethod.GET)
  public String about(){
      
      return "adopt";
  }
}


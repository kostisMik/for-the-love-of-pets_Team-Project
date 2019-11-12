/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.services;

import com.petplanet.try01.model.User;
import java.util.List;

/**
 *
 * @author Kostis.Mikroulis
 */
public interface UserService {
    
    User findById(Long id);
    
    User findByFirstName(String firstName);
    
    User findByLastName(String lastName);
    
    User findByEmail(String email);
    
    void saveUser(User user);
    
    void updateUser(User user);
    
    void deleteUserById(Long id);
    
    void deleteAllUsers();
    
    List<User> findAllUsers();
    
    boolean isUserExist(User user);
    
}

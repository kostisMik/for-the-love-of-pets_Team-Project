/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.services;

import com.petplanet.try01.model.Dog;
import com.petplanet.try01.model.User;
import java.util.List;

/**
 *
 * @author Kostis.Mikroulis
 */
public interface UserService {
    
    public void insertUser( User u );
    
    public Iterable<User> getUsers();
    
    public List<User> findUserByFirstName( String firstname );
    
    public User findUserByEmail(String email);
    
    public Dog findDogByName(String name);
    
    public void insertDoggy(Dog d);
    
}

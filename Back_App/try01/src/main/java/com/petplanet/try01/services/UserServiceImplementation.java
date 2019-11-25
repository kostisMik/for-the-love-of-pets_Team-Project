/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.services;

import com.petplanet.try01.model.User;
import com.petplanet.try01.repository.UserRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kostis.Mikroulis
 * 
 */
@Service
@Transactional
public class UserServiceImplementation implements UserService {
    
    @Autowired
    UserRepository uRepository;
    
    @Override
    public void insertUser(User user) {
        uRepository.save(user);
    }

    @Override
    public Iterable<User> getUsers() {
        return uRepository.findAll();
    }

    @Override
    public List<User> findUserByFirstName(String firstname) {
        return uRepository.findByFirstName(firstname);
    }

    @Override
    public User findUserByEmail(String email) {
        return uRepository.findByEmail(email);
    }
    
}

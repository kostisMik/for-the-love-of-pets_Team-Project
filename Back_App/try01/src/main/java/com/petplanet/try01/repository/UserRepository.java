/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.repository;

import com.petplanet.try01.model.User;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Kostis.Mikroulis
 */
@Repository
public interface UserRepository extends CrudRepository<User, Integer>{
    
    @Query("SELECT u FROM User u WHERE u.firstname = :firstname")
    public List<User> findByFirstName(String firstname);
      
    @Query("SELECT u FROM User u WHERE u.email = :email")
    public User findByEmail(@Param("email") String email );
    
}

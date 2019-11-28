/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.repository;

import com.petplanet.try01.model.Dog;
import java.util.List;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author EVI
 */
@Repository
public interface DogRepository  extends CrudRepository<Dog, Integer>{
 @Query("SELECT d FROM Dog d")
    public List<Dog> findAllDogs();    
   
 @Query("SELECT d FROM Dog d WHERE d.name = :name")
    public Dog findByName(@Param("name") String name );
    
 
}

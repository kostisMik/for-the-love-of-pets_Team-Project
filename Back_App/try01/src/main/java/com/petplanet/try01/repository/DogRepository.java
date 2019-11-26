/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.repository;

import com.petplanet.try01.model.Dog;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Kostis.Mikroulis
 */
@Repository
public interface DogRepository extends CrudRepository {
    
    @Query( "SELECT d FROM Dog d" )
    public List<Dog> findAllDogs();
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.services;

import com.petplanet.try01.model.Dog;
import com.petplanet.try01.repository.DogRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kostis.Mikroulis
 */
@Service
@Transactional
public abstract class DogServiceImpl implements DogService {
    
    @Autowired
    DogRepository dogRepo;

    @Override
    public void insertDog(Dog dog) {
        dogRepo.save(dog);
    }

    public /*Object*/ DogServiceImpl() {
        List<Dog> dogs = dogRepo.findAllDogs();
        
    }
    
    
    
}

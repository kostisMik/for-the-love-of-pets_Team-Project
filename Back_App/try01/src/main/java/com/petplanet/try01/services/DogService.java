/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.services;

import com.petplanet.try01.model.Dog;
import java.util.List;

/**
 *
 * @author Kostis.Mikroulis
 */
public interface DogService {
    
    public void insertDog ( Dog dog );
    
    public List<Dog> findAll();
}

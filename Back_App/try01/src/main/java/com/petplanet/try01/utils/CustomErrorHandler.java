/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.utils;

/**
 *
 * @author Kostis.Mikroulis
 */
public class CustomErrorHandler {
    
    
    private final String errorMessage;

    public CustomErrorHandler(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }
    
}

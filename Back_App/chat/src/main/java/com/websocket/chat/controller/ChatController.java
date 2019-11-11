/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websocket.chat.controller;

import com.websocket.chat.model.ChatMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;

/**
 *
 * @author Kostis.Mikroulis
 */
@Controller
public class ChatController {
    
    @MessageMapping("/chat.sendMessage")
    @SendTo("/topic/public")
    public ChatMessage sendMessage(@Payload ChatMessage chatMessage){
        
        return chatMessage;
    }
    
//     Messages sent from clients will berouted to following message handling methods(See "WebSocketConfig")
    @MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    // Broadcasting user "join" event with following method.
    public ChatMessage addUser(@Payload ChatMessage chatMessage,
            SimpMessageHeaderAccessor headerAccessor){
        
        // Add username in web socket session.
        headerAccessor.getSessionAttributes().put("Username", chatMessage.getSender());
        return chatMessage;
    }
    
}

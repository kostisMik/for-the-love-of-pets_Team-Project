/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websocket.chat.controller;

import com.websocket.chat.model.ChatMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

/**
 *
 * @author Kostis.Mikroulis
 */
@Component
public class WebSocketEventListener {
    
    private static final Logger LOGGER = LoggerFactory.getLogger(WebSocketEventListener.class);
   
    @Autowired
    private SimpMessageSendingOperations messagingTemplate;
    
    @EventListener
    public void handleWebSocketDisconnectListener(SessionDisconnectEvent event){
        
        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
        
        // Extract user's name from the web socket session
        String username = (String) headerAccessor.getSessionAttributes().get("username");
        if(username != null){
            LOGGER.info("User Disconnected : " + username);
            
            // Broadcast a user "leave" event to ALL connected clients
            ChatMessage chatMessage = new ChatMessage();
            chatMessage.setType(ChatMessage.MessageType.LEAVE);
            chatMessage.setSender(username);
            
            messagingTemplate.convertAndSend("/topic/public", chatMessage);
        }
    }
       
}

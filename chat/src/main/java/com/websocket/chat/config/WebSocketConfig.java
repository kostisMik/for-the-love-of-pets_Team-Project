/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websocket.chat.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

/**
 *
 * @author Kostis.Mikroulis
 * 
 */
@Configuration
// Enable WebSocket server
@EnableWebSocketMessageBroker
// implement interface to configure websocket connection.
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer{
    
    // Register a websocket endpoint for the clients to connect to our websocket server.
    // We use SockJS to enable fallback options for browsers that don't support websocket.
    @Override
    // STOMP stands for Simple Text Oriented Messaging Protocol. It is a messaging protocol 
   // that defines the format and rules for data exchange.
    public void registerStompEndpoints(StompEndpointRegistry registry){
        registry.addEndpoint("/ws").withSockJS();
    }
    
    // Configuring message broker used to route messages client-to-client.
    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry){
        
        // Define that messages that start with destination "/app" should be routed to message-handling methods( see "ChatController" )
        registry.setApplicationDestinationPrefixes("/app");
        
        // Define that messages that start from destination "/topic" should be routed to the message broker.
        // Message broker broadcasts messages to all connected clients who are subscribed to given "topic".
        registry.enableSimpleBroker("/topic");
    }
    
}

package com.parkingvspb.igor_sasha.parking.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyControllerREST {
    @GetMapping("/home")
    public String qwe(){
        return "Hello";
    }

    @GetMapping("/sosed")
    public String sosed(){
        return "Привет, я твой новый сосед! Меня зовут Игорь, давай дружить!";
    }
}

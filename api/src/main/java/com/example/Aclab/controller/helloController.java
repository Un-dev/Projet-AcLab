package com.example.Aclab.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api")
public class helloController {

    @GetMapping
    public String hello(){
        return "Hello Netlab";
    }
}
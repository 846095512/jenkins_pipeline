package com.example.jenkinscicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {


    @GetMapping("/hello")
    public String hello() {
        System.out.println("hello v1");
        return "hello v1";
    }
}

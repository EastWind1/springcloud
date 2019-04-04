package com.example.servicea.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("")
public class TestController {
    @Value("${test}")
    private String test;
    @GetMapping("")
    public String index() {
        return "This is service a";
    }
    @GetMapping("config")
    public String config() {
        return test;
    }
}

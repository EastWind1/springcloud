package com.example.serviceb.controller;

import com.example.serviceb.service.Servicea;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("")
public class TestController {
    @Autowired
    private Servicea servicea;
    @RequestMapping("")
    public String index() {
        return "This is service b";
    }
    @RequestMapping("a")
    public String getA() {
        return servicea.getA();
    }
}

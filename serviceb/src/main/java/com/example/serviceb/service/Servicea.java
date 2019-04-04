package com.example.serviceb.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(value = "servicea")
public interface Servicea {
    @RequestMapping("")
    String getA();
}

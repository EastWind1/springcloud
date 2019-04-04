package com.example.gateway.config;

import com.example.gateway.repository.MysqlRouteDefineRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RouteDefineConfig {
    @Bean
    public MysqlRouteDefineRepository mysqlRouteDefineRepository() {
        return new MysqlRouteDefineRepository();
    }
}

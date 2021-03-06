package com.example.gateway.repository;

import com.example.gateway.entity.GatewayDefine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GatewayDefineRepository extends JpaRepository<GatewayDefine, String> {
}

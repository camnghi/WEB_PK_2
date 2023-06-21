package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.poly.entities.Chitietgiohang;

@EnableJpaRepositories
public interface ChitietgiohangDAO extends JpaRepository<Chitietgiohang, Integer> {

}

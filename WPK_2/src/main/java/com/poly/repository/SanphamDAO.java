package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.SanPham;

public interface SanphamDAO extends JpaRepository<SanPham, Integer> {

}

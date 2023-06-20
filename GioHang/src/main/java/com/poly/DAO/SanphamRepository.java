package com.poly.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.Sanpham;

public interface SanphamRepository extends JpaRepository<Sanpham, Long> {
}
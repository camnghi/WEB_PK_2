package com.poly.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.Giohang;
import com.poly.entities.Khachhang;

public interface GiohangRepository extends JpaRepository<Giohang, Long> {
    Optional<Giohang> findByTaiKhoan(String taiKhoan);
    
}
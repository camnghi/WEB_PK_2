package com.poly.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.HoaDon;
import com.poly.entities.KhachHang;

public interface KhachhangDAO extends JpaRepository<KhachHang, String> {
	Page<KhachHang> findAllBytaiKhoanLike(String keywords, Pageable pageable);

}

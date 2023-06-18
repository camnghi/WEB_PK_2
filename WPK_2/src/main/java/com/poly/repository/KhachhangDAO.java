package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.KhachHang;

public interface KhachhangDAO extends JpaRepository<KhachHang, String> {

	Page<KhachHang> findAllByhoTenLike(String keywords, Pageable pageable);

	Page<KhachHang> findAllBytaiKhoanLike(String keywords, Pageable pageable);
	
    KhachHang findByTaiKhoanAndMatKhau(String taiKhoan, String matKhau);
    
//    List<KhachHang> findByTaiwKhoanThongThuong(String taiKhoan);

}

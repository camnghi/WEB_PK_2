package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.Chitietgiohang;

public interface ChitietgiohangDAO extends JpaRepository<Chitietgiohang, Integer> {
//	List<Chitietgiohang> findByGioHang(GioHang giohang);

	//	List<Chitietgiohang> findByKhachHang(String khachhang);

}

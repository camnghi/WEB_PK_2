package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.Chitietgiohang;
import com.poly.entities.GioHang;

public interface GiohangDAO extends JpaRepository<GioHang, Integer> {

	@Query("SELECT gh FROM GioHang gh WHERE gh.khachhang = :khachhang")
	GioHang findByKhachhang(@Param("khachhang") KhachHang khachhang);
	
//	List<Chitietgiohang> findByChiTietGioHangs(GioHang gioHang);
}

package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.GioHang;
import com.poly.entities.KhachHang;

public interface GiohangDAO extends JpaRepository<GioHang, Integer> {

	List<GioHang> findByKhachhang(KhachHang khachHang);

//	@Query("SELECT o FROM GioHang o.khachhang.Username='vinh01' ")
//	List<GioHang> findByUsername();


}

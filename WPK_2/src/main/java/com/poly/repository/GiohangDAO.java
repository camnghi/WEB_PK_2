package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.GioHang;

public interface GiohangDAO extends JpaRepository<GioHang, Integer> {

//	List<GioHang> findBytaiKhoan(String taiKhoan);

//	@Query("SELECT o FROM GioHang o.khachhang.Username='vinh01' ")
//	List<GioHang> findByUsername();

}

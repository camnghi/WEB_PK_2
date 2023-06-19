package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.HoaDon;

public interface HoadonDAO extends JpaRepository<HoaDon, Integer> {

	@Query("SELECT hd FROM HoaDon hd WHERE hd.khachhang.taiKhoan = :taiKhoan AND hd.trangThai = 'Chờ lấy hàng'")
	List<HoaDon> findHoaDonByTrangThaiAndTaiKhoan(@Param("taiKhoan") String taiKhoan);

}
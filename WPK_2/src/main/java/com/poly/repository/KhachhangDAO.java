package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.KhachHang;

public interface KhachhangDAO extends JpaRepository<KhachHang, String> {

	Page<KhachHang> findAllByhoTenLike(String keywords, Pageable pageable);

	Page<KhachHang> findAllBytaiKhoanLike(String keywords, Pageable pageable);

	KhachHang findByTaiKhoanAndMatKhau(String taiKhoan, String matKhau);

	@Query("SELECT k FROM KhachHang k WHERE k.trangThai = true")
	List<KhachHang> findActiveCustomers();

	@Query("SELECT k FROM KhachHang k WHERE k.trangThai = false")
	List<KhachHang> findUnActiveCustomers();

//	@Query("SELECT kh FROM KhachHang kh WHERE kh.taiKhoan = :taiKhoan")
//	KhachHang findByTaiKhoan(@Param("taiKhoan") String taiKhoan);

}

package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.Chitietgiohang;
import com.poly.entities.GioHang;
import com.poly.entities.SanPham;

public interface ChitietgiohangDAO extends JpaRepository<Chitietgiohang, Integer> {

	Chitietgiohang findByGiohangAndSanpham(GioHang gioHang, SanPham sanPham);
	
//	List<Chitietgiohang> findByKhachHang(String khachhang);

	List<Chitietgiohang> findByGiohang(GioHang gioHang);

}

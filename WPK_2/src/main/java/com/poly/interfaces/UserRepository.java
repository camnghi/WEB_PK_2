package com.poly.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.entities.KhachHang;

@Repository
public interface UserRepository extends JpaRepository<KhachHang, Long> {
	KhachHang findBymaXacNhan(String maXacNhan);

	KhachHang findByTaiKhoanAndMatKhau(String taiKhoan, String matKhau);
}

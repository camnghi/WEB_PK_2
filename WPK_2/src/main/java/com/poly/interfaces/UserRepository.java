package com.poly.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.KhachHang;

public interface UserRepository extends JpaRepository<KhachHang, String> {
	KhachHang findBymaXacNhan(String maXacNhan);
	KhachHang findByTaiKhoanAndMatKhau(String taiKhoan, String matKhau);
    KhachHang findByEmail(String email);

}

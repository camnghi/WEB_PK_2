package com.poly.service;

import org.springframework.stereotype.Service;

import com.poly.entities.Chitietgiohang;

@Service
public class GioHangService {
	public double caculateGioHangSum(Chitietgiohang chitietgiohang) {
		int soLuong = chitietgiohang.getSoLuong();
		double giaSp = chitietgiohang.getSanpham().getGiaSp();
		return soLuong * giaSp;
	}
}

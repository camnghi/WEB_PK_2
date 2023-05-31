package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("/quanLyChiTietSanPham")
public class quanLyChiTietSanPham {

	@GetMapping("form")
	public String form() {
		return "quanLyChiTietSanPham";
	}
}

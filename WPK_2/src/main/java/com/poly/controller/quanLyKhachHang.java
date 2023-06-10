package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.KhachHang;
import com.poly.entities.SanPham;
import com.poly.repository.KhachhangDAO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping ("/quanLyKhachHang")
public class quanLyKhachHang {
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	KhachhangDAO khachhangdao;
	@GetMapping("form")
	public String form(Model model) {
		request.setAttribute("form_QLKhachHang", "layout/admin/form_QLKhachHang.jsp");
		KhachHang item = new KhachHang();
		model.addAttribute("item", item);
		List<KhachHang> items = khachhangdao.findAll();
		model.addAttribute("items", items);
		return "quanLyKhachHang";
	}
}

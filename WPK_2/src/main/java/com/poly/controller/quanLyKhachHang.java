package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.KhachHang;
import com.poly.repository.KhachhangDAO;

@Controller
@RequestMapping("/quanLyKhachHang")
public class quanLyKhachHang {
	@Autowired
	KhachhangDAO dao;

	@GetMapping("/form")
	public String form(Model model) {
		KhachHang item = new KhachHang();
		model.addAttribute("item", item);
		List<KhachHang> items = dao.findAll();
		model.addAttribute("items", items);
		return "quanLyKhachHang";
	}

}

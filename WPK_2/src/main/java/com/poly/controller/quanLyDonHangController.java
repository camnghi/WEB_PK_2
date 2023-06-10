package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.HoaDon;
import com.poly.repository.HoadonDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("/quanLyDonHang")
public class quanLyDonHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	
	@Autowired
	HoadonDAO hoadondao;
	
	@GetMapping("form")
	public String form(Model model) {
		HoaDon item = new HoaDon();
		model.addAttribute("item",item);
		List<HoaDon> items = hoadondao.findAll();
		model.addAttribute("items", items);
		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
		return "quanLyDonHang";
	}
}


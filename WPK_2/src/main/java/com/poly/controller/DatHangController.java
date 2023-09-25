package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.KhachHang;
import com.poly.entities.Loaisanpham;
import com.poly.repository.LoaisanphamDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("dathang")
public class DatHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	LoaisanphamDAO dao;
	@Autowired
	HttpSession session;
	@GetMapping("form")
	public String form(Model model) {
		request.setAttribute("title", "Đặt hàng");
		request.setAttribute("view", "dathang");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");			
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		return "index_Main";
	}
	
	
}


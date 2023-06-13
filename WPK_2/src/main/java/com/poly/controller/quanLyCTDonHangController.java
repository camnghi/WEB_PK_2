package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.Hoadonchitiet;
import com.poly.entities.SanPham;
import com.poly.repository.HoadonchitietDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("quanLyCTDonhang")
public class quanLyCTDonHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	HoadonchitietDAO hoadonchitietdao;
	@GetMapping("form")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {
		
		request.setAttribute("title", "Trang chủ");
		request.setAttribute("view", "items");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Hoadonchitiet item = new Hoadonchitiet();
		model.addAttribute("item", item);
		List<Hoadonchitiet> items = hoadonchitietdao.findAll();
		model.addAttribute("items", items);
	
		request.setAttribute("form_QLCTDonHang", "layout/admin/form_QLCTDonHang.jsp");
		return "quanLyCTDonhang";
	}
}

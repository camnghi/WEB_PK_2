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

import com.poly.entities.HoaDon;
import com.poly.entities.SanPham;
import com.poly.repository.HoadonDAO;
import com.poly.service.SessionService;

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
	@Autowired
	SessionService session; 
	
	@GetMapping("form")
	public String form(Model model) {
		HoaDon item = new HoaDon();
		model.addAttribute("item",item);
		List<HoaDon> items = hoadondao.findAll();
		model.addAttribute("items", items);
		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
		return "quanLyDonHang";
	}
//	@RequestMapping("search-and-page")
//	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
//			@RequestParam("p") Optional<Integer> p) {
//		String kwords = kw.orElse(session.get("keywords"));
//		session.set("keywords", kwords);
//		Pageable pageable = PageRequest.of(p.orElse(0), 5);
//		
//		Page<HoaDon> page = hoadondao.findAllByNameLike("%" + kwords + "%", pageable);
//
//		model.addAttribute("page", page);
//		return "quanLyDonHang";
//	}
}


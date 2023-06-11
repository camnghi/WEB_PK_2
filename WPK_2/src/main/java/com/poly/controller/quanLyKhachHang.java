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

import com.poly.entities.KhachHang;
import com.poly.repository.KhachhangDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/quanLyKhachHang")
public class quanLyKhachHang {
	@Autowired
	KhachhangDAO dao;
	@Autowired
	SessionService session;

	@GetMapping("/form")
	public String form(Model model) {
		KhachHang item = new KhachHang();
		model.addAttribute("item", item);
		List<KhachHang> items = dao.findAll();
		model.addAttribute("items", items);
		return "quanLyKhachHang";
	}

	@RequestMapping("search-and-page")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		int pageSize = 3;
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Page<KhachHang> page;
		if (kwords != null || !kwords.isEmpty()) {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = dao.findAllByfullnameLike("%" + kwords + "%", pageable);
		} else {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = dao.findAll(pageable);
		}

		model.addAttribute("page", page);
		return "quanLyKhachHang";
	}

}

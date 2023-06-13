package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping("/form")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		int pageSize = 2;
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Page<KhachHang> page;
		if (kwords != null && !kwords.equals("")) {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = dao.findAllByhoTenLike("%" + kwords + "%", pageable);
		} else {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = dao.findAll(pageable);
		}
		model.addAttribute("page", page);
		return "quanLyKhachHang";
	}
}

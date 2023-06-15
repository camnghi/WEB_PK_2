package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
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

//	@RequestMapping("/form")
//	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
//			@RequestParam("p") Optional<Integer> p) {
//		int pageSize = 2;
//		String kwords = kw.orElse(session.get("keywords"));
//		session.set("keywords", kwords);
//		Page<KhachHang> page;
//		if (kwords != null && !kwords.equals("")) {
//			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
//			page = dao.findAllByhoTenLike("%" + kwords + "%", pageable);
//		} else {
//			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
//			page = dao.findAll(pageable);
//		}
//		model.addAttribute("page", page);
//		return "quanLyKhachHang";
//	}

	@RequestMapping("/form")
	public String form(Model model, KhachHang khachhang,
			@RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page) {
		int pageSize = 4;
		String kwords = keywords != null ? keywords : session.get("keywords");

		Pageable pageable;
		if (field != null) {
			Sort sort = Sort.by(Direction.DESC, field);
			model.addAttribute("field", field.toUpperCase());
			pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
		} else {
			pageable = PageRequest.of(page != null ? page : 0, pageSize);
		}

		Page<KhachHang> resultPage;
		if (kwords != null && !kwords.equals("")) {
			resultPage = dao.findAllByhoTenLike("%" + kwords + "%", pageable);
		} else {
			resultPage = dao.findAll(pageable);
		}

		model.addAttribute("page", resultPage);
		return "quanLyKhachHang";
	}
}

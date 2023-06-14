package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.Loaisanpham;
import com.poly.entities.SanPham;
import com.poly.repository.LoaisanphamDAO;
import com.poly.repository.SanphamDAO;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("index")
public class MainController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	SanphamDAO sanphamdao;

	@Autowired
	LoaisanphamDAO dao;
	@Autowired
	ServletContext app;

	@RequestMapping("form")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {

		request.setAttribute("title", "Trang chủ");
		request.setAttribute("view", "items");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);

		SanPham item = new SanPham();
		model.addAttribute("item", item);
		List<SanPham> sanpham = sanphamdao.findAll();
		model.addAttribute("items", sanpham);

		Pageable pageable = PageRequest.of(p.orElse(0), 2);
		Page<SanPham> page = sanphamdao.findAll(pageable);
		model.addAttribute("page", page);
		return "index_Main";
	}

	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id_sp) {
		SanPham item = sanphamdao.findById(id_sp).get();
		model.addAttribute("item", item);
		List<SanPham> items = sanphamdao.findAll();
		model.addAttribute("items", items);
//		request.setAttribute("view", "layout/user/chitietsanpham.jsp");
		return "chitietsanpham";
	}
}

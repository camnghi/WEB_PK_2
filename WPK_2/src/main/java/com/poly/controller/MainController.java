package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.SanPham;
import com.poly.repository.SanphamDAO;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("index")
public class MainController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	SanphamDAO sanphamdao;
	@Autowired
	ServletContext app;
	
	@GetMapping("form")
	public String index(Model model) {
		request.setAttribute("title", "Trang chủ");
		request.setAttribute("view", "items");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		SanPham item = new SanPham();
		model.addAttribute("item", item);
		List<SanPham> items = sanphamdao.findAll();
		model.addAttribute("items", items);
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

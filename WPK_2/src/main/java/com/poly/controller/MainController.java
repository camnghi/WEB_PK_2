package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.Loaisanpham;
import com.poly.repository.LoaisanphamDAO;

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
	LoaisanphamDAO dao;

	@RequestMapping("form")
	public String index(Model model) {
		List<Loaisanpham> items = dao.findAll();
	    model.addAttribute("items", items);
	    
		request.setAttribute("title", "Trang chủ");
		request.setAttribute("view", "items");
		return "index_Main";
	}
}

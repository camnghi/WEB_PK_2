package com.poly.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.SanPham;
import com.poly.repository.SanphamDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("index")
public class chitietsanphamController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	SanphamDAO sanphamdao;
////	@Autowired
////	ServletContext app;
//	@Autowired
//	SessionService session; 
	@GetMapping("chitietsanpham")
	public String form(Model model) {

			request.setAttribute("title", "Chi tiết sản phẩm");
			request.setAttribute("view", "chitietsanpham");
			response.setCharacterEncoding("UTF-8");
			
			SanPham item = new SanPham();
			model.addAttribute("item", item);
			List<SanPham> items = sanphamdao.findAll();
			model.addAttribute("items", items);
//			request.setAttribute("view", "layout/user/chitietsanpham");

		return "chitietsanpham";
	}

}

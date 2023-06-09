package com.poly.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("index")
public class chitietsanphamController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
//	@Autowired
//	SanphamDAO sanphamdao;
////	@Autowired
////	ServletContext app;
//	@Autowired
//	SessionService session; 
	@GetMapping("chitietsanpham")
	public String form() {

			request.setAttribute("title", "Chi tiết sản phẩm");
			request.setAttribute("view", "chitietsanpham");
			response.setCharacterEncoding("UTF-8");
			
//			Sanpham item = new Sanpham();
//			model.addAttribute("item", item);
//			List<Sanpham> items = sanphamdao.findAll();
//			model.addAttribute("items", items);

		return "index_Main";
	}

}

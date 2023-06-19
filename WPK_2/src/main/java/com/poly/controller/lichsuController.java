package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.repository.HoadonDAO;
import com.poly.repository.KhachhangDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("lichsu")
public class lichsuController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	HoadonDAO hdDAO;
	@Autowired
	KhachhangDAO khDAO;

	@GetMapping("form")
	public String form() {
		request.setAttribute("title", "Lịch sử mua hàng");
		request.setAttribute("view", "lichsu");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}

}

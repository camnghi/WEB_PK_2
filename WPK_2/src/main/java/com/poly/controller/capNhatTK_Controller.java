package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@Controller
@RequestMapping ("capnhatTK")
public class capNhatTK_Controller {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@GetMapping("form")
	public String form() {
		request.setAttribute("title", "Cập nhật tài khoản");
		request.setAttribute("view", "capnhatTK");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}
}

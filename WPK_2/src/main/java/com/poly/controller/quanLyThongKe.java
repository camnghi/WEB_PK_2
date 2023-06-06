package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("quanLyThongKe")
public class quanLyThongKe {

	@Autowired
	HttpServletRequest request;

	@GetMapping("form")
	public String form() {
		request.setAttribute("form_QLThongKe", "layout/admin/form_QLThongKe.jsp");
		return "quanLyThongKe";
	}
}

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
	HttpServletRequest rq;
	@GetMapping("form")
	public String form() {
rq.setAttribute("style", "indexAD");
		return "quanLyThongKe";
	}
}

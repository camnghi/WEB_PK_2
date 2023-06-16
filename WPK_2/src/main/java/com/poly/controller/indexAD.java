package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.ServletRequest;

@Controller
@RequestMapping ("indexAD")

public class indexAD {
	@Autowired
	ServletRequest request;
		@GetMapping("form")
		public String form() {
			request.setAttribute("navAD", "layout/admin/navAD.jsp");
			return "indexAD";
		}
	}


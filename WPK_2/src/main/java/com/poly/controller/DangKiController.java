package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping ("index")
public class DangKiController {
	@GetMapping("DangKi")
	public String form() {

		return "DangKi";
	}
}


package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("/phanLoaiSP")
public class phanLoaiSP {

	@GetMapping("form")
	public String form() {
		return "phanLoaiSP";
	}
}

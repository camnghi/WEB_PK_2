package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("index")
public class MainController {

	@GetMapping("form")
	public String form() {
		
		return "index_MAIN";
	}
}

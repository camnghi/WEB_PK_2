package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping ("capnhatTK")
public class capNhatTK_Controller {

	@GetMapping("form")
	public String form() {
		
		return "capnhatTK";
	}
}

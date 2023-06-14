package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.Loaisanpham;
import com.poly.repository.LoaisanphamDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("giohang")
public class GioHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	LoaisanphamDAO dao;
	@GetMapping("form")
	public String form(Model model) {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		List<Loaisanpham> items = dao.findAll();
	    model.addAttribute("items", items);
		request.setAttribute("title", "Giỏ hàng");
		request.setAttribute("view", "giohang");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}

//	@RequestMapping("edit/{ID_GH}")
//	public String edit(Model model, @PathVariable("ID_GH") Integer ID_GH) {
//		GioHang item = dao.findById(ID_GH).get();
//		model.addAttribute("item", item);
//		List<GioHang> items = dao.findAll();
//		model.addAttribute("items", items);
//		return "giohang/index";
//	}
//
//	@RequestMapping("create")
//	public String create(GioHang item) {
//		dao.save(item);
//		return "redirect:/layout/use/giohang";
//	}
//
//	@RequestMapping("update")
//	public String update(GioHang item) {
//		dao.save(item);
//		return "redirect:/layout/use/giohang/" + item.getKhachhang();
//	}
//
//	@RequestMapping("delete/{ID_GH}")
//	public String delete(@PathVariable("id") Integer ID_GH) {
//		dao.deleteById(ID_GH);
//		return "redirect:/layout/use/giohang";
//	}

}

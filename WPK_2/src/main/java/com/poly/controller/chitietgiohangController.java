package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.Loaisanpham;
import com.poly.repository.ChitietgiohangDAO;
import com.poly.repository.GiohangDAO;
import com.poly.repository.KhachhangDAO;
import com.poly.repository.LoaisanphamDAO;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("giohangchitiet")
public class chitietgiohangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	LoaisanphamDAO dao;
	@Autowired
	GiohangDAO ghdao;
	@Autowired
	KhachhangDAO khachhangdao;
	@Autowired
	ChitietgiohangDAO ghctdao;
	@Autowired
	SessionService session;

	@GetMapping("form")
	public String form(Model model, HttpSession session) {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		List<Loaisanpham> items = dao.findAll();
		model.addAttribute("items", items);
//
//		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
//		String taiKhoan = khachHang.getTaiKhoan();
//		System.out.println(taiKhoan);
////		List<GioHang> gh = ghdao.findByKhachHang(taiKhoan);
////		model.addAttribute("gh", gh);
//		request.setAttribute("title", "Giỏ hàng");
//		request.setAttribute("view", "giohang");
//		response.setCharacterEncoding("UTF-8");
//		GioHang gh = new GioHang();
//		model.addAttribute("gh", gh);
//		List<GioHang> ghs = ghdao.findAll();
//		model.addAttribute("ghs", ghs);
//		Chitietgiohang ctgh = new Chitietgiohang();
//		model.addAttribute("ctgh", ctgh);
//
//		List<Chitietgiohang> ctghs = ghctdao.findAll();
//		model.addAttribute("ctghs", ctghs);
//		request.setAttribute("giohang", "layout/user/giohang.jsp");

		return "index_Main";
	}
}

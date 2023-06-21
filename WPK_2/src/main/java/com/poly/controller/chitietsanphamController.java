package com.poly.controller;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.SanPham;
import com.poly.repository.GiohangDAO;
import com.poly.repository.SanphamDAO;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("chitiet")
public class chitietsanphamController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	SanphamDAO sanphamdao;
	@Autowired
	GiohangDAO ghdao;
	@Autowired
	SessionService session;

	@RequestMapping("chitietsanpham")
	public String form(Model model) {
		request.setAttribute("title", "Chi tiết sản phẩm");
		request.setAttribute("view", "chitietsanpham");
		response.setCharacterEncoding("UTF-8");
		SanPham item = new SanPham();
		model.addAttribute("item", item);
		List<SanPham> items = sanphamdao.findAll();
		model.addAttribute("items", items);
		DecimalFormat df = new DecimalFormat("#,###");
	    model.addAttribute("df", df);
		return "chitietsanpham";
	}
	
	@RequestMapping("add")
	public String addToCart(Model model, @RequestPart("idSp") Integer idSp, HttpSession session,
			@RequestParam("photo_file") MultipartFile img) {
		SanPham sanpham = sanphamdao.findById(idSp).get();
		model.addAttribute("sanpham", sanpham);
		List<SanPham> sanphams = sanphamdao.findAll();
		model.addAttribute("sanphams", sanphams);
		return "giohang/form";
	}

}
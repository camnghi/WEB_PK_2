package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.GioHang;
import com.poly.entities.Loaisanpham;
import com.poly.repository.GiohangDAO;
import com.poly.repository.LoaisanphamDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// lấy id giỏ hàng từ tk đang đăng nhập
// lấy id sản phẩm mà người dùng click thêm vào giỏ hàng
// lưu chi tiết giỏ hàng
@Controller
@RequestMapping("giohang")
public class GioHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	LoaisanphamDAO dao;
	@Autowired
	HttpSession session;
	@Autowired
	GiohangDAO giohangdao;
	@GetMapping("form")
	public String form(Model model, HttpSession session, GioHang ghang) {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		List<Loaisanpham> items = dao.findAll();
		model.addAttribute("items", items);
		request.setAttribute("title", "Giỏ hàng");
		request.setAttribute("view", "giohang");
		response.setCharacterEncoding("UTF-8");
//		List<GioHang> ghs = ghdao.findAll();
//		model.addAttribute("ghs", ghs);
//		List<Chitietgiohang> ctgh = ghctdao.findAll();
//		model.addAttribute("ctgh", ctgh);
//		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
//		String taiKhoan = khachHang.getTaiKhoan();
//		System.out.println(taiKhoan);
//		List<GioHang> gh = ghdao.findByKhachHang(taiKhoan);
//		model.addAttribute("gh", gh)
//		GioHang lgh = ghdao.findById(khachHang.getTaiKhoan()).get();
//		GioHang gh = new GioHang();
//		model.addAttribute("gh", gh);
//		List<GioHang> ghs = ghdao.findAll();
//		model.addAttribute("ghs", ghs);
//		Chitietgiohang ctgh = new Chitietgiohang();
//		model.addAttribute("ctgh", ctgh);
//		List<Chitietgiohang> ctghs = ghctdao.findAll();
//		model.addAttribute("ctghs", ctghs);
		return "index_Main";
	}
	@RequestMapping("edit/{idGh}")
	public String edit(Model model,@PathVariable("idGh") Integer idGh) {
		GioHang giohang = giohangdao.findById(idGh).get();
		model.addAttribute("giohang", giohang);
		request.setAttribute("view", "giohang");

		return "index_Main";
	}

	@RequestMapping("giohang/{taiKhoan}")
	public String giohang(Model model) {
		String taikhoan = (String) session.getAttribute("taikhoan");
		List<GioHang> giohangOptional = giohangdao.findBytaiKhoan(taikhoan);
		GioHang giohang;
		if(giohangOptional.isEmpty()) {
			giohang= (GioHang) giohangOptional;
		}else {
			giohang = new GioHang();
			giohang.setKhachhang(null);
			giohang.setSoLuong(0);
		}
		return "chitietsanpham";
			}
//	@GetMapping("getgiohang")
//	public String getGioHang(Model model) {
//	    HttpSession session = request.getSession();
//	    KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
//	    //
//	    if (khachHang != null) {
//	        List<GioHang> gioHangs = giohangDao.findByKhachhang(khachHang);
//	        model.addAttribute("gioHangs", gioHangs);
//	    }
//	    return "giohang/form";
//	}


}

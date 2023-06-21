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
	HttpSession session;

	@GetMapping("form")
	public String form(Model model, HttpSession session) {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		List<Loaisanpham> items = dao.findAll();
		model.addAttribute("items", items);
//
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		String taiKhoan = khachHang.getTaiKhoan();
		System.out.println(taiKhoan);
//		List<GioHang> gh = ghdao.findByKhachHang(taiKhoan);
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

//	@RequestMapping("giohang/{taiKhoan}")
//	public String giohang() {
//		// Lấy thông tin giỏ hàng của người dùng
//		String tai_khoan = (String) session.getAttribute("tai_khoan");
//		Optional<Giohang> giohangOptional = giohangRepository.findByTaiKhoan(tai_khoan);
//		Giohang giohang;
//		if (giohangOptional.isPresent()) {
//			giohang = giohangOptional.get();
//		} else {
//			giohang = new Giohang();
//			giohang.setTai_khoan(tai_khoan);
//			giohang.setSo_luong(0);
//			giohang = giohangRepository.save(giohang);
//		}
//
//		// Kiểm tra xem sản phẩm đã có trong giỏ hàng hay chưa
//		Optional<Chitietgiohang> chitietgiohangOptional = chitietgiohangRepository.findByGiohangAndSanpham(giohang,
//				sanphamOptional.get());
//		Chitietgiohang chitietgiohang;
//		if (chitietgiohangOptional.isPresent()) {
//			chitietgiohang = chitietgiohangOptional.get();
//			chitietgiohang.setSo_luong(chitietgiohang.getSo_luong() + so_luong);
//		} else {
//			chitietgiohang = new Chitietgiohang();
//			chitietgiohang.setGiohang(giohang);
//			chitietgiohang.setSanpham(sanphamOptional.get());
//			chitietgiohang.setSo_luong(so_luong);
//		}
//
//		// Lưu thông tin giỏ hàng và chi tiết giỏ hàng
//		chitietgiohangRepository.save(chitietgiohang);
//		giohang.setSo_luong(giohang.getSo_luong() + so_luong);
//		giohangRepository.save(giohang);
//
//		return ResponseEntity.ok("Thêm sản phẩm vào giỏ hàng thành công");
//	}
}

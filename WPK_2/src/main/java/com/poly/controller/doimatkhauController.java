package com.poly.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.KhachHang;
import com.poly.entities.Loaisanpham;
import com.poly.repository.KhachhangDAO;
import com.poly.repository.LoaisanphamDAO;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping ("index")
public class doimatkhauController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	KhachhangDAO KHdao;
	@Autowired
	LoaisanphamDAO dao;
	@Autowired
	ServletContext app;
	@Autowired
	HttpSession session;
	
	@GetMapping("doimatkhau")
	public String form(Model model) throws UnsupportedEncodingException {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		request.setAttribute("title", "Đổi mật khẩu");
		request.setAttribute("view", "DoiMatKhau");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		return "index_Main";
	}
	
	@PostMapping("/doimatkhau")
	
	public String DoiMK(Model model, HttpSession session,
			@RequestParam("matKhau") String matKhau,
		    @RequestParam("matKhauMoi") String matKhauMoi,
		    @RequestParam("XNmatKhauMoi") String XNmatKhauMoi) {
		request.setAttribute("view", "DoiMatKhau");
		// lấy tài khoản của khách hàng đang đăng nhập từ session
		KhachHang khachHangHienTai = (KhachHang) session.getAttribute("khachhang");
		String taiKhoan = khachHangHienTai.getTaiKhoan();
		
		// kiểm tra mật khẩu cũ và xác nhận mật khẩu mới có trùng nhau hay không
	    if (!khachHangHienTai.getMatKhau().equals(matKhau)) {
	        model.addAttribute("message", "Mật khẩu cũ không đúng");
	        System.out.println("Mat khau cu khong dung");

	        return "redirect:/index/doimatkhau";
	    }
	    if (!matKhauMoi.equals(XNmatKhauMoi)) {
	        model.addAttribute("message", "Xác nhận mật khẩu không khớp");
	        System.out.println("Mat khau xác nhận khong dung");

	        return "redirect:/index/doimatkhau";
	    }
	  //cập nhật mật khẩu mới cho khách hàng
	    khachHangHienTai.setMatKhau(matKhauMoi);
	    System.out.println("dang nhap thanh cong");
	    KHdao.save(khachHangHienTai);
		return "index_Main";
	}
}

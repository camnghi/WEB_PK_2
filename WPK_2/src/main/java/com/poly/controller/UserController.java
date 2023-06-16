package com.poly.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.entities.GioHang;
import com.poly.entities.KhachHang;
import com.poly.entities.Loaisanpham;
import com.poly.repository.GiohangDAO;
import com.poly.repository.KhachhangDAO;
import com.poly.repository.LoaisanphamDAO;
import com.poly.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("index")
public class UserController {
	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpServletResponse response;

	@Autowired
	private UserService userService;
	@Autowired
	LoaisanphamDAO dao;

//	
	@Autowired
	GiohangDAO giohangdao;

	@Autowired
	HttpSession session;

// Cập nhật
	@GetMapping("/CapNhat")
	public String formUpdate(Model model) throws UnsupportedEncodingException {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		request.setAttribute("title", "Cập nhật");
		request.setAttribute("view", "capnhatTK");
		KhachHang khachHangHienTai = (KhachHang) session.getAttribute("khachhang");
		model.addAttribute("taiKhoan", khachHangHienTai.getTaiKhoan());
	    model.addAttribute("hoTen", khachHangHienTai.getHoTen());
	    model.addAttribute("email", khachHangHienTai.getEmail());	
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");				
		return "index_Main";
	}

	@PostMapping("/Update")
	public String update( Model mode,
			RedirectAttributes redirectAttributes,
			@RequestParam("taiKhoan") String taiKhoan,
			@RequestParam("hoTen") String hoTen,
			@RequestParam("email") String email) {
		KhachHang khachHangHienTai = (KhachHang) session.getAttribute("khachhang");
//Cập nhật thông tin		
		khachHangHienTai.setHoTen(hoTen);
		khachHangHienTai.setEmail(email);
	    redirectAttributes.addFlashAttribute("message", "Cập nhật thành công !");
		userService.update(khachHangHienTai);
		return "redirect:/index/CapNhat";
	}

// Đăng nhập 
	@GetMapping("/DangNhap") // Gọi đến trang đăng nhập
	public String form(Model model) throws UnsupportedEncodingException {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		request.setAttribute("title", "Đăng nhập");
		request.setAttribute("view", "DangNhap");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

//		
		GioHang gh = new GioHang();
		model.addAttribute("gh", gh);

		List<GioHang> ghs = giohangdao.findAll();
		model.addAttribute("ghs", ghs);

		return "index_Main";
	}

	@PostMapping("/DangNhap") // Xử lý click button Đăng nhập
	public String login(@RequestParam String taiKhoan, @RequestParam String matKhau,
			RedirectAttributes redirectAttributes) {
		try {
			userService.login(taiKhoan, matKhau);
			return "redirect:/index/form";// Nếu đúng user,pass quay về trang chủ
		} catch (Exception e) {
			redirectAttributes.addAttribute("error", "true");
			return "redirect:/index/DangNhap";// Nếu sai ở lại trang đăng nhập
		}
	}

//Đăng Xuất   
	@GetMapping("/DangXuat") // Đăng xuất tài khoản
	public String logout() {
		userService.logout();
		return "redirect:/index/form";
	}

//Đăng kí    
	@GetMapping("DangKi") // Gọi form đăng kí
	public String register(Model model) {
		List<Loaisanpham> loaisanphams = dao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);
		request.setAttribute("title", "Đăng ký");
		request.setAttribute("view", "DangKi");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}

	@PostMapping("/DangKi") // Ấn button đăng kí
	public String register(@ModelAttribute("khachhang") KhachHang khachhang, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "/index/DangKi";
		}
		userService.register(khachhang);
		return "redirect:/index/XacNhan";// Qua trang xác nhận pass
	}

	// Mã xác nhận
	@GetMapping("/XacNhan") // Qua trang xác nhận
	public String verify(Model model) {
		model.addAttribute("code", "");
		request.setAttribute("title", "Xác Nhận");
		request.setAttribute("view", "nhapmaXN");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}

	@PostMapping("/XacNhan") // Xử lý button đăng nhập
	public String verify(@RequestParam("code") String code, Model model) {
		try {
			userService.verify(code);
			return "redirect:/index/XacNhanOk";
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
			return "redirect:/index/XacNhan";
		}
	}

	// Xác nhận thành công
	@GetMapping("/XacNhanOk") // Qua trang xác nhận
	public String XacNhanOk() {
		request.setAttribute("title", "Xác Nhận Thành Công");
		request.setAttribute("view", "XacNhanOk");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}

	// Quên mật khẩu
	@GetMapping("/QuenMatKhau") // Gọi đến trang đăng nhập
	public String QuenMatKhau() throws UnsupportedEncodingException {
		request.setAttribute("title", "Quên Mật Khẩu");
		request.setAttribute("view", "QuenMatKhau");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
	}

	@PostMapping("/QuenMatKhau")
	public String resetPassword(@RequestParam("email") String email, Model model) {
		try {
			userService.resetPassword(email);
			model.addAttribute("message", "Mật khẩu mới đã được gửi đến địa chỉ email của bạn.");
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
		}
		return "index_Main";
	}

}

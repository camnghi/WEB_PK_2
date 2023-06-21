package com.poly.controller;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.HoaDon;
import com.poly.entities.KhachHang;
import com.poly.repository.HoadonDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("lichsu")
public class lichsuController {
	@Autowired
	private HoadonDAO hoaDonRepository;
	@Autowired
	HttpServletRequest request;

	@GetMapping("/form")
	public String getAll(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoan(khachHang.getTaiKhoan());
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

	@GetMapping("/cxn")
	public String getTTCXN(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoanAndTrangThai(khachHang.getTaiKhoan(), "Chờ xác nhận");
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

	@GetMapping("/dxn")
	public String getTTDXN(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoanAndTrangThai(khachHang.getTaiKhoan(), "Đã xác nhận");
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

	@GetMapping("/cvc")
	public String getTTCVC(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoanAndTrangThai(khachHang.getTaiKhoan(), "Chờ vận chuyển");
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

	@GetMapping("/dvc")
	public String getTTDVC(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoanAndTrangThai(khachHang.getTaiKhoan(), "Đang vận chuyển");
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

	@GetMapping("/dgh")
	public String getTTDGH(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoanAndTrangThai(khachHang.getTaiKhoan(), "Đã giao hàng");
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

	@GetMapping("/bh")
	public String getTTBH(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		List<HoaDon> hoadons = hoaDonRepository.findByTaiKhoanAndTrangThai(khachHang.getTaiKhoan(), "Bị hủy");
		DecimalFormat df = new DecimalFormat("#,###");
		model.addAttribute("df", df);
		model.addAttribute("hoadons", hoadons);
		model.addAttribute("view", "lichsu");
		return "index_Main";
	}

}

package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.poly.entities.Chitietgiohang;
import com.poly.entities.GioHang;
import com.poly.entities.KhachHang;
import com.poly.entities.Loaisanpham;
import com.poly.entities.SanPham;
import com.poly.repository.ChitietgiohangDAO;
import com.poly.repository.GiohangDAO;
import com.poly.repository.LoaisanphamDAO;
import com.poly.repository.SanphamDAO;

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
	GiohangDAO giohangDao;
	@Autowired
	SanphamDAO sanPhamDao;
	@Autowired
	ChitietgiohangDAO ctghdao;

	@RequestMapping("form")
	public String form(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		if (khachHang == null) {
			// Nếu không tìm thấy thông tin khách hàng trong session, chuyển hướng đến trang
			// đăng nhập hoặc đăng ký
			return "redirect:/index/DangNhap";
		}
		// Lấy giỏ hàng của khách hàng từ cơ sở dữ liệu
		GioHang gioHang = giohangDao.findByKhachhang(khachHang);
		if (gioHang == null) {
			// Nếu không tìm thấy giỏ hàng của khách hàng, tạo mới một giỏ hàng
			gioHang = new GioHang();
			gioHang.setKhachhang(khachHang);
			giohangDao.save(gioHang);
		}
		List<Loaisanpham> loaisanphams = dao.findAll();
		List<Loaisanpham> items = dao.findAll();
		SanPham sp = new SanPham();
		model.addAttribute("loaisanphams", loaisanphams);
		model.addAttribute("items", items);
		model.addAttribute("title", "Giỏ hàng");
		model.addAttribute("view", "giohang");
		model.addAttribute("sp", sp);
		model.addAttribute("giohang", gioHang);
		model.addAttribute("chiTietGioHang", new Chitietgiohang());
		return "index_Main";
	}

	@RequestMapping("themvaogiohang/{idSp}")
	public String themVaoGioHang(Model model, @PathVariable("idSp") int idSp) {
		// Lấy thông tin khách hàng từ session
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		if (khachHang == null) {
			// Nếu không tìm thấy thông tin khách hàng trong session, chuyển hướng đến trang
			// đăng nhập hoặc đăng ký
			return "redirect:/index/DangNhap";
		}
		// Lấy giỏ hàng của khách hàng từ cơ sở dữ liệu
		GioHang gioHang = giohangDao.findByKhachhang(khachHang);
		if (gioHang == null) {
			// Nếu không tìm thấy giỏ hàng của khách hàng, tạo mới một giỏ hàng
			gioHang = new GioHang();
			gioHang.setKhachhang(khachHang);
			giohangDao.save(gioHang);
		}
		
		// Lấy danh sách chi tiết giỏ hàng của giỏ hàng
		List<Chitietgiohang> chiTietGioHangs = ctghdao.findByGiohang(gioHang);

		// Tính tổng số lượng sản phẩm của các chi tiết giỏ hàng
		int tongSoLuong = 1;
		for (Chitietgiohang chiTietGioHang : chiTietGioHangs) {
		    tongSoLuong += chiTietGioHang.getSoLuong();
		}

		
		// Lấy thông tin sản phẩm từ cơ sở dữ liệu
		SanPham sanPham = sanPhamDao.findById(idSp).orElse(null);
		Chitietgiohang chiTietGioHang = ctghdao.findByGiohangAndSanpham(gioHang, sanPham);
		if (chiTietGioHang == null) {
			// Nếu không tìm thấy chi tiết giỏ hàng, tạo mới một chi tiết giỏ hàng
			chiTietGioHang = new Chitietgiohang();
			chiTietGioHang.setGiohang(gioHang);
			chiTietGioHang.setSanpham(sanPham);
			chiTietGioHang.setSoLuong(1);
			gioHang.getChitietgiohangs().add(chiTietGioHang);
		} else {
			// Nếu đã tìm thấy chi tiết giỏ hàng, tăng số lượng sản phẩm lên 1
			chiTietGioHang.setSoLuong(chiTietGioHang.getSoLuong() + 1);
		}
		gioHang.setSoLuong(tongSoLuong);
		giohangDao.save(gioHang);
		ctghdao.save(chiTietGioHang);
		return "redirect:/giohang/form";
	}

	@RequestMapping(value = { "xoasanpham/{id_ctgh}" }, method = RequestMethod.DELETE)
	public String xoaSanPham(@PathVariable("id_ctgh") int id_ctgh) {
		Chitietgiohang idctgh = ctghdao.findById(id_ctgh).orElse(null);
		if (idctgh == null) {
			// Nếu không tìm thấy chi tiết giỏ hàng, chuyển hướng về trang giỏ hàng
			return "redirect:/giohang/form";
		}
		ctghdao.delete(idctgh);
		GioHang gioHang = idctgh.getGiohang();
		gioHang.getChitietgiohangs().remove(idctgh);
		giohangDao.save(gioHang);
		return "redirect:/giohang/form";
	}
}
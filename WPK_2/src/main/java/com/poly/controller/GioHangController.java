package com.poly.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.Chitietgiohang;
import com.poly.entities.GioHang;
import com.poly.entities.KhachHang;
import com.poly.entities.Loaisanpham;
import com.poly.entities.SanPham;
import com.poly.repository.ChitietgiohangDAO;
import com.poly.repository.GiohangDAO;
import com.poly.repository.HoadonDAO;
import com.poly.repository.KhachhangDAO;
import com.poly.repository.LoaisanphamDAO;
import com.poly.repository.SanphamDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
	@Autowired
	KhachhangDAO khachHangDao;
	@Autowired
	HoadonDAO hoaDonDao;

	@RequestMapping("form")
	public String form(Model model, HttpSession session) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		if (khachHang == null) {
			// Nếu không tìm thấy thông tin khách hàng trong session, chuyển hướng đến trang
			// đăng nhập
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
		// Kiểm tra danh sách chi tiết giỏ hàng nếu chưa có thì tạo
	    if (gioHang.getChitietgiohangs() == null) {
	        gioHang.setChitietgiohangs(new ArrayList<>());
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
		DecimalFormat df = new DecimalFormat("#,###");
	    model.addAttribute("df", df);
		return "index_Main";
	}

	@RequestMapping("themvaogiohang/{idSp}")
	public String themVaoGioHang(Model model, @PathVariable("idSp") int idSp) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
		GioHang gioHang = giohangDao.findByKhachhang(khachHang);
		List<Chitietgiohang> chiTietGioHangs = ctghdao.findByGiohang(gioHang);
		
		// Lấy thông tin khách hàng từ session
		
		if (khachHang == null) {
			// Nếu không tìm thấy thông tin khách hàng trong session, chuyển hướng đến trang
			// đăng nhập hoặc đăng ký
			return "redirect:/index/DangNhap";
		}
		
			if (gioHang == null) {
			// Nếu không tìm thấy giỏ hàng của khách hàng, tạo mới một giỏ hàng
			gioHang = new GioHang();
			gioHang.setKhachhang(khachHang);
			giohangDao.save(gioHang);
		}
			gioHang.setSoLuong(gioHang.tongSoSanPham());
		// Kiểm tra danh sách chi tiết giỏ hàng
	    if (gioHang.getChitietgiohangs() == null) {
	        gioHang.setChitietgiohangs(new ArrayList<>());
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
		
		double tongTien = gioHang.tongTien();
//		System.out.println(gioHang.getSoLuong());
		session.setAttribute("giohang", gioHang);
		session.setAttribute("tongTien", tongTien);
		giohangDao.save(gioHang);
		ctghdao.save(chiTietGioHang);	
		return "redirect:/giohang/form";
	}
	
	//Xóa sản phẩm trong giỏ hàng
	@RequestMapping(value = { "xoasanpham/{id_ctgh}" }, method = RequestMethod.POST)
	public String xoaSanPham(@PathVariable("id_ctgh") int id_ctgh) {
		Chitietgiohang idctgh = ctghdao.findById(id_ctgh).orElse(null);
		ctghdao.delete(idctgh);
		GioHang gioHang = idctgh.getGiohang();
		gioHang.getChitietgiohangs().remove(idctgh);
		double tongTien = gioHang.tongTien();
		session.setAttribute("giohang", gioHang);
		session.setAttribute("tongTien", tongTien);
		gioHang.setSoLuong(gioHang.tongSoSanPham());
		giohangDao.save(gioHang);
//		gioHang.setTongSoSanPham(gioHang.tongSoSanPham());
		return "redirect:/giohang/form";
	}
	
	// cập nhật số lượng và tổng tiền
	@RequestMapping(value = { "capnhat/{id_ctgh}" }, method = RequestMethod.POST)
	public String capNhatSoLuong(@PathVariable("id_ctgh") int id_ctgh, @RequestParam("soLuong") int soLuong) {
	    Chitietgiohang chiTietGioHang = ctghdao.findById(id_ctgh).orElse(null);
	    if (chiTietGioHang != null) {
	        chiTietGioHang.setSoLuong(soLuong);
	        ctghdao.save(chiTietGioHang);
	        GioHang gioHang = chiTietGioHang.getGiohang();
	        double tongTien = gioHang.tongTien();
	        session.setAttribute("giohang", gioHang);
	        session.setAttribute("tongTien", tongTien);
	        gioHang.setSoLuong(gioHang.tongSoSanPham());
	        giohangDao.save(gioHang);
	    }
	    return "redirect:/giohang/form";
	}
	
	@RequestMapping("datHang")
	public String datHang(Model model) {
	    KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
	    GioHang gioHang = giohangDao.findByKhachhang(khachHang);
	    KhachHang khachHangHienTai = (KhachHang) session.getAttribute("khachhang");
	    model.addAttribute("hoTen", khachHangHienTai.getHoTen());
	    model.addAttribute("email", khachHangHienTai.getEmail());
	    double tongTien = gioHang.tongTien();
	    model.addAttribute("giohang", gioHang);
	    model.addAttribute("tongTien", tongTien);
//	    request.setAttribute("dathang", "layout/user/dathang.jsp");
	    model.addAttribute("view", "dathang");
	    DecimalFormat df = new DecimalFormat("#,###");
	    model.addAttribute("df", df);
	    return "index_Main";
	}
	@RequestMapping("thanhToan")
	public String thanhToan(Model model) {
		
		
		model.addAttribute("title", "Đặt hàng");
		model.addAttribute("view", "dathang");
		return "index_Main";
	}
}
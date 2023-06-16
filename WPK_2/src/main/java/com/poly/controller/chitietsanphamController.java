package com.poly.controller;

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
		return "chitietsanpham";
	}

//	@RequestMapping("/add")
//	public String addToCart(Model model, Integer idSp, HttpSession session) {
//		KhachHang khachHang = (KhachHang) session.getAttribute("khachhang");
//		String taiKhoan = khachHang.getTaiKhoan();
//		System.out.println(taiKhoan); // Đã lấy được tài khoản khách hàng đang đăng nhập
//		if (taiKhoan == null) {
//			return "redirect:/index/DangNhap";
//		}
//		// String cartId = khachHang.getGiohang().get();
////		// lấy idgh của khách hàng
//		List<GioHang> gioHang = ghdao.findByKhachHang(taiKhoan);
////		if (gioHang != null) {
////			int idGioHang = gioHang.getIdGioHang();
////			GioHang newGioHang = new GioHang();
////			newGioHang.setIdGioHang(idGioHang);
////			ghdao.save(newGioHang);
////		}
//		return "redirect:/chitiet/chitietsanpham";
//	}

//	@RequestMapping("add")
//	public String addToCart(@RequestPart("idSp") Integer idSp, HttpSession session) {
//		SanPham sanpham = sanphamdao.findById(idSp).orElse(null);
//		if (sanpham != null) {
//			GioHang giohang = (GioHang) session.getAttribute("GioHang");
//			if (giohang == null) {
//				giohang = new GioHang();
//				session.setAttribute("GioHang", giohang);
//			}
//			Chitietgiohang chitietgiohang = giohang.getChitietgiohangByidSp(idSp);
//			if (chitietgiohang == null) {
//				chitietgiohang = new Chitietgiohang();
//				chitietgiohang.setSanpham(sanpham);
//				chitietgiohang.setSoLuong(1);
//				giohang.getChitietgiohangs().add(chitietgiohang);
//			} else {
//				chitietgiohang.setSoLuong(chitietgiohang.getSoLuong() + 1);
//			}
//
//		}
//		return "giohang/form";
//	}

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

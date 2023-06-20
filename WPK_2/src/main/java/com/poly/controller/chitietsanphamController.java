package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam; 

import com.poly.entities.Chitietgiohang;
import com.poly.entities.GioHang;
import com.poly.entities.KhachHang;
import com.poly.entities.SanPham;
import com.poly.repository.ChitietgiohangDAO;
import com.poly.repository.GiohangDAO;
import com.poly.repository.KhachhangDAO;
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
	GiohangDAO giohangdao;
	@Autowired
	SessionService session;

	@Autowired
	ChitietgiohangDAO chitietgiohangdao;
	
	@Autowired
	KhachhangDAO khachhangdao;
	
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




	@RequestMapping("edit/{idSp}")
	public String addToCart(Model model, @PathVariable("idSp") Integer idSp, HttpSession session, @RequestParam("soluong") Integer soluong) {
		SanPham sanpham = sanphamdao.findByIdSp(idSp);
		String taikhoan = (String) session.getAttribute("taikhoan");
		KhachHang khachhang =  khachhangdao.findByTaiKhoan(taikhoan);
		
		Chitietgiohang addctgh = new Chitietgiohang();
		GioHang giohang = khachhang.getGiohang().get(0);
		addctgh.setGiohang(giohang);
		addctgh.setSanpham(sanpham);
		addctgh.setSoLuong(soluong);
		chitietgiohangdao.save(addctgh);
//		Optional<Chitietgiohang> ctghs = chitietgiohangdao.findById(giohang.getIdGh());
		chitietgiohangdao.save(addctgh);

		request.setAttribute("giohang", "layout/user/giohang.jsp");
		return "giohang";
	}
}

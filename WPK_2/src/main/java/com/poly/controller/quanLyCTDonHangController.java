package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.HoaDon;
import com.poly.entities.Hoadonchitiet;
import com.poly.repository.HoadonDAO;
import com.poly.repository.HoadonchitietDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("quanLyCTDonhang")
public class quanLyCTDonHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	HoadonDAO hoadondao;
	@Autowired
	HoadonchitietDAO hoadonchitietdao;

	@RequestMapping("form")
	public String form(Model model) {

		request.setAttribute("title", "Trang chủ");
		request.setAttribute("view", "items");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HoaDon hoadon = new HoaDon();
		model.addAttribute("hoadon", hoadon);
		List<HoaDon> hoadons = hoadondao.findAll();
		model.addAttribute("hoadons", hoadons);
		Hoadonchitiet hdct = new Hoadonchitiet();
		model.addAttribute("hdct", hdct);
		List<Hoadonchitiet> hdcts = hoadonchitietdao.findAll();
		model.addAttribute("hdcts", hdcts);

		request.setAttribute("form_QLCTDonHang", "layout/admin/form_QLCTDonHang.jsp");
		return "quanLyChiTietDonhang";
	}

	@RequestMapping("editHD/{idHd}")
	public String editHD(Model model, @PathVariable("idHd") Integer idHd) {
		HoaDon hoadon = hoadondao.findById(idHd).get();
		model.addAttribute("hoadon", hoadon);
		List<HoaDon> hoadons = hoadondao.findAll();
		model.addAttribute("hoadons", hoadons);
		List<Hoadonchitiet> hdcts = hoadonchitietdao.findAllByIdHd(idHd);
		model.addAttribute("hdcts", hdcts);
		System.out.println(hdcts);
		System.out.println(hoadon.getNgayTao());
		request.setAttribute("form_QLCTDonHang", "layout/admin/form_QLCTDonHang.jsp");
		return "quanLyChiTietDonhang";
	}
}

package com.poly.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.HoaDon;
import com.poly.repository.HoadonDAO;
import com.poly.repository.HoadonchitietDAO;
import com.poly.repository.KhachhangDAO;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/quanLyDonHang")
public class quanLyDonHangController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;

	@Autowired
	HoadonDAO hoadondao;
	@Autowired
	KhachhangDAO khachhangdao;
	@Autowired
	HoadonchitietDAO hoadonchitietdao;
	@Autowired
	SessionService session;



	@RequestMapping("form")
	public String form(Model model, HoaDon hoadon, @RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page) {
		int pageSize = 4;
		String kwords = keywords != null ? keywords : session.get("keywords");

		Pageable pageable;
		if (field != null) {
			Sort sort = Sort.by(Direction.ASC, field);
			model.addAttribute("field", field.toUpperCase());
			pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
		} else {
			pageable = PageRequest.of(page != null ? page : 0, pageSize);
		}

		Page<HoaDon> resultPage;
		if (kwords != null && !kwords.equals("")) {
			resultPage = hoadondao.findAllBytaiKhoanLike("%" + kwords + "%", pageable);
			System.out.println(resultPage);
		} else {
			resultPage = hoadondao.findAll(pageable);
		}
		model.addAttribute("page", resultPage);
		DecimalFormat df = new DecimalFormat("#,###");
	    model.addAttribute("df", df);
		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
		return "quanLyDonHang";
	}

//	chuyển sang trang cập nhật trạng thái controller
	@RequestMapping("edit/{idHd}")
	public String edit(Model model ,@PathVariable("idHd") Integer  idHd) {
		HoaDon hoadon = hoadondao.findById(idHd).get();
		model.addAttribute("hoadon", hoadon);
		List<HoaDon> hoadons = hoadondao.findAll();
		model.addAttribute("hoadons", hoadons);
		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
		return "capNhatTrangThai";
	}
}

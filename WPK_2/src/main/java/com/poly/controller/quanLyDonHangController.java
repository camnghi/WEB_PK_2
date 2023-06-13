package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.HoaDon;
import com.poly.entities.Hoadonchitiet;
import com.poly.entities.KhachHang;
import com.poly.entities.SanPham;
import com.poly.repository.HoadonDAO;
import com.poly.repository.HoadonchitietDAO;
import com.poly.repository.KhachhangDAO;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("/quanLyDonHang")
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

	@GetMapping("form")
	public String form(Model model,@RequestParam("keywords")Optional<String > kw,@RequestParam("p") Optional<Integer> p) {
		int pageSize = 2;
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Page<KhachHang> page; 
		if(kwords != null && kwords.equals("")) {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = khachhangdao.findAllBytaiKhoanLike("%"+ kwords + "%", pageable);
		}else {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = khachhangdao.findAll(pageable);
		}
		model.addAttribute("page",page);
		
		HoaDon hd = new HoaDon();
		model.addAttribute("item",hd);
		List<HoaDon> hds = hoadondao.findAll();
		model.addAttribute("items", hds);
		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
		return "quanLyDonHang";
	}
	@RequestMapping("edit/{idHd}")
	public String edit( Model model, @PathVariable("idHd") Integer idHd) {
		HoaDon hoadon = hoadondao.findById(idHd).get();
//		hoadon.setTrangThai(true);
		if(hoadon.getTrangThai() == false) {
			hoadon.setTrangThai(true);
			model.addAttribute("trangthai", hoadon.getTrangThai());
			
		}
		else {
			hoadon.setTrangThai(false);
			model.addAttribute("trangthai", hoadon.getTrangThai());

		}
		hoadondao.save(hoadon);
        hoadon.setTrangThai(hoadon.getTrangThai());
        model.addAttribute("hoadon", hoadon);
		return "redirect:/quanLyDonHang/form" ;


			
			
//		model.addAttribute("item", item);
//		List<Hoadonchitiet> items = hoadonchitietdao.findAll();
//		model.addAttribute("items", items);
//		request.setAttribute("view", "layout/user/chitietsanpham.jsp");
	}

	@RequestMapping("update")
	public String update(HoaDon item)
			throws IllegalStateException, IOException {
		hoadondao.save(item);
		return "redirect:/product/edit/" + item.getIdHd();
	}
	
	@ModelAttribute("list_yesno")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "No");
		map.put(true, "Yes");
		return map;
	}
	
//	@RequestMapping("search-and-page")
//	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
//			@RequestParam("p") Optional<Integer> p) {
//		String kwords = kw.orElse(session.get("keywords"));
//		session.set("keywords", kwords);
//		Pageable pageable = PageRequest.of(p.orElse(0), 5);
//		
//		Page<HoaDon> page = hoadondao.findAllByNameLike("%" + kwords + "%", pageable);
//
//		model.addAttribute("page", page);
//		return "quanLyDonHang";
//	}
}


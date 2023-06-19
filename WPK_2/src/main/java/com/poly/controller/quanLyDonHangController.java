package com.poly.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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

//	@RequestMapping("form")
//	public String form(Model model, @RequestParam("keywords")Optional<String > kw,@RequestParam("p") Optional<Integer> p) {
//		int pageSize = 2;
//		String kwords = kw.orElse(session.get("keywords"));
//		session.set("keywords", kwords);
//		Page<HoaDon> page; 
////		if(kwords != null && kwords.equals("")) {
////			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
////			page = hoadondao.findAllBytaiKhoanLike("%"+ kwords + "%", pageable);
////		}else {
////			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
////			page = hoadondao.findAll(pageable);
////		}
////		model.addAttribute("page",page);
//		
//		HoaDon hd = new HoaDon();
//	
//		Hoadonchitiet hdct = new Hoadonchitiet();
//		List<Hoadonchitiet> listHDCT = hoadonchitietdao.findAll();
//		model.addAttribute("item",hd);
//		List<HoaDon> hds = hoadondao.findAll();
//		model.addAttribute("items", hds);
//		
//		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
//		return "quanLyDonHang";
//	}

//	@RequestMapping("form")
//	public String form(Model model, HoaDon hoadon, @RequestParam(value = "keywords", required = false) String keywords,
//			@RequestParam(value = "field", required = false) String field,
//			@RequestParam(value = "p", required = false) Integer page) {
//		int pageSize = 4;
//		String kwords = keywords != null ? keywords : session.get("keywords");
//
//		Pageable pageable;
//		if (field != null) {
//			Sort sort = Sort.by(Direction.ASC, field);
//			model.addAttribute("field", field.toUpperCase());
//			pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
//		} else {
//			pageable = PageRequest.of(page != null ? page : 0, pageSize);
//		}
//
//		Page<HoaDon> resultPage;
//		if (kwords != null && !kwords.equals("")) {
//			resultPage = hoadondao.findAllBytaiKhoanLike("%" + kwords + "%", pageable);
//			System.out.println(resultPage);
//		} else {
//			resultPage = hoadondao.findAll(pageable);
//		}
//
//		model.addAttribute("page", resultPage);
//		request.setAttribute("form_QLDonHang", "layout/admin/form_QLDonHang.jsp");
//		return "quanLyDonHang";
//	}

//	@RequestMapping("edit/{idHd}")
//	public String edit(Model model, @PathVariable("idHd") Integer idHd) {
//		HoaDon hoadon = hoadondao.findById(idHd).get();
////		hoadon.setTrangThai(true);
//		if (hoadon.getTrangThai() == false) {
//			hoadon.setTrangThai(true);
//			model.addAttribute("trangthai", hoadon.getTrangThai());
////			 duyetButton.style.display = "none";
////			    huyButton.style.display = "inline-block";
//		} else {
//			hoadon.setTrangThai(false);
//			model.addAttribute("trangthai", hoadon.getTrangThai());
//
//		}
//		hoadondao.save(hoadon);
//		hoadon.setTrangThai(hoadon.getTrangThai());
//		model.addAttribute("hoadon", hoadon);
//		return "redirect:/quanLyDonHang/form";

//		model.addAttribute("item", item);
//		List<Hoadonchitiet> items = hoadonchitietdao.findAll();
//		model.addAttribute("items", items);
//		request.setAttribute("view", "layout/user/chitietsanpham.jsp");
//	}

	@RequestMapping("update")
	public String update(HoaDon item) throws IllegalStateException, IOException {
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

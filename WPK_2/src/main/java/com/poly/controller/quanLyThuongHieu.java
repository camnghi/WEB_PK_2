package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.Thuonghieu;
import com.poly.repository.ThuonghieuDAO;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/quanLyThuongHieu")
public class quanLyThuongHieu {
	@Autowired
	HttpServletRequest request;
	@Autowired
	ThuonghieuDAO thuonghieudao;
	@Autowired
	SessionService session;

	@RequestMapping("form")
	public String searchAndPage(Model model, Thuonghieu thuonghieu, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		int pageSize = 2;
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Page<Thuonghieu> page;
		if (kwords != null && !kwords.equals("")) {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = thuonghieudao.findAllByTenThLike("%" + kwords + "%", pageable);
		} else {
			Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
			page = thuonghieudao.findAll(pageable);
		}
		model.addAttribute("page", page);
		request.setAttribute("form_QLTHSanPham", "layout/admin/form_QLTHSanPham.jsp");
		return "quanLyThuongHieu";

	}

	@RequestMapping("create")
	public String create(Thuonghieu thuonghieu) {
		thuonghieudao.save(thuonghieu);
		return "redirect:/quanLyThuongHieu/form";
	}

	@RequestMapping("update")
	public String update(Thuonghieu thuonghieu) {
		thuonghieudao.save(thuonghieu);
		return "redirect:/quanLyThuongHieu/edit/" + thuonghieu.getIdTh();
	}

	@RequestMapping("delete/{idTh}")
	public String delete(@PathVariable("idTh") Integer idTh) {
		thuonghieudao.deleteById(idTh);
		return "redirect:/quanLyThuongHieu/form";
	}

	@RequestMapping("edit/{idTh}")
	public String edit(Model model, @PathVariable("idTh") Integer idTh, @RequestParam("p") Optional<Integer> p) {
		int pageSize = 2;
		Thuonghieu thuonghieu = thuonghieudao.findById(idTh).get();
		model.addAttribute("thuonghieu", thuonghieu);
		Page<Thuonghieu> page;
		Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
		page = thuonghieudao.findAll(pageable);
		model.addAttribute("page", page);
		request.setAttribute("form_QLTHSanPham", "layout/admin/form_QLTHSanPham.jsp");
		return "quanLyThuongHieu";
	}

}

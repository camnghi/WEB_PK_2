package com.poly.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.Loaisanpham;
import com.poly.repository.LoaisanphamDAO;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/phanLoaiSP")
public class quanLyPhanLoaiSP {
	@Autowired
	HttpServletRequest request;

	@Autowired
	LoaisanphamDAO loaisanphamdao;

	@Autowired
	SessionService session;

	@RequestMapping("form")
	public String form(Model model, Loaisanpham loaisanpham,
			@RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page) {
		int pageSize = 4;
		String kwords = keywords != null ? keywords : session.get("keywords");
		loaisanpham.setTenLoai("");
		Pageable pageable;
		if (field != null) {
			Sort sort = Sort.by(Direction.DESC, field);
			model.addAttribute("field", field.toUpperCase());
			pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
		} else {
			pageable = PageRequest.of(page != null ? page : 0, pageSize);
		}

		Page<Loaisanpham> resultPage;
		if (kwords != null && !kwords.equals("")) {
			resultPage = loaisanphamdao.findAllBytenLoaiLike("%" + kwords + "%", pageable);
		} else {
			resultPage = loaisanphamdao.findAll(pageable);
		}

		model.addAttribute("page", resultPage);
		request.setAttribute("form_PLSanPham", "layout/admin/form_PLSanPham.jsp");
		return "quanLyPhanLoaiSanPham";
	}


	@RequestMapping("edit/{idLoai}")
	public String edit(Model model, @PathVariable("idLoai") Integer idLoai, @RequestParam("p") Optional<Integer> p) {
		int pageSize = 4;
		Loaisanpham loaisanpham = loaisanphamdao.findById(idLoai).get();
		model.addAttribute("loaisanpham", loaisanpham);
		Page<Loaisanpham> page;
		Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
		page = loaisanphamdao.findAll(pageable);
		model.addAttribute("page", page);
		request.setAttribute("form_PLSanPham", "layout/admin/form_PLSanPham.jsp");
		return "quanLyPhanLoaiSanPham";
	}

	@RequestMapping("delete/{idLoai}")
	public String delete(Model model, @PathVariable("idLoai") Integer idLoai) {
		loaisanphamdao.deleteById(idLoai);

		List<Loaisanpham> loaisanphams = loaisanphamdao.findAll();
		model.addAttribute("loaisanphams", loaisanphams);

		request.setAttribute("form_PLSanPham", "layout/admin/form_PLSanPham.jsp");
		return "redirect:/phanLoaiSP/form";
	}

	@RequestMapping("create")
	public String create(Model model, Loaisanpham loaisanpham, @RequestParam("tenLoai") String tenLoai)
			throws IllegalStateException, IOException {
		if (loaisanpham.equals("")) {
			return "redirect:/phanLoaiSP/form";
		}
		System.out.println(loaisanpham);
		if (tenLoai.equals("")) {
			return "redirect:/phanLoaiSP/form";
		}
		loaisanphamdao.save(loaisanpham);
		return "redirect:/phanLoaiSP/form";
	}

	@RequestMapping("update")
	public String update(Loaisanpham loaisanpham, @RequestParam("tenLoai") String tenLoai) throws IllegalStateException, IOException {
		if (loaisanpham.equals("")) {
			return "redirect:/phanLoaiSP/form";
		}
		System.out.println(loaisanpham);
		if (tenLoai.equals("")) {
			return "redirect:/phanLoaiSP/form";
		}
		loaisanphamdao.save(loaisanpham);
		return "redirect:/phanLoaiSP/edit/" + loaisanpham.getIdLoai();
	}

}

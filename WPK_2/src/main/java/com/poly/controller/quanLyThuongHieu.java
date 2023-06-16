package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String form(Model model, RedirectAttributes redirectAttributes, Thuonghieu thuonghieu,
			@RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page) {
		int pageSize = 5;
		thuonghieu.setTenTh("");
		String kwords = keywords != null ? keywords : session.get("keywords");

		Pageable pageable;
		if (field != null) {
			Sort sort = Sort.by(Direction.DESC, field);
			model.addAttribute("field", field.toUpperCase());
			pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
		} else {
			pageable = PageRequest.of(page != null ? page : 0, pageSize);
		}

		Page<Thuonghieu> resultPage;
		if (kwords != null && !kwords.equals("")) {
			resultPage = thuonghieudao.findAllByTenThLike("%" + kwords + "%", pageable);
		} else {
			resultPage = thuonghieudao.findAll(pageable);
		}

		model.addAttribute("page", resultPage);
		request.setAttribute("form_QLTHSanPham", "layout/admin/form_QLTHSanPham.jsp");
		return "quanLyThuongHieu";
	}

	@RequestMapping("create")
	public String create(@Validated Thuonghieu thuonghieu, Errors errors, RedirectAttributes redirectAttributes) {
		if (errors.hasErrors()) {
			redirectAttributes.addFlashAttribute("message", "Không được để trống tên thương hiệu !");
		} else {
			thuonghieudao.save(thuonghieu);
			redirectAttributes.addFlashAttribute("message", "Thêm thành công !");
		}
		return "redirect:/quanLyThuongHieu/form";
	}

	@RequestMapping("update")
	public String update(@Validated Thuonghieu thuonghieu, Errors errors, RedirectAttributes redirectAttributes) {
		if (errors.hasErrors()) {
			redirectAttributes.addFlashAttribute("message", "Không được để trống tên thương hiệu !");
		} else {
			thuonghieudao.save(thuonghieu);
			redirectAttributes.addFlashAttribute("message", "Cập nhật thành công !");
		}
		return "redirect:/quanLyThuongHieu/edit/" + thuonghieu.getIdTh();
	}

	@RequestMapping("delete/{idTh}")
	public String delete(@PathVariable("idTh") Integer idTh) {
		thuonghieudao.deleteById(idTh);
		return "redirect:/quanLyThuongHieu/form";
	}

	@RequestMapping("edit/{idTh}")
	public String edit(Model model, @PathVariable("idTh") Integer idTh, @RequestParam("p") Optional<Integer> p) {
		int pageSize = 5;
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

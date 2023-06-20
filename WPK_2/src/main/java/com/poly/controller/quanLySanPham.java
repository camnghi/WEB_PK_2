package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpResponse;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.entities.SanPham;
import com.poly.entities.Loaisanpham;
import com.poly.entities.Thuonghieu;
import com.poly.repository.LoaisanphamDAO;
import com.poly.repository.SanphamDAO;
import com.poly.repository.ThuonghieuDAO;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/quanLySanPham")
public class quanLySanPham {
	@Autowired
	HttpServletRequest request;

	@Autowired
	SanphamDAO sanphamdao;

	@Autowired
	LoaisanphamDAO Loaisanphamdao;

	@Autowired
	ThuonghieuDAO Thuonghieudao;

	@Autowired
	ServletContext app;

	@Autowired
	SessionService session;

	@RequestMapping("form")
	public String form(Model model, SanPham sanpham,
			@RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page) {
		sanpham.setTenSp("");
		sanpham.setGiaSp(null);
		sanpham.setSoLuong(null);
		sanpham.setMoTa("");

		int pageSize = 6;
		String kwords = keywords != null ? keywords : session.get("keywords");

		Pageable pageable;
		if (field != null) {
			Sort sort = Sort.by(Direction.ASC, field);
			model.addAttribute("field", field.toUpperCase());
			pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
		} else {
			pageable = PageRequest.of(page != null ? page : 0, pageSize);
		}

		Page<SanPham> resultPage;
		if (kwords != null && !kwords.equals("")) {
			resultPage = sanphamdao.findAllBytenSpLike("%" + kwords + "%", pageable);
		} else {
			resultPage = sanphamdao.findAll(pageable);
		}
		model.addAttribute("sanpham", sanpham);
		model.addAttribute("page", resultPage);

		request.setAttribute("form_QLSanPham", "layout/admin/form_QLSanPham.jsp");
		return "quanLySanPham";
	}

	@RequestMapping("edit/{idSp}")
	public String edit(Model model, @PathVariable("idSp") Integer idSp, @RequestParam("p") Optional<Integer> p) {
		boolean isEditMode = (idSp != null); // Kiểm tra nếu có giá trị idLoai tức là đang ở chế độ sửa
		model.addAttribute("isEditMode", isEditMode);
		int pageSize = 6;
		SanPham sanpham = sanphamdao.findById(idSp).get();
		model.addAttribute("sanpham", sanpham);
		Page<SanPham> page;
		Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
		page = sanphamdao.findAll(pageable);
		model.addAttribute("page", page);
		request.setAttribute("form_QLSanPham", "layout/admin/form_QLSanPham.jsp");
		return "quanLySanPham";
	}

	@RequestMapping("delete/{idSp}")
	public String delete(Model model, @PathVariable("idSp") Integer idSp) {
		sanphamdao.deleteById(idSp);

		List<SanPham> items = sanphamdao.findAll();
		model.addAttribute("items", items);

		request.setAttribute("form_QLSanPham", "layout/admin/form_QLSanPham.jsp");
		return "redirect:/quanLySanPham/form";
	}

	@RequestMapping("create")
	public String create(@Validated @ModelAttribute("sanpham") SanPham sanpham, BindingResult result,
			@RequestParam("photo_file") MultipartFile img, Model model, RedirectAttributes redirectAttributes,
			@RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page, @RequestParam("tenSp") String tenSp)
			throws IllegalStateException, IOException {
		if (result.hasErrors()) {
			int pageSize = 6;
			String kwords = keywords != null ? keywords : session.get("keywords");

			Pageable pageable;
			if (field != null) {
				Sort sort = Sort.by(Direction.ASC, field);
				model.addAttribute("field", field.toUpperCase());
				pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
			} else {
				pageable = PageRequest.of(page != null ? page : 0, pageSize);
			}

			Page<SanPham> resultPage;
			if (kwords != null && !kwords.equals("")) {
				resultPage = sanphamdao.findAllBytenSpLike("%" + kwords + "%", pageable);
			} else {
				resultPage = sanphamdao.findAll(pageable);
			}
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin");
			model.addAttribute("sanpham", sanpham);
			model.addAttribute("page", resultPage);
			request.setAttribute("form_QLSanPham", "layout/admin/form_QLSanPham.jsp");
			return "quanLySanPham";

		} else if (img.isEmpty()) {
			redirectAttributes.addFlashAttribute("hinhanh", "Chưa thêm hình ảnh");
		} else {
			boolean isSanPhamExists = false;
			List<SanPham> sanphams = sanphamdao.findAll();
			for (SanPham sp : sanphams) {
				if (sp.getTenSp().equalsIgnoreCase(tenSp)) {
					isSanPhamExists = true;
					break;
				}
			}
			if (isSanPhamExists) {
				redirectAttributes.addFlashAttribute("tenSpTonTai", "Tên sản phẩm đã tồn tại");
			} else {
				String filename = img.getOriginalFilename();
				File file = new File(app.getRealPath("/images/" + filename));
				img.transferTo(file);
				sanpham.setAnhSp(filename);
				sanpham.setNgayTao(new Date());
				System.out.println(sanpham.getNgayTao());

				sanphamdao.save(sanpham);
				model.addAttribute("message", "Thêm thành công!");
			}
		}
		return "redirect:/quanLySanPham/form";
	}

	@RequestMapping("update")
	public String update(@Validated @ModelAttribute("sanpham") SanPham sanpham, BindingResult result,
			@RequestParam("photo_file") MultipartFile img, Model model, RedirectAttributes redirectAttributes,
			@RequestParam(value = "keywords", required = false) String keywords,
			@RequestParam(value = "field", required = false) String field,
			@RequestParam(value = "p", required = false) Integer page, @RequestParam("tenSp") String tenSp)
			throws IllegalStateException, IOException {
		if (result.hasErrors()) {
			int pageSize = 6;
			String kwords = keywords != null ? keywords : session.get("keywords");

			Pageable pageable;
			if (field != null) {
				Sort sort = Sort.by(Direction.ASC, field);
				model.addAttribute("field", field.toUpperCase());
				pageable = PageRequest.of(page != null ? page : 0, pageSize, sort);
			} else {
				pageable = PageRequest.of(page != null ? page : 0, pageSize);
			}

			Page<SanPham> resultPage;
			if (kwords != null && !kwords.equals("")) {
				resultPage = sanphamdao.findAllBytenSpLike("%" + kwords + "%", pageable);
			} else {
				resultPage = sanphamdao.findAll(pageable);
			}
			redirectAttributes.addFlashAttribute("message", "Vui lòng nhập đầy đủ thông tin");
			model.addAttribute("sanpham", sanpham);
			model.addAttribute("page", resultPage);
			return "redirect:/quanLySanPham/edit/" + sanpham.getIdSp();
		} else if (img.isEmpty()) {
			redirectAttributes.addFlashAttribute("hinhanh", "Chưa thêm hình ảnh");
		} else {
			boolean isSanPhamExists = false;
			List<SanPham> sanphams = sanphamdao.findAll();
			for (SanPham sp : sanphams) {
				if (sp.getTenSp().equalsIgnoreCase(tenSp)) {
					isSanPhamExists = true;
					break;
				}
			}
			if (isSanPhamExists) {
				redirectAttributes.addFlashAttribute("tenSpTonTai", "Vui lòng cập nhật tên mới");
			} else {
				String filename = img.getOriginalFilename();
				File file = new File(app.getRealPath("/images/" + filename));
				img.transferTo(file);
				sanpham.setAnhSp(filename);
				sanpham.setNgayTao(new Date());
				System.out.println(sanpham.getNgayTao());
				
				sanphamdao.save(sanpham);
				model.addAttribute("message", "Cập nhật thành công!");
			}
		}
		return "redirect:/quanLySanPham/edit/" + sanpham.getIdSp();
	}

	@ModelAttribute("list_yesno")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Có bảo hành");
		map.put(true, "Không bảo hành");
		return map;
	}

	@ModelAttribute("list_loaisanpham")
	public Map<Integer, String> getLoaisanpham(Model model) {
		Map<Integer, String> map = new HashMap<>();

		List<Loaisanpham> loaisanphamitems = Loaisanphamdao.findAll();

		for (Loaisanpham loaisanpham : loaisanphamitems) {
			map.put(loaisanpham.getIdLoai(), loaisanpham.getTenLoai());
		}
		return map;
	}

	@ModelAttribute("list_thuonghieu")
	public Map<Integer, String> getThuonghieu() {
		Map<Integer, String> map = new HashMap<>();

		List<Thuonghieu> thuonghieuitems = Thuonghieudao.findAll();
		for (Thuonghieu thuonghieu : thuonghieuitems) {
			map.put(thuonghieu.getIdTh(), thuonghieu.getTenTh());
		}
		return map;
	}
}

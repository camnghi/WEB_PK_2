
package com.poly.controller;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.Loaisanpham;
import com.poly.entities.SanPham;
import com.poly.repository.LoaisanphamDAO;
import com.poly.repository.SanphamDAO;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping ("/listSPs")
public class DanhSachSPLeoLoai {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	SanphamDAO sanphamdao;
	@Autowired
	LoaisanphamDAO dao;
	@Autowired
	ServletContext app;
	@Autowired
	SessionService session;
	
	@RequestMapping("SearchPage")
	public String paginate(Model model, @RequestParam("keywords") Optional<String> kw,
	        @RequestParam("p") Optional<Integer> p,
	        @RequestParam(value = "sort", defaultValue = "default") String sort) {

	    request.setAttribute("title", "Sản Phẩm");
	    request.setAttribute("view", "DanhSachSPTheoLoai");
	    List<Loaisanpham> loaisanphams = dao.findAll();
	    model.addAttribute("loaisanphams", loaisanphams);
	    int pageSize = 8;
	    String kwords = kw.orElse(session.get("keywords"));
	    session.set("kwords", kwords);

	    Page<SanPham> page;
	    Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
	    if (kwords != null && !kwords.equals("")) {
	        if (sort.equals("priceDesc")) {
	            page = sanphamdao.findAllBytenSpContainingOrderByGiaSpDesc("%" + kwords + "%", pageable);
	        } else if (sort.equals("priceAsc")) {
	            page = sanphamdao.findAllBytenSpContainingOrderByGiaSpAsc("%" + kwords + "%", pageable);
	        } else {
	            page = sanphamdao.findAllBytenSpLike("%" + kwords + "%", pageable);
	        }
	    } else {
	        if (sort.equals("priceDesc")) {
	            page = sanphamdao.findAllByOrderBygiaSpDesc(pageable);
	        } else if (sort.equals("priceAsc")) {
	            page = sanphamdao.findAllByOrderByGiaSpAsc(pageable);
	        } else {
	            page = sanphamdao.findAll(pageable);
	        }
	    }
	    model.addAttribute("page", page);
	    DecimalFormat df = new DecimalFormat("#,###");
	    model.addAttribute("df", df);
	    return "index_Main";
	}
	
}

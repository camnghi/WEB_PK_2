
package com.poly.controller;

import java.text.DecimalFormat;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	        @RequestParam("loaiSpId") Optional<Integer> loaiSpId) {

	    request.setAttribute("title", "Sản Phẩm");
	    request.setAttribute("view", "DanhSachSPTheoLoai");
	    int pageSize = 8;
	    String kwords = kw.orElse(session.get("keywords"));
	    session.set("kwords", kwords);

	    Page<SanPham> page;
	    if (loaiSpId.isPresent()) {
	        Integer idLoai = loaiSpId.get();
	        Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
	        if (kwords != null && !kwords.equals("")) {
	            page = sanphamdao.findAllByTenSpContainingAndLoaisanpham_IdLoai("%" + kwords + "%", idLoai, pageable);
	        } else {
	            page = sanphamdao.findAllByLoaisanpham_IdLoai(idLoai, pageable);
	        }
	    } else {
	        Pageable pageable = PageRequest.of(p.orElse(0), pageSize);
	        if (kwords != null && !kwords.equals("")) {
	            page = sanphamdao.findAllBytenSpLike("%" + kwords + "%", pageable);
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

package com.poly.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.HoaDon;
import com.poly.entities.KhachHang;
import com.poly.repository.HoaDonRepository;
import com.poly.repository.HoadonDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/capnhattrangthai")
public class capNhatTrangThaiConTroller {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	HoadonDAO hoadondao;
	@Autowired
	HoaDonRepository donRepository;

	@RequestMapping("form")
	public String form(Model model) {
		HoaDon hoadon = new HoaDon();
		model.addAttribute("hoadon", hoadon);
		List<HoaDon> hoadons = hoadondao.findAll();
		model.addAttribute("hoadons", hoadons);
		return "capNhatTrangThai";
	}

//	Đẩy lại trang quản lý đơn hàng
	@RequestMapping("edit/{idHd}")
	public String edit(Model model, @PathVariable("idHd") Integer idHd
//			@RequestParam("NgayTao") @DateTimeFormat(pattern="yyyy-MM-dd") Date ngayTao,
		) {
		HoaDon hoadon = hoadondao.findById(idHd).get();
		model.addAttribute("hoadon", hoadon);
		return "capNhatTrangThai";
	}

	@PostMapping("update/{idHd}")
	public String updateDonHang(@ModelAttribute("hoadon") HoaDon hoadon, @PathVariable("idHd") Integer idHd,
//			@RequestParam(required=false,name="views") String view,
			@RequestParam(required=false,name="trangThai") String trangThai
////			@RequestParam("NgayTao") @DateTimeFormat(pattern="yyyy-MM-dd") Date ngayTao,
//			@RequestParam(required=false,name="idHd") Integer idHdon,
//			@RequestParam(required=false,name="khachhang") KhachHang taiKhoan,
//			@RequestParam(required=false,name="NgayTao") Date ngayTao,
//			@RequestParam(required=false,name="diaChi") String diaChi,
//			@RequestParam(required=false,name="tongTien") String tongTien,
//			@RequestParam(required=false,name="sdt") String sdt,
//			@RequestParam(required=false,name="ghiChu") String ghiChu
) {
		hoadon = hoadondao.findById(idHd).get();
//		hoadon.setIdHd(idHd);
//		hoadon.setKhachhang(taiKhoan);
//		hoadon.setNgayTao(ngayTao);
//		hoadon.setDiaChi(diaChi);
		hoadon.setTrangThai(trangThai); // Cập nhật trạng thái mới vào đối tượng HoaDon
//		hoadon.setGhiChu(ghiChu);
		hoadondao.save(hoadon); // Lưu thay đổi vào cơ sở dữ liệu
		System.out.println(hoadon);
		System.out.println(trangThai);

		return "redirect:/capnhattrangthai/edit/"+ hoadon.getIdHd();
	}
	@GetMapping("update/{idHd}")
	public String updateDonHang2(@ModelAttribute("hoadon") HoaDon hoadon,@PathVariable("idHd") Integer idHd) {
		hoadon = hoadondao.findById(idHd).get();
//		hoadon.setTrangThai(trangThai); // Cập nhật trạng thái mới vào đối tượng HoaDon
//		hoadondao.save(hoadon); // Lưu thay đổi vào cơ sở dữ liệu
		System.out.println(hoadon);

		return "redirect:/capnhattrangthai/edit/" + hoadon.getIdHd();
	}

}

package com.poly.controller;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.repository.HoaDonRepository;
import com.poly.repository.SanPhamRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@RequestMapping("thongke")
@Controller
public class ThongKeController {

	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpServletResponse response;

	@Autowired
	HoaDonRepository hoaDonRepository;

	@Autowired
	private SanPhamRepository sanPhamRepository;

	@GetMapping("/form2")
	public String thongKeDoanhThuTheoNgay(Model model) {
		request.setAttribute("view", "form_QLThongKe2");
		response.setCharacterEncoding("UTF-8");
		return "quanLyThongKe";
	}
//
	@GetMapping("/doanhthu")
	public String thongKeDoanhThuTheoThang(Model model) {
		return "doanhthu";
	}
//
//	@GetMapping("/doanhthu-quy")
//	public String thongKeDoanhThuTheoQuy(Model model) {
//		return "doanhthu-quy";
//	}

	@PostMapping("/doanhthu-ngay")
	public String thongKeDoanhThuTheoNgay(
			@RequestParam("ngayThongKe") @DateTimeFormat(pattern = "yyyy-MM-dd") Date ngayThongKe, Model model) {
		// Tính tổng doanh thu của ngày được chọn
//		Double tongDoanhThuNgay = hoaDonRepository.getTongDoanhThuByNgayMua(ngayThongKe);

		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		DecimalFormat df = new DecimalFormat("#,### VND");

		// Đưa các giá trị thống kê vào Model để truyền sang View
//		model.addAttribute("ngayThongKe", sdf.format(ngayThongKe));
//		model.addAttribute("tongDoanhThuNgay", df.format(tongDoanhThuNgay));
//		System.out.println(tongDoanhThuNgay);
		// Trả về tên của file jsp để hiển thị kết quả thống kê
		return "doanhthu";
	}

//	@PostMapping("/doanhthu-thang")
//	public String thongKeDoanhThuTheoThang(
//			@RequestParam("thangThongKe") @DateTimeFormat(pattern = "yyyy-MM") Date thangThongKe, Model model) {
//
//		// Chuyển đổi ngày và tháng thành int
//		Calendar calendar = Calendar.getInstance();
//		calendar.setTime(thangThongKe);
//		int thang = calendar.get(Calendar.MONTH) + 1; // Lấy tháng (tháng bắt đầu từ 0)
//		int nam = calendar.get(Calendar.YEAR); // Lấy năm
//
//		// Tính tổng doanh thu của tháng được chọn
//		Double tongDoanhThu = hoaDonRepository.getTongDoanhThuByThangMua(thang, nam);
//
//		// Định dạng tháng và số tiền
//		SimpleDateFormat sdf = new SimpleDateFormat("MM/yyyy");
//		DecimalFormat df = new DecimalFormat("#,### VND");
//
//		// Đưa các giá trị thống kê vào Model để truyền sang View
//		model.addAttribute("thangThongKe", sdf.format(thangThongKe));
//		model.addAttribute("tongDoanhThu", df.format(tongDoanhThu));
//
//		// Trả về tên của file jsp để hiển thị kết quả thống kê
//		return "quanLyThongKe";
//	}
//
//	@PostMapping("/doanhthu-quy")
//	public String thongKeDoanhThuTheoQuy(@RequestParam("quyThongKe") Integer quyThongKe,
//			@RequestParam("namThongKe") Integer namThongKe, Model model) {
//
//		// Tính tháng bắt đầu và tháng kết thúc của quý được chọn
//		int thangBatDau = (quyThongKe - 1) * 3 + 1;
//		int thangKetThuc = thangBatDau + 2;
//		LocalDate dateBatDau = LocalDate.of(namThongKe, thangBatDau, 1);
//		LocalDate dateKetThuc = LocalDate.of(namThongKe, thangKetThuc, 1)
//				.withDayOfMonth(LocalDate.of(namThongKe, thangKetThuc, 1).lengthOfMonth());
//		Date ngayBatDau = Date.from(dateBatDau.atStartOfDay(ZoneId.systemDefault()).toInstant());
//		Date ngayKetThuc = Date.from(dateKetThuc.atStartOfDay(ZoneId.systemDefault()).toInstant());
//
//		// Tính tổng doanh thu của quý được chọn
//		Double tongDoanhThu = hoaDonRepository.getTongDoanhThuByKhoangThoiGian(ngayBatDau, ngayKetThuc);
//
//		// Định dạng quý và số tiền
//		String quy = "Quý " + quyThongKe;
//		DecimalFormat df = new DecimalFormat("#,### VND");
//
//		// Đưa các giá trị thống kê vào Model để truyền sang View
//		model.addAttribute("quyThongKe", quy);
//		model.addAttribute("tongDoanhThu", df.format(tongDoanhThu));
//
//		// Trả về tên của file jsp để hiển thị kết quả thống kê
//		return "quanLyThongKe";
//	}


	@GetMapping("/form")
	public String getThongKe(Model model) {

		request.setAttribute("view", "form_QLThongKe");
		response.setCharacterEncoding("UTF-8");

		Date endDate = new Date();
		Double tongDoanhThu = hoaDonRepository.getTongDoanhThu(endDate);
		Integer soSanPhamDaBan = hoaDonRepository.getSoSanPhamDaBan(endDate);
		Integer soDonHang = hoaDonRepository.getSoDonHang(endDate);

		NumberFormat numberFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
	    numberFormat.setRoundingMode(RoundingMode.HALF_UP);
	    numberFormat.setMaximumFractionDigits(0);
	    String tongDoanhThuVND = numberFormat.format(tongDoanhThu);

		model.addAttribute("tongDoanhThu", tongDoanhThuVND);
		model.addAttribute("soSanPhamDaBan", soSanPhamDaBan);
		model.addAttribute("soDonHang", soDonHang);

		//ban chay
		List<Object[]> sanPhamBanChayNhat = sanPhamRepository.getSanPhamBanChayNhat();
		model.addAttribute("sanPhamBanChayNhat", sanPhamBanChayNhat);

		//doanh thu theo loai
		List<Object[]> doanhThuTheoLoai = hoaDonRepository.getDoanhThuTheoLoaiSanPham();
		model.addAttribute("doanhThuTheoLoai", doanhThuTheoLoai);
		return "quanLyThongKe";
	}
}

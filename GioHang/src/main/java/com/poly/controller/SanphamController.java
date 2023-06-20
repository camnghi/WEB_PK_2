package com.poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.SanphamRepository;
import com.poly.entities.Chitietgiohang;
import com.poly.entities.Khachhang;
import com.poly.entities.Sanpham;
import com.poly.service.GiohangService;

@Controller
@RequestMapping("/sanphams")
public class SanphamController {

    @Autowired
    private SanphamRepository sanphamRepository;

    @Autowired
    private GiohangService giohangService;

    @GetMapping("/sanpham")
    public String hienthiSanphams(Model model) {
        List<Sanpham> sanphams = sanphamRepository.findAll();
        model.addAttribute("sanphams", sanphams);
        Sanpham sanpham = new Sanpham();
        model.addAttribute("sanpham",sanpham);
             
        Khachhang khachhang = new Khachhang();
        khachhang.setTai_khoan("vinh01");
        model.addAttribute("khachhang", khachhang);
        
        return "sanpham";
    }
    
    

//    @PostMapping("/giohang")
//    public String themVaoGioHang(@RequestParam("sanpham_id") long sanphamId, @RequestParam("so_luong") int soLuong) {
//        giohangService.themSanPhamVaoGioHang(sanphamId, soLuong, null);
//        return "redirect:/sanphams";
//    }
    

    @GetMapping("/giohang")
    public String hienthiGioHang(Model model) {
        List<Chitietgiohang> cart = giohangService.layTatCaChitietgiohang();
        int tong_tien = giohangService.tinhTongTien();
        model.addAttribute("cart", cart);
        model.addAttribute("tong_tien", tong_tien);
        return "giohang";
    }


//    @DeleteMapping("/giohang/{id}")
//    public String xoaSanPhamKhoiGioHang(@PathVariable("id") long chitietgiohangId) {
//        giohangService.xoaSanPhamKhoiGioHang(chitietgiohangId);
//        return "redirect:/sanphams/giohang";
//    }
//
//    @DeleteMapping("/giohang")
//    public String xoaGioHang() {
//        List<Chitietgiohang> cart = giohangService.layTatCaChitietgiohang();
//        for (Chitietgiohang chitietgiohang : cart) {
//            giohangService.xoaSanPhamKhoiGioHang(chitietgiohang.getId_ctgh());
//        }
//        return "redirect:/sanphams/giohang";
//    }
//
//    @PostMapping("/giohang/thanhtoan")
//    public String thanhToan(Model model) {
//        giohangService.xoaSanPhamKhoiGioHang(0);
//        model.addAttribute("message", "Thanh toán thành công!");
//        return "thanhcong";
//    }
}

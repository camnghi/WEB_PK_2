package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.DAO.ChitietgiohangRepository;
import com.poly.DAO.GiohangRepository;
import com.poly.DAO.SanphamRepository;
import com.poly.entities.Chitietgiohang;
import com.poly.entities.Khachhang;
import com.poly.entities.Sanpham;

@Service
public class GiohangService {

    @Autowired
    private ChitietgiohangRepository chitietgiohangRepository;

    @Autowired
    private SanphamRepository sanphamRepository;
    
    @Autowired
    private GiohangRepository giohangRepository;

    public void themSanPhamVaoGioHang(long sanphamId, int soLuong) {
        Sanpham sanpham = sanphamRepository.findById(sanphamId).orElseThrow();
        Chitietgiohang chitietgiohang = new Chitietgiohang();
        chitietgiohangRepository.save(chitietgiohang);
    }

    public void xoaSanPhamKhoiGioHang(long chitietgiohangId) {
        Chitietgiohang chitietgiohang = chitietgiohangRepository.findById(chitietgiohangId).orElseThrow();
        chitietgiohangRepository.delete(chitietgiohang);
    }

    public List<Chitietgiohang> layTatCaChitietgiohang() {
        return chitietgiohangRepository.findAll();
    }

    public int tinhTongTien() {
        List<Chitietgiohang> chitietgiohangs = chitietgiohangRepository.findAll();
        int tongTien = 0;
        for (Chitietgiohang chitietgiohang : chitietgiohangs) {
            tongTien += chitietgiohang.getSo_luong() * chitietgiohang.getSanpham().getGia_sp();
        }
        return tongTien;
    }
    
    public List<Chitietgiohang> layGioHangTheoKhachhang(Khachhang khachhang) {
        return chitietgiohangRepository.findByKhachhang(khachhang);
    }

    public int tinhTongTienTheoKhachhang(Khachhang khachhang) {
        List<Chitietgiohang> cart = chitietgiohangRepository.findByKhachhang(khachhang);
        int tong_tien = 0;
        for (Chitietgiohang chitietgiohang : cart) {
            tong_tien += chitietgiohang.getSanpham().getGia_sp() * chitietgiohang.getSo_luong();
        }
        return tong_tien;
    }
}

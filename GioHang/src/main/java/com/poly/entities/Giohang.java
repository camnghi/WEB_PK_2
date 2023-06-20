package com.poly.entities;

import java.util.List;

import javax.persistence.*;

import lombok.Data;
@Data
@Entity
@Table(name = "Giohangs")
public class Giohang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_gh;
    
    @ManyToOne
    @JoinColumn(name = "tai_khoan")
    private Khachhang taiKhoan;
    
    private int so_luong;

	public void setKhachhang(Khachhang khachhang) {
		// TODO Auto-generated method stub
		
	}

	public void themChitietgiohang(long sanphamId, int soLuong) {
		// TODO Auto-generated method stub
		
	}

	public List<Chitietgiohang> getChitietgiohangs() {
		// TODO Auto-generated method stub
		return null;
	}

	public int tinhTongTien() {
		// TODO Auto-generated method stub
		return 0;
	}

	public void xoaTatCaChitietgiohang() {
		// TODO Auto-generated method stub
		
	}

    
    // Constructors, getters, and setters
}
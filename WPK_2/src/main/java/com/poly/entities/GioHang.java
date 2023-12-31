package com.poly.entities;

import java.io.Serializable;
import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Giohangs")
public class GioHang implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idGh;
	@ManyToOne
	@JoinColumn(name = "taiKhoan")
	KhachHang khachhang;
	private Integer soLuong;
	@OneToMany(mappedBy = "giohang")
	List<Chitietgiohang> chitietgiohangs;
	
	
	@JoinColumn(name = "sanpham")
	@Override
	public String toString() {
		return "GioHang [idGh=" + idGh + ", khachHang=" + khachhang + ", soLuong=" + soLuong + ", chitietgiohang="
				+ chitietgiohangs + "]";
	}
	
	// tổng số sản phẩm đang có trong giỏ hàng
	public int tongSoSanPham() {
	    int tongSoLuong = 0;
	    for (Chitietgiohang chiTietGioHang : chitietgiohangs) {
	        tongSoLuong += chiTietGioHang.getSoLuong();
	    }
	    return tongSoLuong;
	}
		// Cập nhật tổng số sản phẩm của giỏ hàng
    public void setTongSoSanPham(int tongSoSanPham) {
        soLuong = tongSoSanPham;
    }

	
	// tổng số tiền của tất cả sản phẩm trong giỏ hàng
	public double tongTien() {
	    double tongTien = 0;
	    for (Chitietgiohang chiTietGioHang : chitietgiohangs) {
	        tongTien += chiTietGioHang.getSanpham().getGiaSp() * chiTietGioHang.getSoLuong();
	    }
	    return tongTien;
	}
}

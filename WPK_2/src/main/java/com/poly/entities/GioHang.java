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
	private Integer idGioHang;
	@ManyToOne
	@JoinColumn(name = "tai_khoan")
	KhachHang khachhang;
	private Integer soLuong;
	@OneToMany(mappedBy = "giohang")
	List<Chitietgiohang> chitietgiohang;

	@Override
	public String toString() {
		return "GioHang [idGioHang=" + idGioHang + ", soLuong=" + soLuong + ", chitietgiohang=" + chitietgiohang + "]";
	}

}

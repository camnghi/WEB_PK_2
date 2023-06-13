package com.poly.entities;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Chitietgiohangs")
public class Chitietgiohang implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idGHCT;
	@ManyToOne
	@JoinColumn(name = "idSP")
	SanPham sanpham;
	private Integer soluong;
	@ManyToOne
	@JoinColumn(name = "idGH")
	GioHang giohang;

	@Override
	public String toString() {
		return "Chitietgiohang [idGHCT=" + idGHCT + ", sanpham=" + sanpham + ", soluong=" + soluong + ", giohang="
				+ giohang + "]";
	}

}

package com.poly.entities;

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
@Table(name = "Hoadonchitiets")
public class Hoadonchitiet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idHdct;
	@ManyToOne
	@JoinColumn(name = "idHd")
	private HoaDon hoadon;
	@ManyToOne
	@JoinColumn(name = "idSp")
	SanPham sanpham;

	private Double gia;
	private Integer soLuong;
}
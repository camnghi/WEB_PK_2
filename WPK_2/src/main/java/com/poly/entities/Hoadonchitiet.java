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
@Table(name = "HoaDon_CT")
public class Hoadonchitiet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_hdct;
	@ManyToOne
	@JoinColumn(name = "id_hd")
	HoaDon hoadon;
	@ManyToOne
	@JoinColumn(name = "id_sp")
	SanPham sanpham;
	private float gia;
	private int soluong;

}

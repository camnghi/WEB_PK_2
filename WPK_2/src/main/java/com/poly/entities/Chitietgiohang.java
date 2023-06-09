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
@Table(name = "GioHangCT")
public class Chitietgiohang implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID_CTGH;
	@ManyToOne
	@JoinColumn(name = "ID_GH")
	GioHang giohang;
	@ManyToOne
	@JoinColumn(name = "ID_SP")
	SanPham sanpham;
}

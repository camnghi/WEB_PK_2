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
@Table(name = "GioHang_CT")
public class Chitietgiohang implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID_CTGH;
	@ManyToOne
	@JoinColumn(name = "id_gh")
	GioHang giohang;
	@ManyToOne
	@JoinColumn(name = "id_sp")
	SanPham sanpham;
}

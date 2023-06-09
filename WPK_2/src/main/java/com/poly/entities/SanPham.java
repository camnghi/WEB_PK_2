package com.poly.entities;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "San_Pham")
public class SanPham implements Serializable {
	@Id
	Integer id_sp;
	String tensp;
	Double giasp;
	String anhsp;
	Integer soluong;
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaytao")
	Date ngay_tao = new Date();
	String mota;
	Boolean baohanh;
	@ManyToOne
	@JoinColumn(name = "ID_Loai")
	Loaisanpham loaisanpham;

	@ManyToOne
	@JoinColumn(name = "ID_TH")
	Thuonghieu thuonghieu;

}

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
@Table(name = "SanPham")
public class SanPham implements Serializable {
	@Id
	Integer id_sp;
	String ten_sp;
	Double gia;
	String anh;
	Integer so_luong;
	@Temporal(TemporalType.DATE)
	@Column(name = "Ngay_Tao")
	Date ngay_tao = new Date();
	String mo_ta;
	Boolean bao_hanh;
	@ManyToOne
	@JoinColumn(name = "ID_Loai")
	Loaisanpham loaisanpham;

	@ManyToOne
	@JoinColumn(name = "ID_TH")
	Thuonghieu thuonghieu;

}

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
@Table(name = "Sanphams")
public class SanPham implements Serializable {
	@Id
	Integer idSp;
	String tenSp;
	Double giaSp;
	String anhSp;
	Integer soLuong;
	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_tao")
	Date ngayTao = new Date();
	String moTa;
	Boolean baoHanh;
	@ManyToOne
	
	@JoinColumn(name = "idLoai")
	Loaisanpham loaisanpham;

	@ManyToOne
	@JoinColumn(name = "idTh")
	Thuonghieu thuonghieu;

}

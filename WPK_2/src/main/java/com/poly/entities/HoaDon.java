package com.poly.entities;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
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
@Table(name = "Hoa_Don")
public class HoaDon implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_hd;
	@ManyToOne
	@JoinColumn(name = "khach_hang")
	KhachHang khachhang;
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaytao")
	Date NgayTao = new Date();
	String diachi;
	private int tongtien;
	private String sdt;
	Boolean trangthai;
	private String ghichu;
	@ManyToOne
    @JoinColumn(name = "username")
    private KhachHang khach_hang;
	@Column(name = "username", insertable = false, updatable = false)
	private String username;

}

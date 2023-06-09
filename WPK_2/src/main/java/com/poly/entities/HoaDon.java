package com.poly.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
@Table(name = "HoaDon")
public class HoaDon implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID_HD;
	@ManyToOne
	@JoinColumn(name = "Username")
	KhachHang khachhang;
	@Temporal(TemporalType.DATE)
	@Column(name = "NgayTao")
	Date NgayTao = new Date();
	private String DiaChi;
	private int Tongtien;
	private String SDT;
	Boolean Trangthai;
	private String GhiChu;
	@OneToMany(mappedBy = "hoadon")
	List<Hoadonchitiet> hoadonchitiet;

}

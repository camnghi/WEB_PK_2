package com.poly.entities;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Khach_Hang")
public class KhachHang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name = "username", insertable = false, updatable = false)

	private String username;
	private String password;
	private String fullname;
	private String email;
	private boolean trangthai;
	private boolean admin;
	@OneToMany(mappedBy = "khachhang")
	List<GioHang> giohang;
	
	@OneToMany(mappedBy = "khach_hang")
    private List<HoaDon> hoadon;
	
	 @OneToMany(mappedBy = "khachhang")
	    private List<SanPham> sanphams;

}

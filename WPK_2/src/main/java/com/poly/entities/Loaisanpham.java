package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
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
@Table(name = "LoaiSP")
public class Loaisanpham implements Serializable {
	@Id
	private int ID_Loai;
	private String TenLoai;
	@OneToMany(mappedBy = "loaisanpham")
	List<SanPham> sanphams;

}

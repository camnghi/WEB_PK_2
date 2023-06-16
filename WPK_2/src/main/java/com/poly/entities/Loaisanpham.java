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
@Table(name = "Loaisanphams")
public class Loaisanpham implements Serializable {
	@Id
	Integer idLoai;
	String tenLoai;
	@OneToMany(mappedBy = "loaisanpham")
	List<SanPham> sanphams;
}

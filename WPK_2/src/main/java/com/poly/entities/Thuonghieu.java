package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Thuonghieus")
public class Thuonghieu implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_th")
	Integer idTh;
	@Column(name = "ten_th")
	String tenTh;
	@OneToMany(mappedBy = "thuonghieu")
	List<SanPham> sanphams;

	@Override
	public String toString() {
		return "Thuonghieu [idTh=" + idTh + ", tenTh=" + tenTh + ", sanphams=" + sanphams + "]";
	}
}

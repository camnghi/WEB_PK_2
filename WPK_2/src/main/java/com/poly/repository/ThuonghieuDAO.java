package com.poly.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.Thuonghieu;

public interface ThuonghieuDAO extends JpaRepository<Thuonghieu, Integer> {
	Page<Thuonghieu> findAllByTenThLike(String keywords, Pageable pageable);

	boolean existsByTenTh(String tenThuongHieu);

}

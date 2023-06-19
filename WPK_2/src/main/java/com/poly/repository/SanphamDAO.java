package com.poly.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.SanPham;

public interface SanphamDAO extends JpaRepository<SanPham, Integer> {
	Page<SanPham> findAllBytenSpLike(String keywords, Pageable pageable);

	Page<SanPham> findAllByTenSpContainingAndLoaisanpham_IdLoai(String tenSp, int idLoai, Pageable pageable);

	Page<SanPham> findAllByLoaisanpham_IdLoai(int idLoai, Pageable pageable);

//	@Query("SELECT sp FORM SanPham sp WHERE sp.idSp = :idSp")
//	List<SanPham> findByIdSp(Integer idSp);
//
//	@Query("SELECT sp FORM SanPham sp WHERE sp.idSp = :idSp")
//	SanPham findByIdSp1(Integer idSp);
//
//	@Query("SELECT sp FORM SanPham sp WHERE sp.tenSp = :tenSp")
//	List<SanPham> findBytenSp(String tenSp);
//
//	@Query("SELECT sp FORM SanPham sp WHERE sp.tenSp = :tenSp")
//	SanPham findByIdSp1(String tenSp);

}
